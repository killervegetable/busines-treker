using System;
using System.Collections.Generic;
using Microsoft.Maui.Graphics;

namespace busines_treker.Controls
{
    public class DonutSegment
    {
        public float Value { get; set; }
        public Color Color { get; set; } = Colors.Transparent;
    }

    public class DonutDrawable : IDrawable
    {
        public IList<DonutSegment> Segments { get; } = new List<DonutSegment>();

        public void Draw(ICanvas canvas, RectF dirtyRect)
        {
            canvas.SaveState();

            var center = new PointF(dirtyRect.Width / 2, dirtyRect.Height / 2);
            float radius = Math.Min(dirtyRect.Width, dirtyRect.Height) / 2 - 4;
            float innerRadius = radius * 0.6f;

            // calculate total
            float total = 0;
            foreach (var s in Segments)
                total += s.Value;

            float startAngle = -90;
            // draw filled sectors and leave inner hole
            foreach (var seg in Segments)
            {
                float sweep = total > 0 ? (seg.Value / total) * 360f : 0f;
                if (sweep <= 0.001f)
                {
                    startAngle += sweep;
                    continue;
                }

                // build polygon points approximating the ring sector
                var pts = new List<PointF>();
                int steps = Math.Max(6, (int)Math.Ceiling(Math.Abs(sweep) / 4.0));
                for (int t = 0; t <= steps; t++)
                {
                    var angle = (startAngle + (sweep * t / steps)) * Math.PI / 180.0;
                    float x = center.X + (float)(Math.Cos(angle) * radius);
                    float y = center.Y + (float)(Math.Sin(angle) * radius);
                    pts.Add(new PointF(x, y));
                }

                // inner arc (reverse)
                for (int t = steps; t >= 0; t--)
                {
                    var angle = (startAngle + (sweep * t / steps)) * Math.PI / 180.0;
                    float x = center.X + (float)(Math.Cos(angle) * innerRadius);
                    float y = center.Y + (float)(Math.Sin(angle) * innerRadius);
                    pts.Add(new PointF(x, y));
                }

                canvas.FillColor = seg.Color;
                canvas.FillPolygon(pts.ToArray());

                startAngle += sweep;
            }

            canvas.RestoreState();
        }
    }
}
