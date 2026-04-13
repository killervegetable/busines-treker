; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [340 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1020 x i32] [
	i32 u0x0027eb9e, ; 0: System.Net.NetworkInformation.dll => 71
	i32 u0x00345a11, ; 1: lib_System.Net.Requests.dll.so => 75
	i32 u0x009b21bb, ; 2: System.Net.NameResolution.dll => 70
	i32 u0x00c8cc5d, ; 3: lib_Xamarin.AndroidX.Loader.dll.so => 260
	i32 u0x00e0bbf7, ; 4: lib_System.Xml.XmlSerializer.dll.so => 167
	i32 u0x00efe298, ; 5: System.Runtime.Intrinsics.dll => 112
	i32 u0x0119bc86, ; 6: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 190
	i32 u0x01903f80, ; 7: Microsoft.Extensions.DependencyModel => 191
	i32 u0x01cdfed1, ; 8: System.Linq.AsyncEnumerable => 60
	i32 u0x01f2c4e1, ; 9: Xamarin.AndroidX.Lifecycle.Runtime => 251
	i32 u0x0211b5dc, ; 10: Xamarin.Google.Guava.ListenableFuture.dll => 292
	i32 u0x02139ac3, ; 11: System.IO.FileSystem.DriveInfo => 49
	i32 u0x025a8054, ; 12: System.Net.WebSockets.dll => 84
	i32 u0x02664405, ; 13: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 330
	i32 u0x028aa24d, ; 14: System.Threading.Thread => 150
	i32 u0x03358480, ; 15: lib_Microsoft.Maui.dll.so => 202
	i32 u0x0335cdbc, ; 16: ca/Microsoft.Maui.Controls.resources => 302
	i32 u0x03f75868, ; 17: System.Diagnostics.StackTrace => 31
	i32 u0x0410f24b, ; 18: System.Security.Cryptography.Primitives => 128
	i32 u0x044bb714, ; 19: Microsoft.Maui.Graphics.dll => 204
	i32 u0x04e7b0a1, ; 20: System.Runtime.CompilerServices.VisualC.dll => 106
	i32 u0x056606a6, ; 21: lib_System.Collections.NonGeneric.dll.so => 11
	i32 u0x05dc54b4, ; 22: Microsoft.Extensions.Diagnostics.Abstractions => 192
	i32 u0x060d4943, ; 23: Xamarin.AndroidX.SlidingPaneLayout => 274
	i32 u0x0621fa55, ; 24: lib_System.Net.ServerSentEvents.dll.so => 77
	i32 u0x065dd880, ; 25: lib_System.Linq.Queryable.dll.so => 63
	i32 u0x06989c2e, ; 26: Xamarin.AndroidX.Navigation.Runtime.Android.dll => 265
	i32 u0x06c2cd46, ; 27: zh-HK/Microsoft.Maui.Controls.resources => 332
	i32 u0x06e4e181, ; 28: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 292
	i32 u0x06ee56d3, ; 29: lib_System.Net.Mail.dll.so => 69
	i32 u0x06ffddbc, ; 30: System.Runtime.InteropServices => 111
	i32 u0x0720e5bb, ; 31: Xamarin.AndroidX.Navigation.Common.Android.dll => 262
	i32 u0x072f9521, ; 32: Xamarin.AndroidX.SlidingPaneLayout.dll => 274
	i32 u0x074aea82, ; 33: System.Threading.Channels.dll => 144
	i32 u0x0772c6a7, ; 34: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 32
	i32 u0x0881c32f, ; 35: System.Net.WebHeaderCollection => 81
	i32 u0x08f064cf, ; 36: System.Security.Cryptography.Primitives.dll => 128
	i32 u0x097ed3c0, ; 37: System.ComponentModel.Annotations => 14
	i32 u0x098905a2, ; 38: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 227
	i32 u0x09d975c3, ; 39: Xamarin.AndroidX.Collection.dll => 224
	i32 u0x0a0c2bd0, ; 40: lib_Xamarin.AndroidX.Activity.dll.so => 213
	i32 u0x0a81994f, ; 41: System.ServiceProcess => 136
	i32 u0x0ade3a75, ; 42: Xamarin.AndroidX.SwipeRefreshLayout.dll => 276
	i32 u0x0ae43932, ; 43: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 277
	i32 u0x0aee6a3d, ; 44: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 331
	i32 u0x0aeedc53, ; 45: lib_Xamarin.Google.Android.Material.dll.so => 288
	i32 u0x0afca281, ; 46: System.ValueTuple.dll => 156
	i32 u0x0b0de1c3, ; 47: lib_System.Xml.XPath.XDocument.dll.so => 164
	i32 u0x0b63b1e1, ; 48: lib_System.Net.Http.Json.dll.so => 66
	i32 u0x0b721a36, ; 49: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 321
	i32 u0x0ba65f85, ; 50: vi/Microsoft.Maui.Controls.resources.dll => 331
	i32 u0x0ba8e231, ; 51: lib_System.Net.ServicePoint.dll.so => 78
	i32 u0x0be195c3, ; 52: zh-HK/Microsoft.Maui.Controls.resources.dll => 332
	i32 u0x0c38ff48, ; 53: System.ComponentModel => 19
	i32 u0x0c5df1c2, ; 54: lib_Microsoft.VisualStudio.DesignTools.XamlTapContract.dll.so => 338
	i32 u0x0c7b2e71, ; 55: Xamarin.AndroidX.Browser.dll => 222
	i32 u0x0cbc4dce, ; 56: System.Threading.AccessControl.dll => 143
	i32 u0x0cfa66a6, ; 57: lib_System.IO.Compression.FileSystem.dll.so => 45
	i32 u0x0d1f8edb, ; 58: System.Diagnostics.Debug => 27
	i32 u0x0d73bff4, ; 59: lib_Microsoft.Extensions.Logging.Debug.dll.so => 197
	i32 u0x0dc10265, ; 60: Microsoft.CSharp.dll => 2
	i32 u0x0dc2edec, ; 61: lib_Xamarin.AndroidX.Core.ViewTree.dll.so => 233
	i32 u0x0dc2f416, ; 62: lib_Xamarin.AndroidX.CustomView.dll.so => 235
	i32 u0x0dcb05c4, ; 63: System.Linq.Parallel => 62
	i32 u0x0dd133ce, ; 64: System.Globalization => 43
	i32 u0x0e3c65a0, ; 65: lib_System.Threading.AccessControl.dll.so => 143
	i32 u0x0e762ada, ; 66: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 319
	i32 u0x0eb2f8c5, ; 67: System.Reflection.Emit.Lightweight => 95
	i32 u0x0ec71be0, ; 68: lib_System.Security.SecureString.dll.so => 133
	i32 u0x0ecfdca9, ; 69: lib_Xamarin.Android.Glide.dll.so => 209
	i32 u0x0f99119d, ; 70: Xamarin.AndroidX.ConstraintLayout.dll => 228
	i32 u0x107abf20, ; 71: System.Threading.Timer.dll => 152
	i32 u0x109c6ab8, ; 72: Xamarin.AndroidX.Lifecycle.LiveData.dll => 247
	i32 u0x10b7d2b7, ; 73: Xamarin.AndroidX.Interpolator => 244
	i32 u0x10bf9929, ; 74: cs/Microsoft.Maui.Controls.resources.dll => 303
	i32 u0x10c1d9f6, ; 75: lib_System.Data.DataSetExtensions.dll.so => 24
	i32 u0x113d3381, ; 76: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 326
	i32 u0x1159791e, ; 77: System.IO.Pipes.AccessControl.dll => 56
	i32 u0x11d123fd, ; 78: System.Net.Ping.dll => 72
	i32 u0x13031348, ; 79: Xamarin.AndroidX.Activity.dll => 213
	i32 u0x132b30dd, ; 80: System.Numerics => 87
	i32 u0x1331a702, ; 81: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 290
	i32 u0x136bf828, ; 82: lib_System.Runtime.dll.so => 120
	i32 u0x136e925c, ; 83: ru/busines-treker.resources => 0
	i32 u0x14095832, ; 84: ja/Microsoft.Maui.Controls.resources.dll => 316
	i32 u0x146817a2, ; 85: Xamarin.AndroidX.Lifecycle.Common => 245
	i32 u0x14afd810, ; 86: SQLitePCLRaw.lib.e_sqlite3.android.dll => 207
	i32 u0x14eaf2a7, ; 87: lib_System.ComponentModel.Annotations.dll.so => 14
	i32 u0x153e1455, ; 88: it/Microsoft.Maui.Controls.resources.dll => 315
	i32 u0x15502fa0, ; 89: cs/Microsoft.Maui.Controls.resources => 303
	i32 u0x15766b7b, ; 90: System.ServiceModel.Web => 135
	i32 u0x15c177ae, ; 91: lib_Microsoft.Extensions.Configuration.dll.so => 187
	i32 u0x15e184df, ; 92: lib_System.Runtime.Loader.dll.so => 113
	i32 u0x15ebe147, ; 93: System.IO.Pipes => 57
	i32 u0x16101ba2, ; 94: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 336
	i32 u0x1658bf94, ; 95: System.Transactions.Local => 154
	i32 u0x16646418, ; 96: System.Net.ServicePoint.dll => 78
	i32 u0x16a510e1, ; 97: System.Threading.Thread.dll => 150
	i32 u0x16d476c4, ; 98: System.IO.Hashing.dll => 177
	i32 u0x16fe439a, ; 99: System.Memory.dll => 65
	i32 u0x1766c1f7, ; 100: System.Threading.ThreadPool.dll => 151
	i32 u0x1778984a, ; 101: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 269
	i32 u0x17969339, ; 102: _Microsoft.Android.Resource.Designer => 339
	i32 u0x180c08d0, ; 103: WindowsBase => 170
	i32 u0x195d1904, ; 104: Xamarin.AndroidX.Lifecycle.Runtime.Android => 252
	i32 u0x198cd3eb, ; 105: lib_System.Security.Cryptography.Encoding.dll.so => 126
	i32 u0x19f6996b, ; 106: sv/Microsoft.Maui.Controls.resources.dll => 327
	i32 u0x1a4e3ec4, ; 107: Xamarin.AndroidX.ConstraintLayout.Core => 229
	i32 u0x1a61054f, ; 108: System.Collections => 13
	i32 u0x1ae0ec2c, ; 109: Xamarin.AndroidX.Fragment.dll => 242
	i32 u0x1ae969b2, ; 110: System.Security.Cryptography.X509Certificates => 129
	i32 u0x1b317bfd, ; 111: System.Web.HttpUtility.dll => 157
	i32 u0x1b46a9fd, ; 112: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 253
	i32 u0x1b5932ea, ; 113: lib_Mono.Android.Runtime.dll.so => 175
	i32 u0x1b611806, ; 114: System.Runtime.Serialization.Primitives.dll => 117
	i32 u0x1b9ccf25, ; 115: lib_Microsoft.EntityFrameworkCore.Abstractions.dll.so => 182
	i32 u0x1bc4415d, ; 116: mscorlib => 171
	i32 u0x1bc6ffe7, ; 117: lib_Java.Interop.dll.so => 173
	i32 u0x1bff388e, ; 118: System.dll => 169
	i32 u0x1c690cb9, ; 119: Xamarin.AndroidX.Interpolator.dll => 244
	i32 u0x1c78d08a, ; 120: lib_System.Private.Uri.dll.so => 90
	i32 u0x1d48410e, ; 121: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 274
	i32 u0x1d4d8185, ; 122: lib_System.Runtime.Serialization.dll.so => 119
	i32 u0x1dbae811, ; 123: System.ObjectModel => 88
	i32 u0x1dd2dc50, ; 124: id/Microsoft.Maui.Controls.resources.dll => 314
	i32 u0x1e092f31, ; 125: fi/Microsoft.Maui.Controls.resources.dll => 308
	i32 u0x1e9789de, ; 126: Microsoft.Extensions.Primitives.dll => 199
	i32 u0x1f1dceb7, ; 127: lib_System.Security.Cryptography.Primitives.dll.so => 128
	i32 u0x1f443e2d, ; 128: lib_System.AppContext.dll.so => 7
	i32 u0x1f6088c2, ; 129: System.Transactions.dll => 155
	i32 u0x1f6bf43d, ; 130: hi/Microsoft.Maui.Controls.resources => 311
	i32 u0x1f9b4faa, ; 131: System.Linq.Queryable => 63
	i32 u0x20216150, ; 132: Microsoft.Extensions.Logging => 195
	i32 u0x20303736, ; 133: System.IO.FileSystem.dll => 52
	i32 u0x2080b118, ; 134: System.Runtime.Extensions => 107
	i32 u0x20924146, ; 135: System.Runtime.Serialization.Xml => 118
	i32 u0x20bbb280, ; 136: System.Globalization.Calendars => 41
	i32 u0x2116ab2f, ; 137: Xamarin.JSpecify.dll => 294
	i32 u0x213954e7, ; 138: Jsr305Binding => 289
	i32 u0x218bdf07, ; 139: Xamarin.AndroidX.Core.ViewTree.dll => 233
	i32 u0x22697083, ; 140: System.Security.Cryptography.Cng => 124
	i32 u0x234b6fb2, ; 141: pt-BR/Microsoft.Maui.Controls.resources.dll => 322
	i32 u0x236793de, ; 142: lib_GoogleGson.dll.so => 179
	i32 u0x2386616a, ; 143: lib_System.ServiceModel.Web.dll.so => 135
	i32 u0x2397454a, ; 144: lib_System.Collections.Specialized.dll.so => 12
	i32 u0x23d83352, ; 145: System.IO.IsolatedStorage.dll => 53
	i32 u0x23eaab34, ; 146: lib_System.Core.dll.so => 22
	i32 u0x24154ecb, ; 147: System.IO.Compression.FileSystem => 45
	i32 u0x2459aaf0, ; 148: lib_System.Net.Sockets.dll.so => 79
	i32 u0x2493d7b9, ; 149: System.Security.Cryptography.Algorithms => 123
	i32 u0x2512d1c5, ; 150: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 252
	i32 u0x2568904f, ; 151: Xamarin.AndroidX.CustomView => 235
	i32 u0x26233b86, ; 152: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 240
	i32 u0x26249f17, ; 153: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 236
	i32 u0x2624cabb, ; 154: busines-treker.dll => 1
	i32 u0x262968a7, ; 155: lib_System.Reflection.Extensions.dll.so => 97
	i32 u0x262d781c, ; 156: lib-de-Microsoft.Maui.Controls.resources.dll.so => 305
	i32 u0x2660a755, ; 157: System.Net => 85
	i32 u0x27787397, ; 158: System.Text.Encodings.Web.dll => 140
	i32 u0x278c7790, ; 159: Xamarin.AndroidX.VersionedParcelable => 282
	i32 u0x27b53050, ; 160: lib_System.Data.Common.dll.so => 23
	i32 u0x27b6d01f, ; 161: Xamarin.AndroidX.Arch.Core.Common.dll => 220
	i32 u0x2814a96c, ; 162: System.Collections.Concurrent => 9
	i32 u0x282acf5e, ; 163: lib_System.IO.FileSystem.dll.so => 52
	i32 u0x28607aa1, ; 164: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 322
	i32 u0x28bdabca, ; 165: System.Net.Security => 76
	i32 u0x2904cf94, ; 166: ca/Microsoft.Maui.Controls.resources.dll => 302
	i32 u0x29293ff5, ; 167: System.Xml.Linq.dll => 160
	i32 u0x29352520, ; 168: Xamarin.KotlinX.Coroutines.Android.dll => 296
	i32 u0x29423679, ; 169: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 234
	i32 u0x295a9e3d, ; 170: System.Windows => 159
	i32 u0x296c7566, ; 171: lib_System.Xml.dll.so => 168
	i32 u0x29af2b3b, ; 172: System.Reflection.Emit => 96
	i32 u0x29bd7e5b, ; 173: Xamarin.Jetbrains.Annotations => 293
	i32 u0x29be9df3, ; 174: System.IO.Compression.ZipFile => 46
	i32 u0x2a1e8ecb, ; 175: ko/Microsoft.Maui.Controls.resources.dll => 317
	i32 u0x2a4afd4a, ; 176: de/Microsoft.Maui.Controls.resources.dll => 305
	i32 u0x2b15ed29, ; 177: System.Runtime.Loader.dll => 113
	i32 u0x2ba1ca8c, ; 178: lib_System.Security.dll.so => 134
	i32 u0x2bd14e96, ; 179: System.Security.SecureString.dll => 133
	i32 u0x2ca248c0, ; 180: SQLitePCLRaw.batteries_v2 => 205
	i32 u0x2cd6293c, ; 181: System.Diagnostics.Contracts.dll => 26
	i32 u0x2d052d0c, ; 182: Xamarin.Android.Glide.Annotations.dll => 210
	i32 u0x2d322560, ; 183: lib_System.Xml.XmlDocument.dll.so => 166
	i32 u0x2d445acd, ; 184: System.Net.Requests => 75
	i32 u0x2d745423, ; 185: System.IO.Pipes.dll => 57
	i32 u0x2e394f87, ; 186: System.IO.Compression => 47
	i32 u0x2eec5558, ; 187: lib_System.Reflection.dll.so => 101
	i32 u0x2f0980eb, ; 188: Microsoft.Extensions.Options => 198
	i32 u0x2f0fe5eb, ; 189: lib_System.Reflection.DispatchProxy.dll.so => 93
	i32 u0x2f1c1e69, ; 190: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 236
	i32 u0x2ff6fb9f, ; 191: System.Data.Common => 23
	i32 u0x302809e9, ; 192: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 249
	i32 u0x30a0e95c, ; 193: lib_System.Threading.Thread.dll.so => 150
	i32 u0x311247b5, ; 194: System.Private.Uri.dll => 90
	i32 u0x317d5b75, ; 195: System.IO.Compression.Brotli => 44
	i32 u0x31a103c6, ; 196: System.Xml.XPath.dll => 165
	i32 u0x31b69d60, ; 197: System.Net.Quic => 74
	i32 u0x3312831d, ; 198: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 237
	i32 u0x33e88be1, ; 199: ar/Microsoft.Maui.Controls.resources => 301
	i32 u0x340ac0b8, ; 200: Microsoft.VisualBasic => 4
	i32 u0x34505120, ; 201: System.Globalization.dll => 43
	i32 u0x3463c971, ; 202: System.Net.Http.Json => 66
	i32 u0x34a30d77, ; 203: System.IO.Hashing => 177
	i32 u0x34a66c56, ; 204: lib_System.IO.Pipes.dll.so => 57
	i32 u0x351454c7, ; 205: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 207
	i32 u0x352e5794, ; 206: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 291
	i32 u0x35e25008, ; 207: System.ComponentModel.Primitives.dll => 17
	i32 u0x3612ff2c, ; 208: lib_System.IO.dll.so => 59
	i32 u0x364e69a3, ; 209: System.IO.MemoryMappedFiles.dll => 54
	i32 u0x36e9595b, ; 210: lib_System.Transactions.dll.so => 155
	i32 u0x370eff4f, ; 211: lib_System.Globalization.Extensions.dll.so => 42
	i32 u0x373f6a31, ; 212: tr/Microsoft.Maui.Controls.resources.dll => 329
	i32 u0x3751ef41, ; 213: Xamarin.Google.Guava.ListenableFuture => 292
	i32 u0x3787b992, ; 214: lib_System.ComponentModel.DataAnnotations.dll.so => 15
	i32 u0x37ea9cd7, ; 215: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 256
	i32 u0x382704bd, ; 216: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 240
	i32 u0x38c136f7, ; 217: System.Runtime.InteropServices.JavaScript.dll => 109
	i32 u0x38d89c1d, ; 218: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 246
	i32 u0x38fe5498, ; 219: Xamarin.AndroidX.Window.WindowCore.Jvm => 287
	i32 u0x39481653, ; 220: lib_mscorlib.dll.so => 171
	i32 u0x399f1f06, ; 221: Xamarin.Google.Crypto.Tink.Android => 290
	i32 u0x39adca5e, ; 222: Xamarin.AndroidX.Lifecycle.Common.dll => 245
	i32 u0x3a20ecf3, ; 223: System.Diagnostics.Tracing => 35
	i32 u0x3a2aaa1d, ; 224: System.Xml.XDocument => 163
	i32 u0x3a8b0a79, ; 225: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 296
	i32 u0x3acd0267, ; 226: System.Private.DataContractSerialization.dll => 89
	i32 u0x3ad7b407, ; 227: System.Diagnostics.Tools => 33
	i32 u0x3b008d80, ; 228: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 238
	i32 u0x3b2c715c, ; 229: System.Collections.dll => 13
	i32 u0x3b3271e4, ; 230: zh-Hans/Microsoft.Maui.Controls.resources => 333
	i32 u0x3b458447, ; 231: lib_System.Threading.Tasks.Dataflow.dll.so => 146
	i32 u0x3b45fb35, ; 232: System.IO.FileSystem => 52
	i32 u0x3b4797e5, ; 233: es/Microsoft.Maui.Controls.resources => 307
	i32 u0x3bb6bd33, ; 234: System.IO.UnmanagedMemoryStream.dll => 58
	i32 u0x3c5e5b62, ; 235: Xamarin.AndroidX.SavedState.dll => 270
	i32 u0x3cbffa41, ; 236: System.Drawing => 37
	i32 u0x3d548d92, ; 237: Microsoft.Extensions.DependencyInjection.Abstractions => 190
	i32 u0x3d5a6611, ; 238: da/Microsoft.Maui.Controls.resources.dll => 304
	i32 u0x3d7be038, ; 239: Xamarin.Google.ErrorProne.Annotations.dll => 291
	i32 u0x3dbaaf8f, ; 240: Xamarin.AndroidX.AppCompat => 218
	i32 u0x3dc84a49, ; 241: System.Drawing.Primitives.dll => 36
	i32 u0x3df150e9, ; 242: lib_Xamarin.AndroidX.Interpolator.dll.so => 244
	i32 u0x3e444eb4, ; 243: System.Linq.Expressions.dll => 61
	i32 u0x3e5c42fd, ; 244: lib_System.Reflection.TypeExtensions.dll.so => 100
	i32 u0x3e865cbd, ; 245: Microsoft.Extensions.Diagnostics.Abstractions.dll => 192
	i32 u0x3eb776a1, ; 246: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 255
	i32 u0x3ebd41f6, ; 247: lib_System.Collections.dll.so => 13
	i32 u0x3ecd3024, ; 248: lib_System.Resources.Reader.dll.so => 102
	i32 u0x3eea4db8, ; 249: lib_Microsoft.Extensions.Primitives.dll.so => 199
	i32 u0x3f3e1e33, ; 250: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 250
	i32 u0x3f9dcf8c, ; 251: GoogleGson => 179
	i32 u0x408b17f4, ; 252: System.ComponentModel.TypeConverter => 18
	i32 u0x409e66d8, ; 253: Xamarin.Kotlin.StdLib => 295
	i32 u0x41761b2c, ; 254: System => 169
	i32 u0x422dfa8a, ; 255: Microsoft.Extensions.Hosting.Abstractions => 194
	i32 u0x4232ae7b, ; 256: lib_System.Reflection.Emit.dll.so => 96
	i32 u0x42be2972, ; 257: lib_System.Text.Encodings.Web.dll.so => 140
	i32 u0x42c091c1, ; 258: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 212
	i32 u0x42da3e50, ; 259: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 253
	i32 u0x43362f15, ; 260: Microsoft.Extensions.Logging.Debug => 197
	i32 u0x4393e151, ; 261: lib-th-Microsoft.Maui.Controls.resources.dll.so => 328
	i32 u0x441f18e1, ; 262: lib_System.Security.Cryptography.OpenSsl.dll.so => 127
	i32 u0x444e5c8e, ; 263: lib_System.ComponentModel.TypeConverter.dll.so => 18
	i32 u0x44549c93, ; 264: lib_System.Net.WebProxy.dll.so => 82
	i32 u0x4474042c, ; 265: lib_System.Numerics.Vectors.dll.so => 86
	i32 u0x447dc2e6, ; 266: Xamarin.AndroidX.Window => 285
	i32 u0x44845810, ; 267: lib_System.Net.Http.dll.so => 67
	i32 u0x44c3958b, ; 268: lib_System.Private.DataContractSerialization.dll.so => 89
	i32 u0x4504a37d, ; 269: Microsoft.EntityFrameworkCore.Abstractions => 182
	i32 u0x4528fc75, ; 270: System.Net.ServerSentEvents.dll => 77
	i32 u0x45bde382, ; 271: lib_System.Windows.dll.so => 159
	i32 u0x45c677b2, ; 272: System.Web.dll => 158
	i32 u0x45ec7ce1, ; 273: Microsoft.Extensions.FileProviders.Abstractions.dll => 193
	i32 u0x460b48eb, ; 274: Xamarin.AndroidX.VectorDrawable.Animated => 281
	i32 u0x463a8801, ; 275: Xamarin.AndroidX.Navigation.Runtime.dll => 264
	i32 u0x464305ed, ; 276: fi/Microsoft.Maui.Controls.resources => 308
	i32 u0x466ae52b, ; 277: lib_System.Threading.Overlapped.dll.so => 145
	i32 u0x47a512f3, ; 278: Microsoft.EntityFrameworkCore.Abstractions.dll => 182
	i32 u0x47a87de7, ; 279: lib_System.Resources.Writer.dll.so => 104
	i32 u0x47b79c15, ; 280: pl/Microsoft.Maui.Controls.resources.dll => 321
	i32 u0x47c7b4fa, ; 281: Xamarin.AndroidX.Arch.Core.Common => 220
	i32 u0x47cc5c8b, ; 282: Microsoft.Extensions.Caching.Memory.dll => 186
	i32 u0x480a69ad, ; 283: System.Diagnostics.Process => 30
	i32 u0x48aa6be3, ; 284: System.IO.IsolatedStorage => 53
	i32 u0x48bf92c4, ; 285: lib_Xamarin.AndroidX.Collection.dll.so => 224
	i32 u0x49654709, ; 286: lib_System.Threading.Timer.dll.so => 152
	i32 u0x499b8219, ; 287: nb/Microsoft.Maui.Controls.resources.dll => 319
	i32 u0x49dd578a, ; 288: lib_Microsoft.Extensions.Hosting.Abstractions.dll.so => 194
	i32 u0x4a0189ae, ; 289: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 311
	i32 u0x4a4cd262, ; 290: Xamarin.AndroidX.Collection.Jvm.dll => 225
	i32 u0x4a8cb221, ; 291: lib_Xamarin.JSpecify.dll.so => 294
	i32 u0x4aaf6f7c, ; 292: Microsoft.Win32.Registry => 6
	i32 u0x4ae97402, ; 293: lib_Microsoft.Maui.Graphics.dll.so => 204
	i32 u0x4b275854, ; 294: Xamarin.KotlinX.Serialization.Core.Jvm => 300
	i32 u0x4b5eebe5, ; 295: Xamarin.AndroidX.Startup.StartupRuntime.dll => 275
	i32 u0x4b64b158, ; 296: Xamarin.KotlinX.Coroutines.Core.dll => 297
	i32 u0x4b863c7a, ; 297: lib_System.Private.Xml.Linq.dll.so => 91
	i32 u0x4b8a64a7, ; 298: Xamarin.AndroidX.VectorDrawable => 280
	i32 u0x4bb12d98, ; 299: lib_System.Runtime.Serialization.Xml.dll.so => 118
	i32 u0x4be46b58, ; 300: Xamarin.AndroidX.Collection.Ktx => 226
	i32 u0x4c071bea, ; 301: Xamarin.KotlinX.Coroutines.Android => 296
	i32 u0x4c3393c5, ; 302: Xamarin.AndroidX.Annotation.Jvm => 217
	i32 u0x4cf4dfce, ; 303: lib_Microsoft.Extensions.Caching.Memory.dll.so => 186
	i32 u0x4d0585a0, ; 304: SQLitePCLRaw.core.dll => 206
	i32 u0x4d14ee2b, ; 305: Xamarin.AndroidX.DrawerLayout.dll => 237
	i32 u0x4de0ce3b, ; 306: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 267
	i32 u0x4e08a30b, ; 307: System.Private.DataContractSerialization => 89
	i32 u0x4e50159c, ; 308: Xamarin.AndroidX.Navigation.Common.Android => 262
	i32 u0x4ea003f9, ; 309: lib_Xamarin.AndroidX.Navigation.Common.Android.dll.so => 262
	i32 u0x4ed70c83, ; 310: Xamarin.AndroidX.Window.dll => 285
	i32 u0x4eed2679, ; 311: System.Linq => 64
	i32 u0x4f97822f, ; 312: System.Runtime.Serialization.Json.dll => 116
	i32 u0x50255dd9, ; 313: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 312
	i32 u0x50acdfd7, ; 314: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 302
	i32 u0x50f5c1df, ; 315: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll.so => 259
	i32 u0x514d38cd, ; 316: System.IO => 59
	i32 u0x52114ed3, ; 317: Xamarin.AndroidX.SavedState => 270
	i32 u0x523dc4c1, ; 318: System.Resources.ResourceManager => 103
	i32 u0x533678bd, ; 319: lib_System.Private.CoreLib.dll.so => 178
	i32 u0x53701274, ; 320: lib_System.IO.FileSystem.Watcher.dll.so => 51
	i32 u0x53936ab4, ; 321: System.Configuration.dll => 20
	i32 u0x53cefc50, ; 322: Xamarin.AndroidX.CoordinatorLayout => 230
	i32 u0x53d71638, ; 323: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll => 259
	i32 u0x53f80ba6, ; 324: System.Runtime.Serialization.Formatters.dll => 115
	i32 u0x5423e47b, ; 325: System.Runtime.CompilerServices.Unsafe => 105
	i32 u0x54246761, ; 326: lib_System.Diagnostics.Tools.dll.so => 33
	i32 u0x5498bac9, ; 327: lib_Microsoft.VisualBasic.dll.so => 4
	i32 u0x54ca50cb, ; 328: System.Runtime.CompilerServices.VisualC => 106
	i32 u0x557217fe, ; 329: lib_System.Numerics.dll.so => 87
	i32 u0x557b5293, ; 330: System.Runtime.Handles => 108
	i32 u0x558bc221, ; 331: Xamarin.Google.Crypto.Tink.Android.dll => 290
	i32 u0x55ab7451, ; 332: Xamarin.AndroidX.Lifecycle.Common.Jvm => 246
	i32 u0x55d10363, ; 333: System.Net.Quic.dll => 74
	i32 u0x55dfaca3, ; 334: lib_Microsoft.Win32.Primitives.dll.so => 5
	i32 u0x55e55df2, ; 335: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 256
	i32 u0x568cd628, ; 336: System.Formats.Asn1.dll => 39
	i32 u0x569fcb36, ; 337: System.Diagnostics.Tools.dll => 33
	i32 u0x56c018af, ; 338: lib_System.IO.UnmanagedMemoryStream.dll.so => 58
	i32 u0x56e36530, ; 339: System.Runtime.Extensions.dll => 107
	i32 u0x56e7a7ad, ; 340: System.Net.Security.dll => 76
	i32 u0x5718a9ef, ; 341: System.Collections.Immutable.dll => 10
	i32 u0x57201017, ; 342: System.Security.Cryptography.OpenSsl => 127
	i32 u0x57261233, ; 343: System.IO.Compression.dll => 47
	i32 u0x57924923, ; 344: Xamarin.AndroidX.AppCompat.AppCompatResources => 219
	i32 u0x57a5e912, ; 345: Microsoft.Extensions.Primitives => 199
	i32 u0x5833866d, ; 346: System.Collections.Immutable => 10
	i32 u0x583e844f, ; 347: System.IO.Compression.Brotli.dll => 44
	i32 u0x58a57897, ; 348: Microsoft.Win32.Primitives => 5
	i32 u0x58cffa99, ; 349: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 272
	i32 u0x58d4f4b4, ; 350: Microsoft.Data.Sqlite.dll => 180
	i32 u0x58fd6613, ; 351: hi/Microsoft.Maui.Controls.resources.dll => 311
	i32 u0x596b5b3a, ; 352: lib_System.Drawing.Primitives.dll.so => 36
	i32 u0x5a48cf6c, ; 353: el/Microsoft.Maui.Controls.resources.dll => 306
	i32 u0x5b9331b6, ; 354: System.Diagnostics.TextWriterTraceListener => 32
	i32 u0x5be451c7, ; 355: lib_Xamarin.AndroidX.Browser.dll.so => 222
	i32 u0x5bf8ca0f, ; 356: System.Text.RegularExpressions.dll => 142
	i32 u0x5bfdbb43, ; 357: System.Reflection.Emit.dll => 96
	i32 u0x5c680b40, ; 358: System.Reflection.Extensions.dll => 97
	i32 u0x5c7be408, ; 359: sk/Microsoft.Maui.Controls.resources.dll => 326
	i32 u0x5cabc9a4, ; 360: fr/Microsoft.Maui.Controls.resources => 309
	i32 u0x5cb489e2, ; 361: Xamarin.AndroidX.Tracing.Tracing.Android => 278
	i32 u0x5d552ab7, ; 362: System.IO.FileSystem.Primitives => 50
	i32 u0x5d5a6c40, ; 363: System.Threading.Tasks.Dataflow.dll => 146
	i32 u0x5dccd455, ; 364: System.Runtime.Serialization.Json => 116
	i32 u0x5e0b6fdc, ; 365: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 300
	i32 u0x5e2d7514, ; 366: System.Threading.Overlapped => 145
	i32 u0x5e2e3abe, ; 367: lib_Microsoft.VisualBasic.Core.dll.so => 3
	i32 u0x5e33306d, ; 368: sv/Microsoft.Maui.Controls.resources => 327
	i32 u0x5e7321d2, ; 369: lib_System.ComponentModel.Primitives.dll.so => 17
	i32 u0x5ed5f779, ; 370: zh-Hant/Microsoft.Maui.Controls.resources => 334
	i32 u0x5ef2ee25, ; 371: System.Runtime.Serialization.dll => 119
	i32 u0x5f3ec4dd, ; 372: Xamarin.Google.ErrorProne.Annotations => 291
	i32 u0x5f6f0b5b, ; 373: System.Xml.Serialization => 162
	i32 u0x5f93db6e, ; 374: Microsoft.Maui.Controls.HotReload.Forms.dll => 335
	i32 u0x5fa7b851, ; 375: System.Net.WebClient => 80
	i32 u0x5ff4c8d8, ; 376: lib_Microsoft.Extensions.Caching.Abstractions.dll.so => 185
	i32 u0x6078995d, ; 377: System.Net.WebSockets.Client.dll => 83
	i32 u0x60892624, ; 378: lib_System.Formats.Tar.dll.so => 40
	i32 u0x60b0136a, ; 379: Xamarin.AndroidX.Loader.dll => 260
	i32 u0x60b33958, ; 380: System.Dynamic.Runtime => 38
	i32 u0x60d97228, ; 381: Xamarin.AndroidX.ViewPager2 => 284
	i32 u0x60ec189c, ; 382: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 221
	i32 u0x6176eff7, ; 383: Xamarin.AndroidX.Emoji2.ViewsHelper => 240
	i32 u0x6188ba7e, ; 384: Xamarin.AndroidX.CursorAdapter => 234
	i32 u0x61b9038d, ; 385: System.Net.Http.dll => 67
	i32 u0x61c036ca, ; 386: System.Text.RegularExpressions => 142
	i32 u0x61d59e0e, ; 387: System.ComponentModel.EventBasedAsync.dll => 16
	i32 u0x62021776, ; 388: lib_System.IO.Compression.dll.so => 47
	i32 u0x620a8774, ; 389: lib_System.Xml.ReaderWriter.dll.so => 161
	i32 u0x625755ef, ; 390: lib_WindowsBase.dll.so => 170
	i32 u0x62c6282e, ; 391: System.Runtime => 120
	i32 u0x62cec1a2, ; 392: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 298
	i32 u0x62d6c1e4, ; 393: Xamarin.AndroidX.Tracing.Tracing.dll => 277
	i32 u0x62d6ea10, ; 394: Xamarin.Google.Android.Material.dll => 288
	i32 u0x638b1991, ; 395: Xamarin.AndroidX.ConstraintLayout => 228
	i32 u0x63dee9da, ; 396: System.IO.FileSystem.DriveInfo.dll => 49
	i32 u0x63fca3d0, ; 397: System.Net.Primitives.dll => 73
	i32 u0x640c0103, ; 398: System.Net.WebSockets => 84
	i32 u0x641979dd, ; 399: Xamarin.JSpecify => 294
	i32 u0x641f3e5a, ; 400: System.Security.Cryptography => 130
	i32 u0x649e8ef3, ; 401: Microsoft.Data.Sqlite => 180
	i32 u0x64b3a19c, ; 402: Microsoft.EntityFrameworkCore.dll => 181
	i32 u0x64d1e4f5, ; 403: System.Reflection.Metadata => 98
	i32 u0x6525abc9, ; 404: System.Security.Cryptography.Csp => 125
	i32 u0x654b1498, ; 405: lib_System.Transactions.Local.dll.so => 154
	i32 u0x656b7698, ; 406: System.Diagnostics.Debug.dll => 27
	i32 u0x660284a1, ; 407: SQLitePCLRaw.lib.e_sqlite3.android => 207
	i32 u0x6670b12e, ; 408: lib_System.Security.AccessControl.dll.so => 121
	i32 u0x66888819, ; 409: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 249
	i32 u0x66e27484, ; 410: System.Reflection.dll => 101
	i32 u0x66ffb0f8, ; 411: System.Diagnostics.FileVersionInfo.dll => 29
	i32 u0x6715dc86, ; 412: Xamarin.AndroidX.CardView.dll => 223
	i32 u0x67577fe1, ; 413: lib_System.Runtime.CompilerServices.VisualC.dll.so => 106
	i32 u0x677cd287, ; 414: ro/Microsoft.Maui.Controls.resources.dll => 324
	i32 u0x67fe8db2, ; 415: System.Transactions.Local.dll => 154
	i32 u0x68139a0d, ; 416: System.IO.Pipelines.dll => 55
	i32 u0x6816ab6a, ; 417: Mono.Android.Export => 174
	i32 u0x6853a83d, ; 418: Microsoft.Win32.Primitives.dll => 5
	i32 u0x68cc9d1e, ; 419: System.Resources.Reader.dll => 102
	i32 u0x68f61ae4, ; 420: lib_System.Formats.Asn1.dll.so => 39
	i32 u0x690d4b7d, ; 421: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 334
	i32 u0x69239124, ; 422: System.Diagnostics.TraceSource.dll => 34
	i32 u0x693efa35, ; 423: lib_System.Net.WebHeaderCollection.dll.so => 81
	i32 u0x6942234e, ; 424: System.Reflection.Extensions => 97
	i32 u0x6947f945, ; 425: Xamarin.AndroidX.SwipeRefreshLayout => 276
	i32 u0x6988f147, ; 426: Microsoft.Extensions.Logging.dll => 195
	i32 u0x69ae5451, ; 427: lib_System.Runtime.InteropServices.JavaScript.dll.so => 109
	i32 u0x69d6d061, ; 428: lib_Xamarin.AndroidX.Window.WindowCore.Jvm.dll.so => 287
	i32 u0x69dc03cc, ; 429: System.Core.dll => 22
	i32 u0x69e98f93, ; 430: lib-ru-busines-treker.resources.dll.so => 0
	i32 u0x69ec0683, ; 431: System.Globalization.Extensions.dll => 42
	i32 u0x69f4f41d, ; 432: lib_Xamarin.AndroidX.AppCompat.dll.so => 218
	i32 u0x6a216153, ; 433: Mono.Android.Runtime.dll => 175
	i32 u0x6a539b49, ; 434: lib_System.Runtime.Extensions.dll.so => 107
	i32 u0x6a96652d, ; 435: Xamarin.AndroidX.Fragment => 242
	i32 u0x6afaf338, ; 436: lib_System.Threading.dll.so => 153
	i32 u0x6b645ada, ; 437: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 309
	i32 u0x6bbb2a76, ; 438: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 193
	i32 u0x6bcd3296, ; 439: Xamarin.AndroidX.Loader => 260
	i32 u0x6be1e423, ; 440: nb/Microsoft.Maui.Controls.resources => 319
	i32 u0x6c111525, ; 441: Xamarin.Kotlin.StdLib.dll => 295
	i32 u0x6c13413e, ; 442: Xamarin.Google.Android.Material => 288
	i32 u0x6c5562e0, ; 443: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 297
	i32 u0x6c652ce8, ; 444: Xamarin.AndroidX.Navigation.UI.dll => 266
	i32 u0x6c687fa7, ; 445: Microsoft.VisualBasic.Core => 3
	i32 u0x6c96614d, ; 446: hu/Microsoft.Maui.Controls.resources => 313
	i32 u0x6cbab720, ; 447: System.Text.Encoding.Extensions => 138
	i32 u0x6cc30c8c, ; 448: System.Runtime.Serialization.Formatters => 115
	i32 u0x6cea70ab, ; 449: Microsoft.VisualStudio.DesignTools.TapContract => 337
	i32 u0x6cf3d432, ; 450: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 282
	i32 u0x6cff90ba, ; 451: Microsoft.Extensions.Logging.Abstractions.dll => 196
	i32 u0x6dcaebf7, ; 452: uk/Microsoft.Maui.Controls.resources.dll => 330
	i32 u0x6e1ed932, ; 453: Xamarin.Android.Glide.Annotations => 210
	i32 u0x6ec71a65, ; 454: System.Linq.Expressions => 61
	i32 u0x6f7a29e4, ; 455: System.Reflection.Primitives => 99
	i32 u0x6fab02f2, ; 456: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 228
	i32 u0x7009e4c3, ; 457: System.Formats.Tar.dll => 40
	i32 u0x705fa726, ; 458: Xamarin.AndroidX.Arch.Core.Runtime.dll => 221
	i32 u0x7068d361, ; 459: Microsoft.VisualStudio.DesignTools.TapContract.dll => 337
	i32 u0x706ab11f, ; 460: Microsoft.EntityFrameworkCore.Sqlite.dll => 184
	i32 u0x7070c6c0, ; 461: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 333
	i32 u0x70972b6d, ; 462: System.Diagnostics.Contracts => 26
	i32 u0x70a66bdd, ; 463: System.Reflection.Metadata.dll => 98
	i32 u0x7124cf39, ; 464: System.Reflection.DispatchProxy => 93
	i32 u0x71490522, ; 465: System.Resources.ResourceManager.dll => 103
	i32 u0x71dc7c8b, ; 466: System.Collections.NonGeneric.dll => 11
	i32 u0x72fcebde, ; 467: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 219
	i32 u0x731dd955, ; 468: lib_Mono.Android.dll.so => 176
	i32 u0x73674b00, ; 469: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 208
	i32 u0x739bd4a8, ; 470: System.Private.Xml.Linq => 91
	i32 u0x73b20433, ; 471: lib_System.IO.FileSystem.Primitives.dll.so => 50
	i32 u0x73fbecbe, ; 472: lib_System.Memory.dll.so => 65
	i32 u0x74126030, ; 473: lib_System.Net.WebClient.dll.so => 80
	i32 u0x74a1c5bb, ; 474: System.Resources.Writer => 104
	i32 u0x74d743bf, ; 475: ja/Microsoft.Maui.Controls.resources => 316
	i32 u0x74eee4ef, ; 476: Xamarin.AndroidX.Security.SecurityCrypto.dll => 273
	i32 u0x75533a5e, ; 477: Microsoft.Extensions.Configuration.dll => 187
	i32 u0x7593c33f, ; 478: lib_System.IO.FileSystem.AccessControl.dll.so => 48
	i32 u0x75ec88d8, ; 479: System.Net.ServerSentEvents => 77
	i32 u0x765c50a4, ; 480: Xamarin.Android.Glide.GifDecoder => 212
	i32 u0x77ec19b4, ; 481: System.Buffers.dll => 8
	i32 u0x781074ce, ; 482: hr/Microsoft.Maui.Controls.resources => 312
	i32 u0x7812aabd, ; 483: Microsoft.EntityFrameworkCore.Sqlite => 184
	i32 u0x784d3e49, ; 484: lib_System.Net.dll.so => 85
	i32 u0x785e97f1, ; 485: Xamarin.AndroidX.Lifecycle.ViewModel => 255
	i32 u0x78b622b1, ; 486: ar/Microsoft.Maui.Controls.resources.dll => 301
	i32 u0x790376c9, ; 487: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 216
	i32 u0x791a414b, ; 488: Xamarin.Android.Glide => 209
	i32 u0x7970be4f, ; 489: lib-he-Microsoft.Maui.Controls.resources.dll.so => 310
	i32 u0x79d00016, ; 490: it/Microsoft.Maui.Controls.resources => 315
	i32 u0x79eb68ee, ; 491: System.Private.Xml => 92
	i32 u0x7a80bd4e, ; 492: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 248
	i32 u0x7aca0819, ; 493: System.Windows.dll => 159
	i32 u0x7b350579, ; 494: lib__Microsoft.Android.Resource.Designer.dll.so => 339
	i32 u0x7b3b4d96, ; 495: System.Linq.AsyncEnumerable.dll => 60
	i32 u0x7b473a37, ; 496: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 243
	i32 u0x7b6f419e, ; 497: System.Diagnostics.TraceSource => 34
	i32 u0x7b8f6ff7, ; 498: lib_System.Runtime.Serialization.Json.dll.so => 116
	i32 u0x7bf8cdab, ; 499: System.Runtime.dll => 120
	i32 u0x7c51ebd4, ; 500: lib_System.Net.HttpListener.dll.so => 68
	i32 u0x7c9bf920, ; 501: System.Numerics.Vectors => 86
	i32 u0x7d603cde, ; 502: SQLitePCLRaw.provider.e_sqlite3.dll => 208
	i32 u0x7d702d52, ; 503: lib_System.Text.Encoding.dll.so => 139
	i32 u0x7e3cc7a5, ; 504: Microsoft.VisualStudio.DesignTools.XamlTapContract.dll => 338
	i32 u0x7ec9ffe9, ; 505: System.Console => 21
	i32 u0x7fb38cd2, ; 506: System.Collections.Specialized => 12
	i32 u0x7fc7a41e, ; 507: System.Xml.XmlSerializer.dll => 167
	i32 u0x7fd90a71, ; 508: lib_System.Text.Encoding.CodePages.dll.so => 137
	i32 u0x7fdcdc37, ; 509: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 317
	i32 u0x7ff65cf5, ; 510: Microsoft.VisualBasic.dll => 4
	i32 u0x802a7166, ; 511: lib_System.Diagnostics.FileVersionInfo.dll.so => 29
	i32 u0x8030853e, ; 512: ko/Microsoft.Maui.Controls.resources => 317
	i32 u0x8044e1bd, ; 513: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 318
	i32 u0x8081c489, ; 514: lib_Jsr305Binding.dll.so => 289
	i32 u0x80bd55ad, ; 515: Microsoft.Maui => 202
	i32 u0x80f2f56e, ; 516: lib_System.Runtime.Serialization.Formatters.dll.so => 115
	i32 u0x810c11c2, ; 517: ro/Microsoft.Maui.Controls.resources => 324
	i32 u0x8115bdf3, ; 518: lib_System.Resources.ResourceManager.dll.so => 103
	i32 u0x816751d8, ; 519: lib_System.Diagnostics.DiagnosticSource.dll.so => 28
	i32 u0x81a110ae, ; 520: lib_System.ComponentModel.EventBasedAsync.dll.so => 16
	i32 u0x820d22b3, ; 521: Microsoft.Extensions.Options.dll => 198
	i32 u0x82364da2, ; 522: lib_System.Buffers.dll.so => 8
	i32 u0x82a8237c, ; 523: Microsoft.Extensions.Logging.Abstractions => 196
	i32 u0x82b6c85e, ; 524: System.ObjectModel.dll => 88
	i32 u0x82bb5429, ; 525: lib_System.Linq.Expressions.dll.so => 61
	i32 u0x82c1cf3e, ; 526: lib_System.Net.Quic.dll.so => 74
	i32 u0x830282f3, ; 527: Microsoft.Extensions.DependencyModel.dll => 191
	i32 u0x832ec206, ; 528: lib_System.Diagnostics.StackTrace.dll.so => 31
	i32 u0x83323b38, ; 529: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 298
	i32 u0x8334206b, ; 530: System.Net.Http => 67
	i32 u0x842e93b2, ; 531: Xamarin.AndroidX.VectorDrawable.Animated.dll => 281
	i32 u0x8471e4ec, ; 532: System.Threading.Tasks.Parallel => 148
	i32 u0x857e4dd2, ; 533: lib_System.Net.WebSockets.dll.so => 84
	i32 u0x8628f1a4, ; 534: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 325
	i32 u0x863c6ac5, ; 535: System.Xml.Serialization.dll => 162
	i32 u0x86487ec9, ; 536: Microsoft.EntityFrameworkCore => 181
	i32 u0x865f9104, ; 537: Xamarin.AndroidX.Window.WindowCore.dll => 286
	i32 u0x867c9c52, ; 538: System.Globalization.Extensions => 42
	i32 u0x86b0fd78, ; 539: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 257
	i32 u0x86bba59b, ; 540: lib_Microsoft.Maui.Controls.dll.so => 200
	i32 u0x8702d9a2, ; 541: System.Security.AccessControl.dll => 121
	i32 u0x871c9c1b, ; 542: Microsoft.Extensions.Configuration.Abstractions => 188
	i32 u0x872eeb7b, ; 543: Xamarin.Android.Glide.DiskLruCache.dll => 211
	i32 u0x875633cc, ; 544: fr/Microsoft.Maui.Controls.resources.dll => 309
	i32 u0x87a1a22b, ; 545: lib-it-Microsoft.Maui.Controls.resources.dll.so => 315
	i32 u0x87e25095, ; 546: Xamarin.AndroidX.RecyclerView.dll => 268
	i32 u0x87e7fdbb, ; 547: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 320
	i32 u0x881f94da, ; 548: lib_netstandard.dll.so => 172
	i32 u0x8873eb17, ; 549: th/Microsoft.Maui.Controls.resources => 328
	i32 u0x887ae6a1, ; 550: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 252
	i32 u0x88937130, ; 551: Xamarin.AndroidX.Window.WindowCore => 286
	i32 u0x88acefcd, ; 552: System.ServiceModel.Web.dll => 135
	i32 u0x88d8bfaa, ; 553: System.Net.Sockets => 79
	i32 u0x88ed6f27, ; 554: lib_SQLitePCLRaw.batteries_v2.dll.so => 205
	i32 u0x88ffe49e, ; 555: System.Net.Mail => 69
	i32 u0x896b7878, ; 556: System.Private.CoreLib.dll => 178
	i32 u0x8a068af2, ; 557: Xamarin.AndroidX.Annotation.dll => 215
	i32 u0x8a52059a, ; 558: System.Threading.Tasks.Parallel.dll => 148
	i32 u0x8b804dbf, ; 559: System.Runtime.InteropServices.RuntimeInformation.dll => 110
	i32 u0x8bbaa2cd, ; 560: System.ValueTuple => 156
	i32 u0x8c20c628, ; 561: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 308
	i32 u0x8c20f140, ; 562: lib_System.Console.dll.so => 21
	i32 u0x8c40e0db, ; 563: System.Net.Primitives => 73
	i32 u0x8d19e4a2, ; 564: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 247
	i32 u0x8d24e767, ; 565: System.Xml.ReaderWriter.dll => 161
	i32 u0x8d3fac99, ; 566: tr/Microsoft.Maui.Controls.resources => 329
	i32 u0x8d52b2e2, ; 567: Microsoft.Extensions.Configuration => 187
	i32 u0x8d52d3de, ; 568: lib_System.Threading.Tasks.dll.so => 149
	i32 u0x8dc6dbce, ; 569: System.Security.Cryptography.Csp.dll => 125
	i32 u0x8dcb0101, ; 570: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 263
	i32 u0x8e02310f, ; 571: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 301
	i32 u0x8e114655, ; 572: System.Security.Principal.Windows.dll => 131
	i32 u0x8e4e8441, ; 573: Xamarin.AndroidX.Window.WindowCore.Jvm.dll => 287
	i32 u0x8f24faee, ; 574: System.Web.HttpUtility => 157
	i32 u0x8f41c524, ; 575: Xamarin.AndroidX.Emoji2.dll => 239
	i32 u0x8f4e087a, ; 576: lib_System.Web.dll.so => 158
	i32 u0x8f8c64e2, ; 577: lib_System.Private.Xml.dll.so => 92
	i32 u0x8fa56e96, ; 578: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 336
	i32 u0x903eb247, ; 579: lib_Xamarin.AndroidX.Window.WindowCore.dll.so => 286
	i32 u0x905355ed, ; 580: System.Threading.Tasks.Dataflow => 146
	i32 u0x905caa9d, ; 581: nl/Microsoft.Maui.Controls.resources => 320
	i32 u0x906d466b, ; 582: Xamarin.AndroidX.Collection.Ktx.dll => 226
	i32 u0x90e50509, ; 583: lib_System.Reflection.Primitives.dll.so => 99
	i32 u0x911615a7, ; 584: lib_Xamarin.AndroidX.Fragment.dll.so => 242
	i32 u0x912896e5, ; 585: System.Console.dll => 21
	i32 u0x9130f5e7, ; 586: System.ComponentModel.DataAnnotations.dll => 15
	i32 u0x91abdf3a, ; 587: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 275
	i32 u0x924edee6, ; 588: System.Text.Encoding.dll => 139
	i32 u0x928c75ca, ; 589: System.Net.Sockets.dll => 79
	i32 u0x92916334, ; 590: System.Linq.Parallel.dll => 62
	i32 u0x92f11675, ; 591: SQLitePCLRaw.batteries_v2.dll => 205
	i32 u0x92f50938, ; 592: Xamarin.AndroidX.ConstraintLayout.Core.dll => 229
	i32 u0x93554fdc, ; 593: netstandard.dll => 172
	i32 u0x93634cc0, ; 594: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 249
	i32 u0x93918882, ; 595: Java.Interop.dll => 173
	i32 u0x93dba8a1, ; 596: Microsoft.Maui.Controls => 200
	i32 u0x940d5c2f, ; 597: System.ComponentModel.EventBasedAsync => 16
	i32 u0x94147f61, ; 598: System.Net.ServicePoint => 78
	i32 u0x9438d78e, ; 599: lib_System.Text.Json.dll.so => 141
	i32 u0x9469ba86, ; 600: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 251
	i32 u0x94798bc5, ; 601: System.AppContext.dll => 7
	i32 u0x94a1db18, ; 602: lib-id-Microsoft.Maui.Controls.resources.dll.so => 314
	i32 u0x94fad8e5, ; 603: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 214
	i32 u0x95178668, ; 604: System.Data.DataSetExtensions => 24
	i32 u0x955cf248, ; 605: Xamarin.AndroidX.Lifecycle.Runtime.dll => 251
	i32 u0x9593ae7f, ; 606: lib_Xamarin.AndroidX.SavedState.dll.so => 270
	i32 u0x963ac2da, ; 607: sk/Microsoft.Maui.Controls.resources => 326
	i32 u0x9659e17c, ; 608: Xamarin.Android.Glide.dll => 209
	i32 u0x96bea474, ; 609: lib_Microsoft.Maui.Controls.Xaml.dll.so => 201
	i32 u0x974b89a2, ; 610: System.Reflection.Emit.Lightweight.dll => 95
	i32 u0x97c7356f, ; 611: lib_Microsoft.EntityFrameworkCore.Sqlite.dll.so => 184
	i32 u0x98ba5a04, ; 612: Microsoft.CSharp => 2
	i32 u0x9930ee42, ; 613: System.Text.Encodings.Web => 140
	i32 u0x999dcf0d, ; 614: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 254
	i32 u0x99e2e424, ; 615: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 253
	i32 u0x99e370f2, ; 616: Xamarin.AndroidX.VectorDrawable.dll => 280
	i32 u0x9a1756ac, ; 617: System.Text.Encoding.Extensions.dll => 138
	i32 u0x9a20430d, ; 618: System.Net.Ping => 72
	i32 u0x9a5a3337, ; 619: System.Threading.ThreadPool => 151
	i32 u0x9a83ffe1, ; 620: Microsoft.Extensions.FileProviders.Abstractions => 193
	i32 u0x9b24ab96, ; 621: lib_System.Runtime.Serialization.Primitives.dll.so => 117
	i32 u0x9b500441, ; 622: Xamarin.KotlinX.Coroutines.Core.Jvm => 298
	i32 u0x9b5e5b1c, ; 623: lib_System.Diagnostics.Contracts.dll.so => 26
	i32 u0x9be14c08, ; 624: Xamarin.AndroidX.Fragment.Ktx => 243
	i32 u0x9bf052c1, ; 625: Microsoft.Extensions.Logging.Debug.dll => 197
	i32 u0x9bfe3a41, ; 626: System.Private.Xml.dll => 92
	i32 u0x9c165ff9, ; 627: System.Reflection.TypeExtensions.dll => 100
	i32 u0x9c375496, ; 628: Xamarin.AndroidX.CursorAdapter.dll => 234
	i32 u0x9c70e6c9, ; 629: Xamarin.AndroidX.DynamicAnimation => 238
	i32 u0x9c96ac4c, ; 630: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 266
	i32 u0x9c97ad4a, ; 631: System.Diagnostics.TextWriterTraceListener.dll => 32
	i32 u0x9cc03a58, ; 632: System.IO.Compression.ZipFile.dll => 46
	i32 u0x9cd341b2, ; 633: lib_System.Threading.Tasks.Parallel.dll.so => 148
	i32 u0x9cf12c56, ; 634: Xamarin.AndroidX.Lifecycle.LiveData => 247
	i32 u0x9d099d86, ; 635: Microsoft.EntityFrameworkCore.Relational.dll => 183
	i32 u0x9e25d8eb, ; 636: lib_Microsoft.EntityFrameworkCore.Relational.dll.so => 183
	i32 u0x9e78dac1, ; 637: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 258
	i32 u0x9ec022c0, ; 638: Xamarin.Android.Glide.DiskLruCache => 211
	i32 u0x9ec4cf01, ; 639: System.Runtime.Loader => 113
	i32 u0x9ecf752a, ; 640: System.Xml.XDocument.dll => 163
	i32 u0x9ee22cc0, ; 641: System.Drawing.Primitives => 36
	i32 u0x9f3b757e, ; 642: Xamarin.KotlinX.Coroutines.Core => 297
	i32 u0x9f7ea921, ; 643: lib_System.Runtime.InteropServices.dll.so => 111
	i32 u0x9f8c6f40, ; 644: System.Data.Common.dll => 23
	i32 u0xa026a50c, ; 645: System.Runtime.Serialization.Xml.dll => 118
	i32 u0xa090e36a, ; 646: System.IO.dll => 59
	i32 u0xa0fb56af, ; 647: lib_System.Text.RegularExpressions.dll.so => 142
	i32 u0xa0ff7514, ; 648: Xamarin.AndroidX.Tracing.Tracing => 277
	i32 u0xa1d8b647, ; 649: System.Threading.Tasks.dll => 149
	i32 u0xa1fd7d9f, ; 650: System.Security.Claims => 122
	i32 u0xa21f5a1f, ; 651: System.Security.Cryptography.Cng.dll => 124
	i32 u0xa25c90e5, ; 652: lib_Xamarin.AndroidX.Core.dll.so => 231
	i32 u0xa262a30f, ; 653: System.Runtime.Numerics.dll => 114
	i32 u0xa2ce8457, ; 654: lib-es-Microsoft.Maui.Controls.resources.dll.so => 307
	i32 u0xa2e0939b, ; 655: Xamarin.AndroidX.Activity => 213
	i32 u0xa30769e5, ; 656: System.Threading.Channels => 144
	i32 u0xa32eb6f0, ; 657: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 219
	i32 u0xa35f8f92, ; 658: System.IO.Pipes.AccessControl => 56
	i32 u0xa3c818c7, ; 659: lib_System.Net.WebSockets.Client.dll.so => 83
	i32 u0xa3cc7fa7, ; 660: System.Runtime.InteropServices.JavaScript => 109
	i32 u0xa3de87ea, ; 661: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android => 259
	i32 u0xa4672f3b, ; 662: Microsoft.Maui.Controls.Xaml => 201
	i32 u0xa493aa02, ; 663: lib_System.Collections.Concurrent.dll.so => 9
	i32 u0xa4caf7a7, ; 664: Microsoft.Maui.dll => 202
	i32 u0xa4d4aaf8, ; 665: lib_System.Security.Cryptography.Cng.dll.so => 124
	i32 u0xa4db22c6, ; 666: System.Text.Encoding.CodePages.dll => 137
	i32 u0xa4e79dfd, ; 667: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 256
	i32 u0xa522693c, ; 668: Xamarin.Jetbrains.Annotations.dll => 293
	i32 u0xa52ac270, ; 669: lib_Xamarin.AndroidX.Window.dll.so => 285
	i32 u0xa553c739, ; 670: lib_System.ValueTuple.dll.so => 156
	i32 u0xa5a0a402, ; 671: Xamarin.AndroidX.ViewPager.dll => 283
	i32 u0xa5b3182d, ; 672: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 269
	i32 u0xa5b67c07, ; 673: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 246
	i32 u0xa5c5753c, ; 674: lib_System.Collections.Immutable.dll.so => 10
	i32 u0xa5ea80d9, ; 675: lib_Xamarin.Android.Glide.Annotations.dll.so => 210
	i32 u0xa6133c7f, ; 676: lib_System.IO.FileSystem.DriveInfo.dll.so => 49
	i32 u0xa630ecdd, ; 677: Xamarin.AndroidX.Fragment.Ktx.dll => 243
	i32 u0xa668c988, ; 678: lib_System.Net.NameResolution.dll.so => 70
	i32 u0xa68bc8b3, ; 679: lib_Xamarin.AndroidX.Tracing.Tracing.Android.dll.so => 278
	i32 u0xa7008e0b, ; 680: Microsoft.Maui.Graphics => 204
	i32 u0xa7042ae3, ; 681: uk/Microsoft.Maui.Controls.resources => 330
	i32 u0xa715dd7e, ; 682: System.Xml.XPath.XDocument.dll => 164
	i32 u0xa741ef0b, ; 683: es/Microsoft.Maui.Controls.resources.dll => 307
	i32 u0xa744f665, ; 684: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 264
	i32 u0xa78103bc, ; 685: Xamarin.AndroidX.CoordinatorLayout.dll => 230
	i32 u0xa8032c67, ; 686: lib_Microsoft.Win32.Registry.dll.so => 6
	i32 u0xa80db4e1, ; 687: System.Xml.dll => 168
	i32 u0xa81b119f, ; 688: lib_System.Security.Cryptography.dll.so => 130
	i32 u0xa8282c09, ; 689: System.ServiceProcess.dll => 136
	i32 u0xa8298928, ; 690: Xamarin.AndroidX.ResourceInspection.Annotation => 269
	i32 u0xa85a7b6c, ; 691: System.Xml.XmlDocument => 166
	i32 u0xa8c61dcb, ; 692: nl/Microsoft.Maui.Controls.resources.dll => 320
	i32 u0xa9366b55, ; 693: Xamarin.AndroidX.Tracing.Tracing.Android.dll => 278
	i32 u0xa9379a4f, ; 694: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 257
	i32 u0xa9bdd233, ; 695: Microsoft.EntityFrameworkCore.Relational => 183
	i32 u0xa9d96f9b, ; 696: System.Threading.Overlapped.dll => 145
	i32 u0xaa107fc4, ; 697: Xamarin.AndroidX.ViewPager => 283
	i32 u0xaa2b531f, ; 698: lib_System.Globalization.dll.so => 43
	i32 u0xaa36a797, ; 699: Xamarin.AndroidX.Transition => 279
	i32 u0xaa4e51ff, ; 700: el/Microsoft.Maui.Controls.resources => 306
	i32 u0xaa88e550, ; 701: Mono.Android.Export.dll => 174
	i32 u0xaa8a4878, ; 702: Microsoft.Maui.Essentials => 203
	i32 u0xab123e9a, ; 703: Xamarin.AndroidX.Activity.Ktx.dll => 214
	i32 u0xab5f85c3, ; 704: Jsr305Binding.dll => 289
	i32 u0xab606289, ; 705: System.Globalization.Calendars.dll => 41
	i32 u0xabbc23e8, ; 706: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 300
	i32 u0xabdea79a, ; 707: ru/Microsoft.Maui.Controls.resources => 325
	i32 u0xabf58099, ; 708: Xamarin.AndroidX.ExifInterface => 241
	i32 u0xac1dd496, ; 709: System.Net.dll => 85
	i32 u0xacd6baa9, ; 710: System.IO.UnmanagedMemoryStream => 58
	i32 u0xace3f9b4, ; 711: System.Dynamic.Runtime.dll => 38
	i32 u0xace7ba82, ; 712: lib_System.Security.Principal.Windows.dll.so => 131
	i32 u0xacf080de, ; 713: System.Reflection => 101
	i32 u0xacf097ce, ; 714: System.Threading.AccessControl => 143
	i32 u0xad2a79b6, ; 715: mscorlib.dll => 171
	i32 u0xad6f1e8a, ; 716: System.Private.CoreLib => 178
	i32 u0xad90894d, ; 717: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 299
	i32 u0xaddb6d38, ; 718: Xamarin.AndroidX.ViewPager2.dll => 284
	i32 u0xae037813, ; 719: System.Numerics.Vectors.dll => 86
	i32 u0xae1ce33f, ; 720: Xamarin.AndroidX.Annotation.Experimental.dll => 216
	i32 u0xaeb2d8a5, ; 721: lib_Microsoft.Extensions.Options.dll.so => 198
	i32 u0xaf06273c, ; 722: System.Resources.Reader => 102
	i32 u0xaf3a6b91, ; 723: lib_System.Diagnostics.Debug.dll.so => 27
	i32 u0xaf4af872, ; 724: System.Diagnostics.StackTrace.dll => 31
	i32 u0xaf624531, ; 725: System.Xml.XPath.XDocument => 164
	i32 u0xaf8b1081, ; 726: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 272
	i32 u0xb0682092, ; 727: System.ComponentModel.dll => 19
	i32 u0xb0ed41f3, ; 728: System.Security.Principal.Windows => 131
	i32 u0xb1182a36, ; 729: lib_Xamarin.AndroidX.Navigation.Runtime.Android.dll.so => 265
	i32 u0xb128f886, ; 730: System.Security.Cryptography.Algorithms.dll => 123
	i32 u0xb18af942, ; 731: Xamarin.AndroidX.DrawerLayout => 237
	i32 u0xb1a434a2, ; 732: lib_System.Xml.Linq.dll.so => 160
	i32 u0xb1a7d210, ; 733: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 254
	i32 u0xb21220a3, ; 734: Xamarin.AndroidX.Security.SecurityCrypto => 273
	i32 u0xb223fa8c, ; 735: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 303
	i32 u0xb28cab85, ; 736: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 211
	i32 u0xb294d40b, ; 737: lib_System.Net.Ping.dll.so => 72
	i32 u0xb2a03f9f, ; 738: Xamarin.AndroidX.Lifecycle.Process.dll => 250
	i32 u0xb3d3821c, ; 739: Xamarin.AndroidX.Startup.StartupRuntime => 275
	i32 u0xb434b64b, ; 740: WindowsBase.dll => 170
	i32 u0xb514b305, ; 741: _Microsoft.Android.Resource.Designer.dll => 339
	i32 u0xb58d85d9, ; 742: lib_System.Runtime.Handles.dll.so => 108
	i32 u0xb62a9ccb, ; 743: Xamarin.AndroidX.SavedState.SavedState.Ktx => 272
	i32 u0xb63fa9f0, ; 744: Xamarin.AndroidX.Navigation.Common => 261
	i32 u0xb6490b5e, ; 745: lib_Mono.Android.Export.dll.so => 174
	i32 u0xb65adef9, ; 746: Mono.Android.Runtime => 175
	i32 u0xb660be12, ; 747: System.ComponentModel.Primitives => 17
	i32 u0xb6a153b2, ; 748: lib_Xamarin.AndroidX.ViewPager2.dll.so => 284
	i32 u0xb6f2c4c8, ; 749: Microsoft.Extensions.Caching.Abstractions.dll => 185
	i32 u0xb70c6fb4, ; 750: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 280
	i32 u0xb755818f, ; 751: System.Threading.Tasks => 149
	i32 u0xb76be845, ; 752: hu/Microsoft.Maui.Controls.resources.dll => 313
	i32 u0xb7e7c341, ; 753: lib_System.Globalization.Calendars.dll.so => 41
	i32 u0xb838e2b0, ; 754: System.Security.Cryptography.X509Certificates.dll => 129
	i32 u0xb8c22b7f, ; 755: System.Security.Claims.dll => 122
	i32 u0xb8fd311b, ; 756: System.Formats.Asn1 => 39
	i32 u0xb979e222, ; 757: System.Runtime.Serialization => 119
	i32 u0xba0dbf1c, ; 758: System.IO.FileSystem.AccessControl.dll => 48
	i32 u0xba4127cb, ; 759: System.Threading.Tasks.Extensions => 147
	i32 u0xbaa352f6, ; 760: busines-treker => 1
	i32 u0xbaa520e7, ; 761: lib_System.ObjectModel.dll.so => 88
	i32 u0xbab301d1, ; 762: System.Security.AccessControl => 121
	i32 u0xbb95ee37, ; 763: System.Diagnostics.Tracing.dll => 35
	i32 u0xbba64c02, ; 764: GoogleGson.dll => 179
	i32 u0xbbd4e83f, ; 765: lib_Microsoft.EntityFrameworkCore.dll.so => 181
	i32 u0xbc4c6465, ; 766: System.Reflection.Primitives.dll => 99
	i32 u0xbc652da7, ; 767: System.IO.MemoryMappedFiles => 54
	i32 u0xbc98c93d, ; 768: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 225
	i32 u0xbcc610a0, ; 769: lib_System.Reflection.Metadata.dll.so => 98
	i32 u0xbd113355, ; 770: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 261
	i32 u0xbd78b0c8, ; 771: Xamarin.AndroidX.Navigation.Fragment.dll => 263
	i32 u0xbddce8a2, ; 772: lib_System.Security.Principal.dll.so => 132
	i32 u0xbe3f07c2, ; 773: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 105
	i32 u0xbe4755f4, ; 774: System.Security.SecureString => 133
	i32 u0xbe592c0c, ; 775: System.Web => 158
	i32 u0xbe7cb6c1, ; 776: Microsoft.Extensions.Caching.Abstractions => 185
	i32 u0xbefef58f, ; 777: System.Data.dll => 25
	i32 u0xbf506931, ; 778: System.Xml.XmlDocument.dll => 166
	i32 u0xbfc8f642, ; 779: Microsoft.VisualStudio.DesignTools.XamlTapContract => 338
	i32 u0xbff2e236, ; 780: System.Threading => 153
	i32 u0xc04c3c0a, ; 781: System.Runtime.Handles.dll => 108
	i32 u0xc095e070, ; 782: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 245
	i32 u0xc0d86591, ; 783: ru/busines-treker.resources.dll => 0
	i32 u0xc10b79a7, ; 784: Xamarin.AndroidX.Core.ViewTree => 233
	i32 u0xc1c6ebf4, ; 785: System.Reflection.DispatchProxy.dll => 93
	i32 u0xc217efb6, ; 786: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 229
	i32 u0xc2293e61, ; 787: Xamarin.AndroidX.SavedState.SavedState.Android.dll => 271
	i32 u0xc235e84d, ; 788: Xamarin.AndroidX.CardView => 223
	i32 u0xc2a37b91, ; 789: System.Linq.Queryable.dll => 63
	i32 u0xc2a993fa, ; 790: System.Threading.Tasks.Extensions.dll => 147
	i32 u0xc3428433, ; 791: lib_System.Reflection.Emit.ILGeneration.dll.so => 94
	i32 u0xc35f7fa4, ; 792: System.Resources.Writer.dll => 104
	i32 u0xc37f65ce, ; 793: Microsoft.Win32.Registry.dll => 6
	i32 u0xc3888e16, ; 794: System.ComponentModel.Annotations.dll => 14
	i32 u0xc3ba1d80, ; 795: lib_System.Security.Cryptography.Csp.dll.so => 125
	i32 u0xc4251ff9, ; 796: System.Security.Cryptography.Encoding => 126
	i32 u0xc4684d9e, ; 797: lib_System.Security.Cryptography.Algorithms.dll.so => 123
	i32 u0xc4a8494a, ; 798: System.Text.Encoding => 139
	i32 u0xc4e76306, ; 799: System.Diagnostics.FileVersionInfo => 29
	i32 u0xc591efe9, ; 800: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 188
	i32 u0xc5b097e4, ; 801: System.Net.Requests.dll => 75
	i32 u0xc5b776df, ; 802: Xamarin.AndroidX.CustomView.dll => 235
	i32 u0xc5b79d28, ; 803: System.Data => 25
	i32 u0xc69f3b41, ; 804: lib_System.Data.dll.so => 25
	i32 u0xc71af05d, ; 805: Xamarin.AndroidX.Arch.Core.Runtime => 221
	i32 u0xc76e512c, ; 806: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 267
	i32 u0xc774da4f, ; 807: Xamarin.AndroidX.Navigation.Runtime => 264
	i32 u0xc7a3b0f0, ; 808: lib_Xamarin.AndroidX.Transition.dll.so => 279
	i32 u0xc7b797d0, ; 809: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 232
	i32 u0xc821fc10, ; 810: lib_System.ComponentModel.dll.so => 19
	i32 u0xc82afec1, ; 811: System.Text.Json => 141
	i32 u0xc849ca45, ; 812: SQLitePCLRaw.core => 206
	i32 u0xc8693088, ; 813: Xamarin.AndroidX.Activity.Ktx => 214
	i32 u0xc86c06e3, ; 814: Xamarin.AndroidX.Core => 231
	i32 u0xc8a662e9, ; 815: Java.Interop => 173
	i32 u0xc8d10307, ; 816: lib_System.Diagnostics.TraceSource.dll.so => 34
	i32 u0xc9094c00, ; 817: Xamarin.AndroidX.Navigation.Runtime.Android => 265
	i32 u0xc92a6809, ; 818: Xamarin.AndroidX.RecyclerView => 268
	i32 u0xca5de1fa, ; 819: System.Runtime.CompilerServices.Unsafe.dll => 105
	i32 u0xcae37e41, ; 820: System.Security.Cryptography.OpenSsl.dll => 127
	i32 u0xcaf7bd4b, ; 821: Xamarin.AndroidX.CustomView.PoolingContainer => 236
	i32 u0xcb5af55c, ; 822: lib_System.Reflection.Emit.Lightweight.dll.so => 95
	i32 u0xcc5af6ee, ; 823: Microsoft.Extensions.DependencyInjection.dll => 189
	i32 u0xcc6479a0, ; 824: System.Xml => 168
	i32 u0xcc7d82b4, ; 825: netstandard => 172
	i32 u0xcd1dd0db, ; 826: Xamarin.AndroidX.DynamicAnimation.dll => 238
	i32 u0xcd5a809f, ; 827: System.Formats.Tar => 40
	i32 u0xcdd8cd54, ; 828: lib_Xamarin.AndroidX.Emoji2.dll.so => 239
	i32 u0xce3fa116, ; 829: lib_System.Diagnostics.Process.dll.so => 30
	i32 u0xce70fda2, ; 830: hr/Microsoft.Maui.Controls.resources.dll => 312
	i32 u0xcef19b37, ; 831: System.ComponentModel.TypeConverter.dll => 18
	i32 u0xcf3163e6, ; 832: Mono.Android => 176
	i32 u0xcf663a21, ; 833: ru/Microsoft.Maui.Controls.resources.dll => 325
	i32 u0xcfa20c36, ; 834: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 276
	i32 u0xcfbaacae, ; 835: System.Text.Json.dll => 141
	i32 u0xcfd0c798, ; 836: System.Transactions => 155
	i32 u0xd0418592, ; 837: Xamarin.AndroidX.Concurrent.Futures.dll => 227
	i32 u0xd128d608, ; 838: System.Xml.Linq => 160
	i32 u0xd1854eb4, ; 839: System.Security.dll => 134
	i32 u0xd2757232, ; 840: System.Configuration => 20
	i32 u0xd2ff69f1, ; 841: System.Net.HttpListener => 68
	i32 u0xd310c033, ; 842: lib_Xamarin.Jetbrains.Annotations.dll.so => 293
	i32 u0xd328ac54, ; 843: vi/Microsoft.Maui.Controls.resources => 331
	i32 u0xd4045e1b, ; 844: lib_System.dll.so => 169
	i32 u0xd404ddfe, ; 845: lib_System.Runtime.Intrinsics.dll.so => 112
	i32 u0xd432d20b, ; 846: System.Threading.Timer => 152
	i32 u0xd457e5c9, ; 847: lib_Microsoft.CSharp.dll.so => 2
	i32 u0xd47cb45a, ; 848: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 220
	i32 u0xd496c3c3, ; 849: lib_Xamarin.AndroidX.ExifInterface.dll.so => 241
	i32 u0xd4d2575b, ; 850: System.IO.FileSystem.AccessControl => 48
	i32 u0xd505225a, ; 851: lib_System.Xml.XPath.dll.so => 165
	i32 u0xd622b752, ; 852: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 324
	i32 u0xd664cdf2, ; 853: de/Microsoft.Maui.Controls.resources => 305
	i32 u0xd6665034, ; 854: Xamarin.Android.Glide.GifDecoder.dll => 212
	i32 u0xd67a52b3, ; 855: System.Net.WebSockets.Client => 83
	i32 u0xd715a361, ; 856: System.Linq.dll => 64
	i32 u0xd7f95f5a, ; 857: da/Microsoft.Maui.Controls.resources => 304
	i32 u0xd804d57a, ; 858: System.Runtime.InteropServices.RuntimeInformation => 110
	i32 u0xd889aee8, ; 859: lib_System.Threading.Channels.dll.so => 144
	i32 u0xd8950487, ; 860: Xamarin.AndroidX.Annotation.Experimental => 216
	i32 u0xd8bba49d, ; 861: lib_Xamarin.AndroidX.RecyclerView.dll.so => 268
	i32 u0xd8dbab5d, ; 862: System.IO.FileSystem.Primitives.dll => 50
	i32 u0xd90e5f5a, ; 863: Xamarin.AndroidX.Lifecycle.LiveData.Core => 248
	i32 u0xd92e86f1, ; 864: Xamarin.KotlinX.Serialization.Core.dll => 299
	i32 u0xd930cda0, ; 865: Xamarin.AndroidX.Navigation.Fragment => 263
	i32 u0xd943a729, ; 866: System.ComponentModel.DataAnnotations => 15
	i32 u0xd96cf6f7, ; 867: pt-BR/Microsoft.Maui.Controls.resources => 322
	i32 u0xd9f65f5e, ; 868: lib-el-Microsoft.Maui.Controls.resources.dll.so => 306
	i32 u0xd9fdda56, ; 869: Microsoft.Extensions.Configuration.Abstractions.dll => 188
	i32 u0xda2f27df, ; 870: System.Net.NetworkInformation => 71
	i32 u0xda4773dd, ; 871: he/Microsoft.Maui.Controls.resources => 310
	i32 u0xdabf74ac, ; 872: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 217
	i32 u0xdae8aa5e, ; 873: Mono.Android.dll => 176
	i32 u0xdb258bb2, ; 874: Microsoft.Maui.Controls.HotReload.Forms => 335
	i32 u0xdb7f7e5d, ; 875: Xamarin.AndroidX.Browser => 222
	i32 u0xdb9df1ce, ; 876: Xamarin.AndroidX.Concurrent.Futures => 227
	i32 u0xdbb50d93, ; 877: ms/Microsoft.Maui.Controls.resources => 318
	i32 u0xdc5370c5, ; 878: lib_System.Web.HttpUtility.dll.so => 157
	i32 u0xdc68940c, ; 879: zh-Hant/Microsoft.Maui.Controls.resources.dll => 334
	i32 u0xdc96bdf5, ; 880: System.Net.WebProxy.dll => 82
	i32 u0xdcefb51d, ; 881: Xamarin.AndroidX.Core.Core.Ktx.dll => 232
	i32 u0xdd864306, ; 882: System.Runtime.Intrinsics => 112
	i32 u0xdda814c6, ; 883: Xamarin.AndroidX.Annotation => 215
	i32 u0xde068c70, ; 884: Xamarin.AndroidX.Navigation.Common.dll => 261
	i32 u0xde7354ab, ; 885: System.Net.NameResolution => 70
	i32 u0xdecad304, ; 886: System.Net.Http.Json.dll => 66
	i32 u0xdf1b1ecd, ; 887: lib_System.ServiceProcess.dll.so => 136
	i32 u0xdf6f3870, ; 888: System.Diagnostics.DiagnosticSource => 28
	i32 u0xdf9a7f42, ; 889: System.Xml.XPath => 165
	i32 u0xdfca27bc, ; 890: SQLitePCLRaw.provider.e_sqlite3 => 208
	i32 u0xdfd65a5d, ; 891: lib_System.Diagnostics.Tracing.dll.so => 35
	i32 u0xe05b6245, ; 892: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 254
	i32 u0xe12f62fc, ; 893: lib_System.Threading.ThreadPool.dll.so => 151
	i32 u0xe13414bb, ; 894: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 313
	i32 u0xe1a41194, ; 895: lib_System.Xml.XDocument.dll.so => 163
	i32 u0xe1ae15d6, ; 896: Xamarin.AndroidX.Collection => 224
	i32 u0xe1eea3e4, ; 897: lib_System.IO.Compression.ZipFile.dll.so => 46
	i32 u0xe1f0a5d8, ; 898: lib_Xamarin.AndroidX.ViewPager.dll.so => 283
	i32 u0xe2098b0b, ; 899: System.Collections.NonGeneric => 11
	i32 u0xe250cda6, ; 900: lib_Microsoft.Extensions.Logging.dll.so => 195
	i32 u0xe2513246, ; 901: lib_System.Runtime.Numerics.dll.so => 114
	i32 u0xe2a3f2e8, ; 902: System.Collections.Specialized.dll => 12
	i32 u0xe34ee011, ; 903: lib_System.IO.Pipelines.dll.so => 55
	i32 u0xe3774f52, ; 904: lib_System.IO.MemoryMappedFiles.dll.so => 54
	i32 u0xe3a54a09, ; 905: System.Net.WebProxy => 82
	i32 u0xe3c7860c, ; 906: lib_System.Security.Claims.dll.so => 122
	i32 u0xe3df9d2b, ; 907: System.Security.Cryptography.dll => 130
	i32 u0xe4436460, ; 908: System.Numerics.dll => 87
	i32 u0xe4fab729, ; 909: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 190
	i32 u0xe52378b9, ; 910: System.Net.Mail.dll => 69
	i32 u0xe56ef253, ; 911: System.Runtime.InteropServices.dll => 111
	i32 u0xe625b819, ; 912: lib_Xamarin.AndroidX.CardView.dll.so => 223
	i32 u0xe6b14171, ; 913: System.Net.HttpListener.dll => 68
	i32 u0xe6ca3640, ; 914: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 226
	i32 u0xe6e179fa, ; 915: System.Security.Principal => 132
	i32 u0xe6e8f547, ; 916: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 192
	i32 u0xe6f98713, ; 917: System.Security.Cryptography.Encoding.dll => 126
	i32 u0xe797fcc1, ; 918: System.Net.WebHeaderCollection.dll => 81
	i32 u0xe79e77a6, ; 919: Xamarin.AndroidX.Transition.dll => 279
	i32 u0xe7b46f0d, ; 920: lib_Microsoft.Data.Sqlite.dll.so => 180
	i32 u0xe7c9e2bd, ; 921: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 267
	i32 u0xe7dc15ff, ; 922: zh-Hans/Microsoft.Maui.Controls.resources.dll => 333
	i32 u0xe839deed, ; 923: System.Collections.Concurrent.dll => 9
	i32 u0xe843daa0, ; 924: Xamarin.AndroidX.Core.dll => 231
	i32 u0xe89260c1, ; 925: Microsoft.VisualBasic.Core.dll => 3
	i32 u0xe90fdb70, ; 926: Xamarin.AndroidX.Collection.Jvm => 225
	i32 u0xe92ace5f, ; 927: lib_System.Linq.Parallel.dll.so => 62
	i32 u0xe97d0db9, ; 928: lib_System.IO.Hashing.dll.so => 177
	i32 u0xe99f7d24, ; 929: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 329
	i32 u0xe9b117cf, ; 930: lib_busines-treker.dll.so => 1
	i32 u0xe9b2d35e, ; 931: System.IO.Compression.FileSystem.dll => 45
	i32 u0xe9b630ed, ; 932: Xamarin.AndroidX.VersionedParcelable.dll => 282
	i32 u0xea0092d6, ; 933: lib_System.Threading.Tasks.Extensions.dll.so => 147
	i32 u0xea213423, ; 934: System.Xml.ReaderWriter => 161
	i32 u0xea4780ec, ; 935: System.Security.Principal.dll => 132
	i32 u0xea4fb52e, ; 936: Xamarin.AndroidX.Navigation.UI => 266
	i32 u0xeab81858, ; 937: lib_Microsoft.Maui.Essentials.dll.so => 203
	i32 u0xeaf244cc, ; 938: lib_System.IO.Pipes.AccessControl.dll.so => 56
	i32 u0xeaf598f6, ; 939: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 196
	i32 u0xeb2ecede, ; 940: System.Data.DataSetExtensions.dll => 24
	i32 u0xeb5560c9, ; 941: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 110
	i32 u0xebac8bfe, ; 942: System.Text.Encoding.CodePages => 137
	i32 u0xebb0254b, ; 943: lib_System.Net.NetworkInformation.dll.so => 71
	i32 u0xebc66336, ; 944: Xamarin.AndroidX.AppCompat.dll => 218
	i32 u0xec05582d, ; 945: Xamarin.AndroidX.Lifecycle.Process => 250
	i32 u0xed1090ae, ; 946: lib_System.Net.Primitives.dll.so => 73
	i32 u0xed409aea, ; 947: th/Microsoft.Maui.Controls.resources.dll => 328
	i32 u0xed96d41f, ; 948: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 230
	i32 u0xedadd6e2, ; 949: he/Microsoft.Maui.Controls.resources.dll => 310
	i32 u0xedf6669b, ; 950: lib_System.Drawing.dll.so => 37
	i32 u0xee8c14bb, ; 951: lib_Microsoft.Extensions.DependencyModel.dll.so => 191
	i32 u0xee9f991d, ; 952: System.Diagnostics.Process.dll => 30
	i32 u0xeeefb9c8, ; 953: lib_System.Dynamic.Runtime.dll.so => 38
	i32 u0xef5e8475, ; 954: Xamarin.AndroidX.Annotation.Jvm.dll => 217
	i32 u0xefd01a89, ; 955: System.IO.Pipelines => 55
	i32 u0xeff49a63, ; 956: System.Memory => 65
	i32 u0xeff49c4a, ; 957: lib_System.Text.Encoding.Extensions.dll.so => 138
	i32 u0xf09122fc, ; 958: lib_System.IO.IsolatedStorage.dll.so => 53
	i32 u0xf0ba55d9, ; 959: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 335
	i32 u0xf121f953, ; 960: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 248
	i32 u0xf1304331, ; 961: Microsoft.Maui.Controls.Xaml.dll => 201
	i32 u0xf15cb56d, ; 962: Xamarin.KotlinX.Serialization.Core => 299
	i32 u0xf1676aaa, ; 963: lib-da-Microsoft.Maui.Controls.resources.dll.so => 304
	i32 u0xf1ad867b, ; 964: System.Reflection.Emit.ILGeneration => 94
	i32 u0xf27f60d1, ; 965: System.Private.Xml.Linq.dll => 91
	i32 u0xf29c5384, ; 966: id/Microsoft.Maui.Controls.resources => 314
	i32 u0xf2ce3c98, ; 967: System.Threading.dll => 153
	i32 u0xf2dd3fc4, ; 968: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 316
	i32 u0xf3201983, ; 969: Microsoft.Extensions.Hosting.Abstractions.dll => 194
	i32 u0xf323e0a6, ; 970: lib_Xamarin.Kotlin.StdLib.dll.so => 295
	i32 u0xf33c42ef, ; 971: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 281
	i32 u0xf3a16066, ; 972: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 255
	i32 u0xf40add04, ; 973: Microsoft.Maui.Essentials.dll => 203
	i32 u0xf42589bc, ; 974: lib_System.Security.Cryptography.X509Certificates.dll.so => 129
	i32 u0xf45985cf, ; 975: System.Drawing.dll => 37
	i32 u0xf462c30d, ; 976: System.Private.Uri => 90
	i32 u0xf479582c, ; 977: Xamarin.AndroidX.Emoji2 => 239
	i32 u0xf47b0a29, ; 978: lib_System.Configuration.dll.so => 20
	i32 u0xf47d24ac, ; 979: Microsoft.Extensions.Caching.Memory => 186
	i32 u0xf48143e5, ; 980: pt/Microsoft.Maui.Controls.resources.dll => 323
	i32 u0xf5185c24, ; 981: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 323
	i32 u0xf53cb11d, ; 982: lib_System.Net.Security.dll.so => 76
	i32 u0xf554c79b, ; 983: lib_System.Linq.AsyncEnumerable.dll.so => 60
	i32 u0xf5861a4f, ; 984: pl/Microsoft.Maui.Controls.resources => 321
	i32 u0xf5e94e90, ; 985: ms/Microsoft.Maui.Controls.resources.dll => 318
	i32 u0xf5f4f1f0, ; 986: Microsoft.Extensions.DependencyInjection => 189
	i32 u0xf5fdf056, ; 987: lib_Microsoft.Extensions.DependencyInjection.dll.so => 189
	i32 u0xf60736e2, ; 988: System.IO.FileSystem.Watcher => 51
	i32 u0xf6318da0, ; 989: System.AppContext => 7
	i32 u0xf73be021, ; 990: System.Reflection.Emit.ILGeneration.dll => 94
	i32 u0xf76edc75, ; 991: System.Core => 22
	i32 u0xf7e95c85, ; 992: System.Xml.XmlSerializer => 167
	i32 u0xf807b767, ; 993: System.Reflection.TypeExtensions => 100
	i32 u0xf83dd773, ; 994: System.IO.FileSystem.Watcher.dll => 51
	i32 u0xf8420da3, ; 995: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 337
	i32 u0xf86129d4, ; 996: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 327
	i32 u0xf93ba7d4, ; 997: System.Runtime.Serialization.Primitives => 117
	i32 u0xf94a8f86, ; 998: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 258
	i32 u0xf951b10e, ; 999: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 336
	i32 u0xf97c5a99, ; 1000: System.Security => 134
	i32 u0xf9be026d, ; 1001: lib_SQLitePCLRaw.core.dll.so => 206
	i32 u0xfa21f6af, ; 1002: System.Net.WebClient.dll => 80
	i32 u0xfa50891f, ; 1003: lib_System.Linq.dll.so => 64
	i32 u0xfa6ae1e2, ; 1004: lib_Xamarin.AndroidX.Annotation.dll.so => 215
	i32 u0xfac98279, ; 1005: Xamarin.AndroidX.SavedState.SavedState.Android => 271
	i32 u0xfb0af295, ; 1006: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 332
	i32 u0xfb1dad5d, ; 1007: System.Diagnostics.DiagnosticSource.dll => 28
	i32 u0xfbc4b67c, ; 1008: lib_System.IO.Compression.Brotli.dll.so => 44
	i32 u0xfc5f7d36, ; 1009: pt/Microsoft.Maui.Controls.resources => 323
	i32 u0xfdaee526, ; 1010: Xamarin.AndroidX.Core.Core.Ktx => 232
	i32 u0xfdd1b433, ; 1011: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 257
	i32 u0xfdf2741f, ; 1012: System.Buffers => 8
	i32 u0xfe42d509, ; 1013: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 273
	i32 u0xfea12dee, ; 1014: Microsoft.Maui.Controls.dll => 200
	i32 u0xfecef6ea, ; 1015: System.Runtime.Numerics => 114
	i32 u0xff6b9aa3, ; 1016: lib_Xamarin.AndroidX.SavedState.SavedState.Android.dll.so => 271
	i32 u0xff912ee3, ; 1017: lib_System.Xml.Serialization.dll.so => 162
	i32 u0xffd4917f, ; 1018: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 258
	i32 u0xfffce3e8 ; 1019: Xamarin.AndroidX.ExifInterface.dll => 241
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1020 x i32] [
	i32 71, i32 75, i32 70, i32 260, i32 167, i32 112, i32 190, i32 191,
	i32 60, i32 251, i32 292, i32 49, i32 84, i32 330, i32 150, i32 202,
	i32 302, i32 31, i32 128, i32 204, i32 106, i32 11, i32 192, i32 274,
	i32 77, i32 63, i32 265, i32 332, i32 292, i32 69, i32 111, i32 262,
	i32 274, i32 144, i32 32, i32 81, i32 128, i32 14, i32 227, i32 224,
	i32 213, i32 136, i32 276, i32 277, i32 331, i32 288, i32 156, i32 164,
	i32 66, i32 321, i32 331, i32 78, i32 332, i32 19, i32 338, i32 222,
	i32 143, i32 45, i32 27, i32 197, i32 2, i32 233, i32 235, i32 62,
	i32 43, i32 143, i32 319, i32 95, i32 133, i32 209, i32 228, i32 152,
	i32 247, i32 244, i32 303, i32 24, i32 326, i32 56, i32 72, i32 213,
	i32 87, i32 290, i32 120, i32 0, i32 316, i32 245, i32 207, i32 14,
	i32 315, i32 303, i32 135, i32 187, i32 113, i32 57, i32 336, i32 154,
	i32 78, i32 150, i32 177, i32 65, i32 151, i32 269, i32 339, i32 170,
	i32 252, i32 126, i32 327, i32 229, i32 13, i32 242, i32 129, i32 157,
	i32 253, i32 175, i32 117, i32 182, i32 171, i32 173, i32 169, i32 244,
	i32 90, i32 274, i32 119, i32 88, i32 314, i32 308, i32 199, i32 128,
	i32 7, i32 155, i32 311, i32 63, i32 195, i32 52, i32 107, i32 118,
	i32 41, i32 294, i32 289, i32 233, i32 124, i32 322, i32 179, i32 135,
	i32 12, i32 53, i32 22, i32 45, i32 79, i32 123, i32 252, i32 235,
	i32 240, i32 236, i32 1, i32 97, i32 305, i32 85, i32 140, i32 282,
	i32 23, i32 220, i32 9, i32 52, i32 322, i32 76, i32 302, i32 160,
	i32 296, i32 234, i32 159, i32 168, i32 96, i32 293, i32 46, i32 317,
	i32 305, i32 113, i32 134, i32 133, i32 205, i32 26, i32 210, i32 166,
	i32 75, i32 57, i32 47, i32 101, i32 198, i32 93, i32 236, i32 23,
	i32 249, i32 150, i32 90, i32 44, i32 165, i32 74, i32 237, i32 301,
	i32 4, i32 43, i32 66, i32 177, i32 57, i32 207, i32 291, i32 17,
	i32 59, i32 54, i32 155, i32 42, i32 329, i32 292, i32 15, i32 256,
	i32 240, i32 109, i32 246, i32 287, i32 171, i32 290, i32 245, i32 35,
	i32 163, i32 296, i32 89, i32 33, i32 238, i32 13, i32 333, i32 146,
	i32 52, i32 307, i32 58, i32 270, i32 37, i32 190, i32 304, i32 291,
	i32 218, i32 36, i32 244, i32 61, i32 100, i32 192, i32 255, i32 13,
	i32 102, i32 199, i32 250, i32 179, i32 18, i32 295, i32 169, i32 194,
	i32 96, i32 140, i32 212, i32 253, i32 197, i32 328, i32 127, i32 18,
	i32 82, i32 86, i32 285, i32 67, i32 89, i32 182, i32 77, i32 159,
	i32 158, i32 193, i32 281, i32 264, i32 308, i32 145, i32 182, i32 104,
	i32 321, i32 220, i32 186, i32 30, i32 53, i32 224, i32 152, i32 319,
	i32 194, i32 311, i32 225, i32 294, i32 6, i32 204, i32 300, i32 275,
	i32 297, i32 91, i32 280, i32 118, i32 226, i32 296, i32 217, i32 186,
	i32 206, i32 237, i32 267, i32 89, i32 262, i32 262, i32 285, i32 64,
	i32 116, i32 312, i32 302, i32 259, i32 59, i32 270, i32 103, i32 178,
	i32 51, i32 20, i32 230, i32 259, i32 115, i32 105, i32 33, i32 4,
	i32 106, i32 87, i32 108, i32 290, i32 246, i32 74, i32 5, i32 256,
	i32 39, i32 33, i32 58, i32 107, i32 76, i32 10, i32 127, i32 47,
	i32 219, i32 199, i32 10, i32 44, i32 5, i32 272, i32 180, i32 311,
	i32 36, i32 306, i32 32, i32 222, i32 142, i32 96, i32 97, i32 326,
	i32 309, i32 278, i32 50, i32 146, i32 116, i32 300, i32 145, i32 3,
	i32 327, i32 17, i32 334, i32 119, i32 291, i32 162, i32 335, i32 80,
	i32 185, i32 83, i32 40, i32 260, i32 38, i32 284, i32 221, i32 240,
	i32 234, i32 67, i32 142, i32 16, i32 47, i32 161, i32 170, i32 120,
	i32 298, i32 277, i32 288, i32 228, i32 49, i32 73, i32 84, i32 294,
	i32 130, i32 180, i32 181, i32 98, i32 125, i32 154, i32 27, i32 207,
	i32 121, i32 249, i32 101, i32 29, i32 223, i32 106, i32 324, i32 154,
	i32 55, i32 174, i32 5, i32 102, i32 39, i32 334, i32 34, i32 81,
	i32 97, i32 276, i32 195, i32 109, i32 287, i32 22, i32 0, i32 42,
	i32 218, i32 175, i32 107, i32 242, i32 153, i32 309, i32 193, i32 260,
	i32 319, i32 295, i32 288, i32 297, i32 266, i32 3, i32 313, i32 138,
	i32 115, i32 337, i32 282, i32 196, i32 330, i32 210, i32 61, i32 99,
	i32 228, i32 40, i32 221, i32 337, i32 184, i32 333, i32 26, i32 98,
	i32 93, i32 103, i32 11, i32 219, i32 176, i32 208, i32 91, i32 50,
	i32 65, i32 80, i32 104, i32 316, i32 273, i32 187, i32 48, i32 77,
	i32 212, i32 8, i32 312, i32 184, i32 85, i32 255, i32 301, i32 216,
	i32 209, i32 310, i32 315, i32 92, i32 248, i32 159, i32 339, i32 60,
	i32 243, i32 34, i32 116, i32 120, i32 68, i32 86, i32 208, i32 139,
	i32 338, i32 21, i32 12, i32 167, i32 137, i32 317, i32 4, i32 29,
	i32 317, i32 318, i32 289, i32 202, i32 115, i32 324, i32 103, i32 28,
	i32 16, i32 198, i32 8, i32 196, i32 88, i32 61, i32 74, i32 191,
	i32 31, i32 298, i32 67, i32 281, i32 148, i32 84, i32 325, i32 162,
	i32 181, i32 286, i32 42, i32 257, i32 200, i32 121, i32 188, i32 211,
	i32 309, i32 315, i32 268, i32 320, i32 172, i32 328, i32 252, i32 286,
	i32 135, i32 79, i32 205, i32 69, i32 178, i32 215, i32 148, i32 110,
	i32 156, i32 308, i32 21, i32 73, i32 247, i32 161, i32 329, i32 187,
	i32 149, i32 125, i32 263, i32 301, i32 131, i32 287, i32 157, i32 239,
	i32 158, i32 92, i32 336, i32 286, i32 146, i32 320, i32 226, i32 99,
	i32 242, i32 21, i32 15, i32 275, i32 139, i32 79, i32 62, i32 205,
	i32 229, i32 172, i32 249, i32 173, i32 200, i32 16, i32 78, i32 141,
	i32 251, i32 7, i32 314, i32 214, i32 24, i32 251, i32 270, i32 326,
	i32 209, i32 201, i32 95, i32 184, i32 2, i32 140, i32 254, i32 253,
	i32 280, i32 138, i32 72, i32 151, i32 193, i32 117, i32 298, i32 26,
	i32 243, i32 197, i32 92, i32 100, i32 234, i32 238, i32 266, i32 32,
	i32 46, i32 148, i32 247, i32 183, i32 183, i32 258, i32 211, i32 113,
	i32 163, i32 36, i32 297, i32 111, i32 23, i32 118, i32 59, i32 142,
	i32 277, i32 149, i32 122, i32 124, i32 231, i32 114, i32 307, i32 213,
	i32 144, i32 219, i32 56, i32 83, i32 109, i32 259, i32 201, i32 9,
	i32 202, i32 124, i32 137, i32 256, i32 293, i32 285, i32 156, i32 283,
	i32 269, i32 246, i32 10, i32 210, i32 49, i32 243, i32 70, i32 278,
	i32 204, i32 330, i32 164, i32 307, i32 264, i32 230, i32 6, i32 168,
	i32 130, i32 136, i32 269, i32 166, i32 320, i32 278, i32 257, i32 183,
	i32 145, i32 283, i32 43, i32 279, i32 306, i32 174, i32 203, i32 214,
	i32 289, i32 41, i32 300, i32 325, i32 241, i32 85, i32 58, i32 38,
	i32 131, i32 101, i32 143, i32 171, i32 178, i32 299, i32 284, i32 86,
	i32 216, i32 198, i32 102, i32 27, i32 31, i32 164, i32 272, i32 19,
	i32 131, i32 265, i32 123, i32 237, i32 160, i32 254, i32 273, i32 303,
	i32 211, i32 72, i32 250, i32 275, i32 170, i32 339, i32 108, i32 272,
	i32 261, i32 174, i32 175, i32 17, i32 284, i32 185, i32 280, i32 149,
	i32 313, i32 41, i32 129, i32 122, i32 39, i32 119, i32 48, i32 147,
	i32 1, i32 88, i32 121, i32 35, i32 179, i32 181, i32 99, i32 54,
	i32 225, i32 98, i32 261, i32 263, i32 132, i32 105, i32 133, i32 158,
	i32 185, i32 25, i32 166, i32 338, i32 153, i32 108, i32 245, i32 0,
	i32 233, i32 93, i32 229, i32 271, i32 223, i32 63, i32 147, i32 94,
	i32 104, i32 6, i32 14, i32 125, i32 126, i32 123, i32 139, i32 29,
	i32 188, i32 75, i32 235, i32 25, i32 25, i32 221, i32 267, i32 264,
	i32 279, i32 232, i32 19, i32 141, i32 206, i32 214, i32 231, i32 173,
	i32 34, i32 265, i32 268, i32 105, i32 127, i32 236, i32 95, i32 189,
	i32 168, i32 172, i32 238, i32 40, i32 239, i32 30, i32 312, i32 18,
	i32 176, i32 325, i32 276, i32 141, i32 155, i32 227, i32 160, i32 134,
	i32 20, i32 68, i32 293, i32 331, i32 169, i32 112, i32 152, i32 2,
	i32 220, i32 241, i32 48, i32 165, i32 324, i32 305, i32 212, i32 83,
	i32 64, i32 304, i32 110, i32 144, i32 216, i32 268, i32 50, i32 248,
	i32 299, i32 263, i32 15, i32 322, i32 306, i32 188, i32 71, i32 310,
	i32 217, i32 176, i32 335, i32 222, i32 227, i32 318, i32 157, i32 334,
	i32 82, i32 232, i32 112, i32 215, i32 261, i32 70, i32 66, i32 136,
	i32 28, i32 165, i32 208, i32 35, i32 254, i32 151, i32 313, i32 163,
	i32 224, i32 46, i32 283, i32 11, i32 195, i32 114, i32 12, i32 55,
	i32 54, i32 82, i32 122, i32 130, i32 87, i32 190, i32 69, i32 111,
	i32 223, i32 68, i32 226, i32 132, i32 192, i32 126, i32 81, i32 279,
	i32 180, i32 267, i32 333, i32 9, i32 231, i32 3, i32 225, i32 62,
	i32 177, i32 329, i32 1, i32 45, i32 282, i32 147, i32 161, i32 132,
	i32 266, i32 203, i32 56, i32 196, i32 24, i32 110, i32 137, i32 71,
	i32 218, i32 250, i32 73, i32 328, i32 230, i32 310, i32 37, i32 191,
	i32 30, i32 38, i32 217, i32 55, i32 65, i32 138, i32 53, i32 335,
	i32 248, i32 201, i32 299, i32 304, i32 94, i32 91, i32 314, i32 153,
	i32 316, i32 194, i32 295, i32 281, i32 255, i32 203, i32 129, i32 37,
	i32 90, i32 239, i32 20, i32 186, i32 323, i32 323, i32 76, i32 60,
	i32 321, i32 318, i32 189, i32 189, i32 51, i32 7, i32 94, i32 22,
	i32 167, i32 100, i32 51, i32 337, i32 327, i32 117, i32 258, i32 336,
	i32 134, i32 206, i32 80, i32 64, i32 215, i32 271, i32 332, i32 28,
	i32 44, i32 323, i32 232, i32 257, i32 8, i32 273, i32 200, i32 114,
	i32 271, i32 162, i32 258, i32 241
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.mm.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.mm.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/10.0.1xx @ 350a375fc202f0072ac4191624986d8c642b93fa"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
