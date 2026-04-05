using Microsoft.Maui.Graphics;

namespace busines_treker.Controls
{
    public static class CanvasExtensions
    {
        // helper to fill polygon using PathF
        public static void FillPolygon(this ICanvas canvas, Microsoft.Maui.Graphics.PointF[] pts)
        {
            if (pts == null || pts.Length == 0) return;
            var path = new PathF();
            path.MoveTo(pts[0].X, pts[0].Y);
            for (int i = 1; i < pts.Length; i++)
                path.LineTo(pts[i].X, pts[i].Y);
            path.Close();
            canvas.FillPath(path);
        }
    }
}
