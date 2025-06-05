; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [327 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [648 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 67
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 66
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 107
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 241
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 275
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 47
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 79
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 144
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 316
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 123
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 190
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 101
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 259
	i32 117431740, ; 14: System.Runtime.InteropServices => 0x6ffddbc => 106
	i32 120558881, ; 15: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 259
	i32 122350210, ; 16: System.Threading.Channels.dll => 0x74aea82 => 138
	i32 134690465, ; 17: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 279
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 76
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 123
	i32 159306688, ; 20: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 21: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 215
	i32 172961045, ; 22: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 192
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 131
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 261
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 150
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 313
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 314
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 213
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 235
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 58
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 41
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 90
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 218
	i32 276479776, ; 37: System.Threading.Timer.dll => 0x107abf20 => 146
	i32 278686392, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 237
	i32 280482487, ; 39: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 234
	i32 280992041, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 285
	i32 291076382, ; 41: System.IO.Pipes.AccessControl.dll => 0x1159791e => 53
	i32 298918909, ; 42: System.Net.Ping.dll => 0x11d123fd => 68
	i32 317674968, ; 43: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 313
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 204
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 82
	i32 336156722, ; 46: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 298
	i32 342366114, ; 47: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 236
	i32 354584097, ; 48: en-US/Syncfusion.Maui.Popup.resources.dll => 0x15228621 => 318
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 297
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 130
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 54
	i32 374376850, ; 52: Syncfusion.Maui.Popup.dll => 0x16508992 => 198
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 148
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 73
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 144
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 61
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 145
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 323
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 164
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 309
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 219
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 232
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 124
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 151
	i32 456681651, ; 66: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 194
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 112
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 165
	i32 469710990, ; 69: System.dll => 0x1bff388e => 163
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 234
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 247
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 83
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 296
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 290
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 184
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 149
	i32 527452488, ; 77: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 279
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 59
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 180
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 50
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 102
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 113
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 39
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 272
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 270
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 119
	i32 592146354, ; 87: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 304
	i32 597488923, ; 88: CommunityToolkit.Maui => 0x239cf51b => 172
	i32 601371474, ; 89: System.IO.IsolatedStorage.dll => 0x23d83352 => 51
	i32 605376203, ; 90: System.IO.Compression.FileSystem => 0x24154ecb => 43
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 118
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 224
	i32 627931235, ; 93: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 302
	i32 639843206, ; 94: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 230
	i32 643868501, ; 95: System.Net => 0x2660a755 => 80
	i32 662205335, ; 96: System.Text.Encodings.Web.dll => 0x27787397 => 135
	i32 663517072, ; 97: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 266
	i32 666292255, ; 98: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 211
	i32 672442732, ; 99: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 100: System.Net.Security => 0x28bdabca => 72
	i32 688181140, ; 101: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 284
	i32 690569205, ; 102: System.Xml.Linq.dll => 0x29293ff5 => 154
	i32 691348768, ; 103: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 281
	i32 693804605, ; 104: System.Windows => 0x295a9e3d => 153
	i32 695450347, ; 105: Syncfusion.Maui.Popup => 0x2973baeb => 198
	i32 699345723, ; 106: System.Reflection.Emit => 0x29af2b3b => 91
	i32 700284507, ; 107: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 276
	i32 700358131, ; 108: System.IO.Compression.ZipFile => 0x29be9df3 => 44
	i32 706645707, ; 109: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 299
	i32 709557578, ; 110: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 287
	i32 720511267, ; 111: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 280
	i32 722857257, ; 112: System.Runtime.Loader.dll => 0x2b15ed29 => 108
	i32 735137430, ; 113: System.Security.SecureString.dll => 0x2bd14e96 => 128
	i32 750898264, ; 114: en-US\Syncfusion.Maui.Popup.resources => 0x2cc1cc58 => 318
	i32 752232764, ; 115: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 116: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 201
	i32 759454413, ; 117: System.Net.Requests => 0x2d445acd => 71
	i32 762598435, ; 118: System.IO.Pipes.dll => 0x2d745423 => 54
	i32 775507847, ; 119: System.IO.Compression => 0x2e394f87 => 45
	i32 777317022, ; 120: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 308
	i32 789151979, ; 121: Microsoft.Extensions.Options => 0x2f0980eb => 183
	i32 790371945, ; 122: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 225
	i32 804715423, ; 123: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 124: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 239
	i32 823281589, ; 125: System.Private.Uri.dll => 0x311247b5 => 85
	i32 830298997, ; 126: System.IO.Compression.Brotli => 0x317d5b75 => 42
	i32 832635846, ; 127: System.Xml.XPath.dll => 0x31a103c6 => 159
	i32 834051424, ; 128: System.Net.Quic => 0x31b69d60 => 70
	i32 843511501, ; 129: Xamarin.AndroidX.Print => 0x3246f6cd => 252
	i32 873119928, ; 130: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 131: System.Globalization.dll => 0x34505120 => 41
	i32 878954865, ; 132: System.Net.Http.Json => 0x3463c971 => 62
	i32 904024072, ; 133: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 134: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 52
	i32 923841322, ; 135: Syncfusion.Maui.Picker => 0x3710b32a => 197
	i32 926902833, ; 136: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 311
	i32 928116545, ; 137: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 275
	i32 952186615, ; 138: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 104
	i32 956575887, ; 139: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 280
	i32 966729478, ; 140: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 273
	i32 967690846, ; 141: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 236
	i32 975236339, ; 142: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 143: System.Xml.XDocument => 0x3a2aaa1d => 157
	i32 986514023, ; 144: System.Private.DataContractSerialization.dll => 0x3acd0267 => 84
	i32 987214855, ; 145: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 146: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 147: System.IO.FileSystem => 0x3b45fb35 => 50
	i32 1001831731, ; 148: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 55
	i32 1012816738, ; 149: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 256
	i32 1019214401, ; 150: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 151: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 179
	i32 1029334545, ; 152: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 286
	i32 1031528504, ; 153: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 274
	i32 1035644815, ; 154: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 209
	i32 1036536393, ; 155: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 156: System.Linq.Expressions.dll => 0x3e444eb4 => 57
	i32 1052210849, ; 157: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 243
	i32 1067306892, ; 158: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 159: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 160: Xamarin.Kotlin.StdLib => 0x409e66d8 => 277
	i32 1098259244, ; 161: System => 0x41761b2c => 163
	i32 1118262833, ; 162: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 299
	i32 1121599056, ; 163: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 242
	i32 1127624469, ; 164: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 182
	i32 1149092582, ; 165: Xamarin.AndroidX.Window => 0x447dc2e6 => 269
	i32 1168523401, ; 166: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 305
	i32 1170634674, ; 167: System.Web.dll => 0x45c677b2 => 152
	i32 1175144683, ; 168: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 265
	i32 1178241025, ; 169: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 250
	i32 1203215381, ; 170: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 303
	i32 1204270330, ; 171: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 211
	i32 1208641965, ; 172: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1214827643, ; 173: CommunityToolkit.Mvvm => 0x4868cc7b => 174
	i32 1219128291, ; 174: System.IO.IsolatedStorage => 0x48aa6be3 => 51
	i32 1234928153, ; 175: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 301
	i32 1243150071, ; 176: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 270
	i32 1253011324, ; 177: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 178: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 285
	i32 1264511973, ; 179: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 260
	i32 1267360935, ; 180: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 264
	i32 1273260888, ; 181: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 216
	i32 1275534314, ; 182: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 281
	i32 1278448581, ; 183: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 208
	i32 1293217323, ; 184: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 227
	i32 1309188875, ; 185: System.Private.DataContractSerialization => 0x4e08a30b => 84
	i32 1322716291, ; 186: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 269
	i32 1324164729, ; 187: System.Linq => 0x4eed2679 => 60
	i32 1335329327, ; 188: System.Runtime.Serialization.Json.dll => 0x4f97822f => 111
	i32 1364015309, ; 189: System.IO => 0x514d38cd => 56
	i32 1373134921, ; 190: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 315
	i32 1376866003, ; 191: Xamarin.AndroidX.SavedState => 0x52114ed3 => 256
	i32 1379779777, ; 192: System.Resources.ResourceManager => 0x523dc4c1 => 98
	i32 1402170036, ; 193: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 194: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 220
	i32 1408764838, ; 195: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 110
	i32 1411638395, ; 196: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 100
	i32 1422545099, ; 197: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 101
	i32 1430672901, ; 198: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 283
	i32 1434145427, ; 199: System.Runtime.Handles => 0x557b5293 => 103
	i32 1435222561, ; 200: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 273
	i32 1439761251, ; 201: System.Net.Quic.dll => 0x55d10363 => 70
	i32 1452070440, ; 202: System.Formats.Asn1.dll => 0x568cd628 => 37
	i32 1453312822, ; 203: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1457743152, ; 204: System.Runtime.Extensions.dll => 0x56e36530 => 102
	i32 1458022317, ; 205: System.Net.Security.dll => 0x56e7a7ad => 72
	i32 1461004990, ; 206: es\Microsoft.Maui.Controls.resources => 0x57152abe => 289
	i32 1461234159, ; 207: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 208: System.Security.Cryptography.OpenSsl => 0x57201017 => 122
	i32 1462112819, ; 209: System.IO.Compression.dll => 0x57261233 => 45
	i32 1469204771, ; 210: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 210
	i32 1470490898, ; 211: Microsoft.Extensions.Primitives => 0x57a5e912 => 184
	i32 1479771757, ; 212: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 213: System.IO.Compression.Brotli.dll => 0x583e844f => 42
	i32 1487239319, ; 214: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 215: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 257
	i32 1493001747, ; 216: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 293
	i32 1514721132, ; 217: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 288
	i32 1536373174, ; 218: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 219: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 137
	i32 1543355203, ; 220: System.Reflection.Emit.dll => 0x5bfdbb43 => 91
	i32 1550322496, ; 221: System.Reflection.Extensions.dll => 0x5c680b40 => 92
	i32 1551623176, ; 222: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 308
	i32 1565862583, ; 223: System.IO.FileSystem.Primitives => 0x5d552ab7 => 48
	i32 1566207040, ; 224: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 140
	i32 1573704789, ; 225: System.Runtime.Serialization.Json => 0x5dccd455 => 111
	i32 1580037396, ; 226: System.Threading.Overlapped => 0x5e2d7514 => 139
	i32 1582372066, ; 227: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 226
	i32 1592978981, ; 228: System.Runtime.Serialization.dll => 0x5ef2ee25 => 114
	i32 1597949149, ; 229: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 274
	i32 1601112923, ; 230: System.Xml.Serialization => 0x5f6f0b5b => 156
	i32 1603525486, ; 231: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 319
	i32 1604827217, ; 232: System.Net.WebClient => 0x5fa7b851 => 75
	i32 1618516317, ; 233: System.Net.WebSockets.Client.dll => 0x6078995d => 78
	i32 1622152042, ; 234: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 246
	i32 1622358360, ; 235: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 236: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 268
	i32 1634654947, ; 237: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 173
	i32 1635184631, ; 238: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 230
	i32 1636350590, ; 239: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 223
	i32 1639515021, ; 240: System.Net.Http.dll => 0x61b9038d => 63
	i32 1639986890, ; 241: System.Text.RegularExpressions => 0x61c036ca => 137
	i32 1641389582, ; 242: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1653151792, ; 243: Syncfusion.Maui.Inputs.dll => 0x62891830 => 195
	i32 1657153582, ; 244: System.Runtime => 0x62c6282e => 115
	i32 1658241508, ; 245: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 262
	i32 1658251792, ; 246: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 271
	i32 1670060433, ; 247: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 218
	i32 1675553242, ; 248: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 47
	i32 1677501392, ; 249: System.Net.Primitives.dll => 0x63fca3d0 => 69
	i32 1678508291, ; 250: System.Net.WebSockets => 0x640c0103 => 79
	i32 1679769178, ; 251: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1691477237, ; 252: System.Reflection.Metadata => 0x64d1e4f5 => 93
	i32 1696967625, ; 253: System.Security.Cryptography.Csp => 0x6525abc9 => 120
	i32 1698840827, ; 254: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 278
	i32 1701541528, ; 255: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 256: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 239
	i32 1726116996, ; 257: System.Reflection.dll => 0x66e27484 => 96
	i32 1728033016, ; 258: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 259: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 214
	i32 1736233607, ; 260: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 306
	i32 1743415430, ; 261: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 284
	i32 1744735666, ; 262: System.Transactions.Local.dll => 0x67fe8db2 => 148
	i32 1746316138, ; 263: Mono.Android.Export => 0x6816ab6a => 168
	i32 1750313021, ; 264: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 265: System.Resources.Reader.dll => 0x68cc9d1e => 97
	i32 1763938596, ; 266: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 267: System.Reflection.Extensions => 0x6942234e => 92
	i32 1766324549, ; 268: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 261
	i32 1770582343, ; 269: Microsoft.Extensions.Logging.dll => 0x6988f147 => 180
	i32 1776026572, ; 270: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 271: System.Globalization.Extensions.dll => 0x69ec0683 => 40
	i32 1780572499, ; 272: Mono.Android.Runtime.dll => 0x6a216153 => 169
	i32 1782862114, ; 273: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 300
	i32 1788241197, ; 274: Xamarin.AndroidX.Fragment => 0x6a96652d => 232
	i32 1793755602, ; 275: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 292
	i32 1808609942, ; 276: Xamarin.AndroidX.Loader => 0x6bcd3296 => 246
	i32 1813058853, ; 277: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 277
	i32 1813201214, ; 278: Xamarin.Google.Android.Material => 0x6c13413e => 271
	i32 1818569960, ; 279: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 251
	i32 1818787751, ; 280: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819520952, ; 281: login.dll => 0x6c73afb8 => 0
	i32 1824175904, ; 282: System.Text.Encoding.Extensions => 0x6cbab720 => 133
	i32 1824722060, ; 283: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 110
	i32 1827303595, ; 284: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 321
	i32 1828688058, ; 285: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 181
	i32 1842015223, ; 286: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 312
	i32 1847515442, ; 287: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 201
	i32 1853025655, ; 288: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 309
	i32 1858542181, ; 289: System.Linq.Expressions => 0x6ec71a65 => 57
	i32 1870277092, ; 290: System.Reflection.Primitives => 0x6f7a29e4 => 94
	i32 1875935024, ; 291: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 291
	i32 1879696579, ; 292: System.Formats.Tar.dll => 0x7009e4c3 => 38
	i32 1885316902, ; 293: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 212
	i32 1885918049, ; 294: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 321
	i32 1888955245, ; 295: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 296: System.Reflection.Metadata.dll => 0x70a66bdd => 93
	i32 1898237753, ; 297: System.Reflection.DispatchProxy => 0x7124cf39 => 88
	i32 1900610850, ; 298: System.Resources.ResourceManager.dll => 0x71490522 => 98
	i32 1910275211, ; 299: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 300: System.Private.Xml.Linq => 0x739bd4a8 => 86
	i32 1956758971, ; 301: System.Resources.Writer => 0x74a1c5bb => 99
	i32 1961813231, ; 302: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 258
	i32 1968388702, ; 303: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 176
	i32 1983156543, ; 304: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 278
	i32 1985761444, ; 305: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 203
	i32 2003115576, ; 306: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 288
	i32 2011961780, ; 307: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 308: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 243
	i32 2025202353, ; 309: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 283
	i32 2031763787, ; 310: Xamarin.Android.Glide => 0x791a414b => 200
	i32 2045470958, ; 311: System.Private.Xml => 0x79eb68ee => 87
	i32 2055257422, ; 312: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 238
	i32 2060060697, ; 313: System.Windows.dll => 0x7aca0819 => 153
	i32 2066184531, ; 314: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 287
	i32 2070888862, ; 315: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2079903147, ; 316: System.Runtime.dll => 0x7bf8cdab => 115
	i32 2090596640, ; 317: System.Numerics.Vectors => 0x7c9bf920 => 81
	i32 2117912485, ; 318: Microsoft.VisualStudio.DesignTools.XamlTapContract.dll => 0x7e3cc7a5 => 322
	i32 2127167465, ; 319: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 320: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 321: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 161
	i32 2146852085, ; 322: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 323: Microsoft.Maui => 0x80bd55ad => 188
	i32 2169148018, ; 324: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 295
	i32 2181898931, ; 325: Microsoft.Extensions.Options.dll => 0x820d22b3 => 183
	i32 2192057212, ; 326: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 181
	i32 2193016926, ; 327: System.ObjectModel.dll => 0x82b6c85e => 83
	i32 2201107256, ; 328: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 282
	i32 2201231467, ; 329: System.Net.Http => 0x8334206b => 63
	i32 2207618523, ; 330: it\Microsoft.Maui.Controls.resources => 0x839595db => 297
	i32 2217644978, ; 331: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 265
	i32 2222056684, ; 332: System.Threading.Tasks.Parallel => 0x8471e4ec => 142
	i32 2244775296, ; 333: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 247
	i32 2252106437, ; 334: System.Xml.Serialization.dll => 0x863c6ac5 => 156
	i32 2256313426, ; 335: System.Globalization.Extensions => 0x867c9c52 => 40
	i32 2265110946, ; 336: System.Security.AccessControl.dll => 0x8702d9a2 => 116
	i32 2266799131, ; 337: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 177
	i32 2267999099, ; 338: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 202
	i32 2270573516, ; 339: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 291
	i32 2279755925, ; 340: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 254
	i32 2293034957, ; 341: System.ServiceModel.Web.dll => 0x88acefcd => 130
	i32 2295906218, ; 342: System.Net.Sockets => 0x88d8bfaa => 74
	i32 2298471582, ; 343: System.Net.Mail => 0x88ffe49e => 65
	i32 2303942373, ; 344: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 301
	i32 2305521784, ; 345: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2315684594, ; 346: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 206
	i32 2320631194, ; 347: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 142
	i32 2340441535, ; 348: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 105
	i32 2344264397, ; 349: System.ValueTuple => 0x8bbaa2cd => 150
	i32 2353062107, ; 350: System.Net.Primitives => 0x8c40e0db => 69
	i32 2354730003, ; 351: Syncfusion.Licensing => 0x8c5a5413 => 191
	i32 2368005991, ; 352: System.Xml.ReaderWriter.dll => 0x8d24e767 => 155
	i32 2371007202, ; 353: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 176
	i32 2378619854, ; 354: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 120
	i32 2383496789, ; 355: System.Security.Principal.Windows.dll => 0x8e114655 => 126
	i32 2395872292, ; 356: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 296
	i32 2401565422, ; 357: System.Web.HttpUtility => 0x8f24faee => 151
	i32 2403452196, ; 358: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 229
	i32 2409983638, ; 359: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 320
	i32 2421380589, ; 360: System.Threading.Tasks.Dataflow => 0x905355ed => 140
	i32 2423080555, ; 361: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 216
	i32 2427813419, ; 362: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 293
	i32 2435356389, ; 363: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 364: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2443372643, ; 365: en-US/Syncfusion.Maui.ListView.resources.dll => 0x91a2e863 => 317
	i32 2454642406, ; 366: System.Text.Encoding.dll => 0x924edee6 => 134
	i32 2458678730, ; 367: System.Net.Sockets.dll => 0x928c75ca => 74
	i32 2459001652, ; 368: System.Linq.Parallel.dll => 0x92916334 => 58
	i32 2465532216, ; 369: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 219
	i32 2471841756, ; 370: netstandard.dll => 0x93554fdc => 166
	i32 2475788418, ; 371: Java.Interop.dll => 0x93918882 => 167
	i32 2480646305, ; 372: Microsoft.Maui.Controls => 0x93dba8a1 => 186
	i32 2483903535, ; 373: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 374: System.Net.ServicePoint => 0x94147f61 => 73
	i32 2490993605, ; 375: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 376: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 377: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 241
	i32 2522472828, ; 378: Xamarin.Android.Glide.dll => 0x9659e17c => 200
	i32 2538310050, ; 379: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 90
	i32 2550873716, ; 380: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 294
	i32 2562349572, ; 381: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 382: System.Text.Encodings.Web => 0x9930ee42 => 135
	i32 2581783588, ; 383: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 242
	i32 2581819634, ; 384: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 264
	i32 2585220780, ; 385: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 133
	i32 2585805581, ; 386: System.Net.Ping => 0x9a20430d => 68
	i32 2589602615, ; 387: System.Threading.ThreadPool => 0x9a5a3337 => 145
	i32 2593496499, ; 388: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 303
	i32 2605712449, ; 389: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 282
	i32 2615233544, ; 390: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 233
	i32 2616218305, ; 391: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 182
	i32 2617129537, ; 392: System.Private.Xml.dll => 0x9bfe3a41 => 87
	i32 2618712057, ; 393: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 95
	i32 2620871830, ; 394: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 223
	i32 2624644809, ; 395: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 228
	i32 2626831493, ; 396: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 298
	i32 2627185994, ; 397: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2629843544, ; 398: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 44
	i32 2633051222, ; 399: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 237
	i32 2663391936, ; 400: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 202
	i32 2663698177, ; 401: System.Runtime.Loader => 0x9ec4cf01 => 108
	i32 2664396074, ; 402: System.Xml.XDocument.dll => 0x9ecf752a => 157
	i32 2665622720, ; 403: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 404: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 405: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 113
	i32 2693849962, ; 406: System.IO.dll => 0xa090e36a => 56
	i32 2701096212, ; 407: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 262
	i32 2715334215, ; 408: System.Threading.Tasks.dll => 0xa1d8b647 => 143
	i32 2717744543, ; 409: System.Security.Claims => 0xa1fd7d9f => 117
	i32 2719963679, ; 410: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 119
	i32 2724373263, ; 411: System.Runtime.Numerics.dll => 0xa262a30f => 109
	i32 2732626843, ; 412: Xamarin.AndroidX.Activity => 0xa2e0939b => 204
	i32 2735172069, ; 413: System.Threading.Channels => 0xa30769e5 => 138
	i32 2737747696, ; 414: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 210
	i32 2740948882, ; 415: System.IO.Pipes.AccessControl => 0xa35f8f92 => 53
	i32 2743368605, ; 416: Syncfusion.Maui.DataSource => 0xa3847b9d => 193
	i32 2748088231, ; 417: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 104
	i32 2752995522, ; 418: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 304
	i32 2758225723, ; 419: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 187
	i32 2764765095, ; 420: Microsoft.Maui.dll => 0xa4caf7a7 => 188
	i32 2765824710, ; 421: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 132
	i32 2770495804, ; 422: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 276
	i32 2778768386, ; 423: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 267
	i32 2779977773, ; 424: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 255
	i32 2785988530, ; 425: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 310
	i32 2788224221, ; 426: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 233
	i32 2801524761, ; 427: en-US\Syncfusion.Maui.ListView.resources => 0xa6fbe019 => 317
	i32 2801831435, ; 428: Microsoft.Maui.Graphics => 0xa7008e0b => 190
	i32 2803228030, ; 429: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 158
	i32 2806116107, ; 430: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 289
	i32 2810250172, ; 431: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 220
	i32 2819470561, ; 432: System.Xml.dll => 0xa80db4e1 => 162
	i32 2821205001, ; 433: System.ServiceProcess.dll => 0xa8282c09 => 131
	i32 2821294376, ; 434: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 255
	i32 2824502124, ; 435: System.Xml.XmlDocument => 0xa85a7b6c => 160
	i32 2831556043, ; 436: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 302
	i32 2838993487, ; 437: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 244
	i32 2849599387, ; 438: System.Threading.Overlapped.dll => 0xa9d96f9b => 139
	i32 2853208004, ; 439: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 267
	i32 2855708567, ; 440: Xamarin.AndroidX.Transition => 0xaa36a797 => 263
	i32 2861098320, ; 441: Mono.Android.Export.dll => 0xaa88e550 => 168
	i32 2861189240, ; 442: Microsoft.Maui.Essentials => 0xaa8a4878 => 189
	i32 2868488919, ; 443: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 173
	i32 2868557005, ; 444: Syncfusion.Licensing.dll => 0xaafab4cd => 191
	i32 2870099610, ; 445: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 205
	i32 2875164099, ; 446: Jsr305Binding.dll => 0xab5f85c3 => 272
	i32 2875220617, ; 447: System.Globalization.Calendars.dll => 0xab606289 => 39
	i32 2884993177, ; 448: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 231
	i32 2887636118, ; 449: System.Net.dll => 0xac1dd496 => 80
	i32 2899753641, ; 450: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 55
	i32 2900621748, ; 451: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 452: System.Reflection => 0xacf080de => 96
	i32 2905242038, ; 453: mscorlib.dll => 0xad2a79b6 => 165
	i32 2909740682, ; 454: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2916838712, ; 455: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 268
	i32 2919462931, ; 456: System.Numerics.Vectors.dll => 0xae037813 => 81
	i32 2921128767, ; 457: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 207
	i32 2936416060, ; 458: System.Resources.Reader => 0xaf06273c => 97
	i32 2940926066, ; 459: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 460: System.Xml.XPath.XDocument => 0xaf624531 => 158
	i32 2959614098, ; 461: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 462: System.Security.Principal.Windows => 0xb0ed41f3 => 126
	i32 2972252294, ; 463: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 118
	i32 2978675010, ; 464: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 227
	i32 2987532451, ; 465: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 258
	i32 2996846495, ; 466: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 240
	i32 3016983068, ; 467: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 260
	i32 3023353419, ; 468: WindowsBase.dll => 0xb434b64b => 164
	i32 3024354802, ; 469: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 235
	i32 3038032645, ; 470: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 323
	i32 3056245963, ; 471: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 257
	i32 3057625584, ; 472: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 248
	i32 3059408633, ; 473: Mono.Android.Runtime => 0xb65adef9 => 169
	i32 3059793426, ; 474: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 475: System.Threading.Tasks => 0xb755818f => 143
	i32 3077302341, ; 476: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 295
	i32 3090735792, ; 477: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 124
	i32 3099732863, ; 478: System.Security.Claims.dll => 0xb8c22b7f => 117
	i32 3103600923, ; 479: System.Formats.Asn1 => 0xb8fd311b => 37
	i32 3111772706, ; 480: System.Runtime.Serialization => 0xb979e222 => 114
	i32 3121463068, ; 481: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 46
	i32 3124832203, ; 482: System.Threading.Tasks.Extensions => 0xba4127cb => 141
	i32 3132293585, ; 483: System.Security.AccessControl => 0xbab301d1 => 116
	i32 3140633799, ; 484: Syncfusion.Maui.ListView => 0xbb3244c7 => 196
	i32 3147165239, ; 485: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3147228406, ; 486: Syncfusion.Maui.Core => 0xbb96e4f6 => 192
	i32 3148237826, ; 487: GoogleGson.dll => 0xbba64c02 => 175
	i32 3159123045, ; 488: System.Reflection.Primitives.dll => 0xbc4c6465 => 94
	i32 3160747431, ; 489: System.IO.MemoryMappedFiles => 0xbc652da7 => 52
	i32 3170039328, ; 490: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 196
	i32 3178803400, ; 491: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 249
	i32 3192346100, ; 492: System.Security.SecureString => 0xbe4755f4 => 128
	i32 3193515020, ; 493: System.Web => 0xbe592c0c => 152
	i32 3204380047, ; 494: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 495: System.Xml.XmlDocument.dll => 0xbf506931 => 160
	i32 3211777861, ; 496: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 226
	i32 3217618498, ; 497: Microsoft.VisualStudio.DesignTools.XamlTapContract => 0xbfc8f642 => 322
	i32 3220365878, ; 498: System.Threading => 0xbff2e236 => 147
	i32 3226221578, ; 499: System.Runtime.Handles.dll => 0xc04c3c0a => 103
	i32 3241471733, ; 500: login => 0xc134eef5 => 0
	i32 3251039220, ; 501: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 88
	i32 3258312781, ; 502: Xamarin.AndroidX.CardView => 0xc235e84d => 214
	i32 3265493905, ; 503: System.Linq.Queryable.dll => 0xc2a37b91 => 59
	i32 3265893370, ; 504: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 141
	i32 3277815716, ; 505: System.Resources.Writer.dll => 0xc35f7fa4 => 99
	i32 3279906254, ; 506: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 507: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 508: System.Security.Cryptography.Encoding => 0xc4251ff9 => 121
	i32 3299363146, ; 509: System.Text.Encoding => 0xc4a8494a => 134
	i32 3303498502, ; 510: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 511: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 290
	i32 3306970809, ; 512: Syncfusion.Maui.Inputs => 0xc51c5eb9 => 195
	i32 3316684772, ; 513: System.Net.Requests.dll => 0xc5b097e4 => 71
	i32 3317135071, ; 514: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 224
	i32 3317144872, ; 515: System.Data => 0xc5b79d28 => 24
	i32 3324377930, ; 516: Syncfusion.Maui.Picker.dll => 0xc625fb4a => 197
	i32 3340431453, ; 517: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 212
	i32 3345895724, ; 518: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 253
	i32 3346324047, ; 519: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 250
	i32 3357674450, ; 520: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 307
	i32 3358260929, ; 521: System.Text.Json => 0xc82afec1 => 136
	i32 3362336904, ; 522: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 205
	i32 3362522851, ; 523: Xamarin.AndroidX.Core => 0xc86c06e3 => 221
	i32 3366347497, ; 524: Java.Interop => 0xc8a662e9 => 167
	i32 3374999561, ; 525: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 254
	i32 3381016424, ; 526: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 286
	i32 3381934622, ; 527: Syncfusion.Maui.GridCommon => 0xc9943a1e => 194
	i32 3395150330, ; 528: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 100
	i32 3403906625, ; 529: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 122
	i32 3405233483, ; 530: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 225
	i32 3428513518, ; 531: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 178
	i32 3429136800, ; 532: System.Xml => 0xcc6479a0 => 162
	i32 3430777524, ; 533: netstandard => 0xcc7d82b4 => 166
	i32 3441283291, ; 534: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 228
	i32 3445260447, ; 535: System.Formats.Tar => 0xcd5a809f => 38
	i32 3452344032, ; 536: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 185
	i32 3463511458, ; 537: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 294
	i32 3471940407, ; 538: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 539: Mono.Android => 0xcf3163e6 => 170
	i32 3479583265, ; 540: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 307
	i32 3484440000, ; 541: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 306
	i32 3485117614, ; 542: System.Text.Json.dll => 0xcfbaacae => 136
	i32 3486566296, ; 543: System.Transactions => 0xcfd0c798 => 149
	i32 3493954962, ; 544: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 217
	i32 3509114376, ; 545: System.Xml.Linq => 0xd128d608 => 154
	i32 3515174580, ; 546: System.Security.dll => 0xd1854eb4 => 129
	i32 3530912306, ; 547: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 548: System.Net.HttpListener => 0xd2ff69f1 => 64
	i32 3558305335, ; 549: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 193
	i32 3560100363, ; 550: System.Threading.Timer => 0xd432d20b => 146
	i32 3570554715, ; 551: System.IO.FileSystem.AccessControl => 0xd4d2575b => 46
	i32 3580758918, ; 552: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 314
	i32 3597029428, ; 553: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 203
	i32 3598340787, ; 554: System.Net.WebSockets.Client => 0xd67a52b3 => 78
	i32 3608519521, ; 555: System.Linq.dll => 0xd715a361 => 60
	i32 3624195450, ; 556: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 105
	i32 3627220390, ; 557: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 252
	i32 3633644679, ; 558: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 207
	i32 3638274909, ; 559: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 48
	i32 3641597786, ; 560: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 238
	i32 3643446276, ; 561: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 311
	i32 3643854240, ; 562: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 249
	i32 3645089577, ; 563: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 564: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 177
	i32 3660523487, ; 565: System.Net.NetworkInformation => 0xda2f27df => 67
	i32 3672681054, ; 566: Mono.Android.dll => 0xdae8aa5e => 170
	i32 3676670898, ; 567: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 319
	i32 3682565725, ; 568: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 213
	i32 3684561358, ; 569: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 217
	i32 3697841164, ; 570: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 316
	i32 3700866549, ; 571: System.Net.WebProxy.dll => 0xdc96bdf5 => 77
	i32 3706696989, ; 572: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 222
	i32 3716563718, ; 573: System.Runtime.Intrinsics => 0xdd864306 => 107
	i32 3718780102, ; 574: Xamarin.AndroidX.Annotation => 0xdda814c6 => 206
	i32 3724971120, ; 575: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 248
	i32 3732100267, ; 576: System.Net.NameResolution => 0xde7354ab => 66
	i32 3737834244, ; 577: System.Net.Http.Json.dll => 0xdecad304 => 62
	i32 3748608112, ; 578: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 199
	i32 3751444290, ; 579: System.Xml.XPath => 0xdf9a7f42 => 159
	i32 3786282454, ; 580: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 215
	i32 3792276235, ; 581: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 582: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 185
	i32 3802395368, ; 583: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 584: CommunityToolkit.Maui.dll => 0xe3886bf7 => 172
	i32 3819260425, ; 585: System.Net.WebProxy => 0xe3a54a09 => 77
	i32 3823082795, ; 586: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3829621856, ; 587: System.Numerics.dll => 0xe4436460 => 82
	i32 3841636137, ; 588: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 179
	i32 3844307129, ; 589: System.Net.Mail.dll => 0xe52378b9 => 65
	i32 3849253459, ; 590: System.Runtime.InteropServices.dll => 0xe56ef253 => 106
	i32 3870376305, ; 591: System.Net.HttpListener.dll => 0xe6b14171 => 64
	i32 3873536506, ; 592: System.Security.Principal => 0xe6e179fa => 127
	i32 3875112723, ; 593: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 121
	i32 3885497537, ; 594: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 76
	i32 3885922214, ; 595: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 263
	i32 3888767677, ; 596: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 253
	i32 3889960447, ; 597: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 315
	i32 3896106733, ; 598: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 599: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 221
	i32 3901907137, ; 600: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 601: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 43
	i32 3921031405, ; 602: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 266
	i32 3928044579, ; 603: System.Xml.ReaderWriter => 0xea213423 => 155
	i32 3930554604, ; 604: System.Security.Principal.dll => 0xea4780ec => 127
	i32 3931092270, ; 605: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 251
	i32 3945713374, ; 606: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 607: System.Text.Encoding.CodePages => 0xebac8bfe => 132
	i32 3955647286, ; 608: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 209
	i32 3959773229, ; 609: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 240
	i32 3980434154, ; 610: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 310
	i32 3987592930, ; 611: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 292
	i32 4003436829, ; 612: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 613: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 208
	i32 4025784931, ; 614: System.Memory => 0xeff49a63 => 61
	i32 4046471985, ; 615: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 187
	i32 4054681211, ; 616: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 89
	i32 4068434129, ; 617: System.Private.Xml.Linq.dll => 0xf27f60d1 => 86
	i32 4073602200, ; 618: System.Threading.dll => 0xf2ce3c98 => 147
	i32 4094352644, ; 619: Microsoft.Maui.Essentials.dll => 0xf40add04 => 189
	i32 4099507663, ; 620: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 621: System.Private.Uri => 0xf462c30d => 85
	i32 4101593132, ; 622: Xamarin.AndroidX.Emoji2 => 0xf479582c => 229
	i32 4102112229, ; 623: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 305
	i32 4125707920, ; 624: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 300
	i32 4126470640, ; 625: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 178
	i32 4127667938, ; 626: System.IO.FileSystem.Watcher => 0xf60736e2 => 49
	i32 4130442656, ; 627: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 628: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 89
	i32 4150914736, ; 629: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 312
	i32 4151237749, ; 630: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 631: System.Xml.XmlSerializer => 0xf7e95c85 => 161
	i32 4161255271, ; 632: System.Reflection.TypeExtensions => 0xf807b767 => 95
	i32 4164802419, ; 633: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 49
	i32 4181436372, ; 634: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 112
	i32 4182413190, ; 635: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 245
	i32 4182880526, ; 636: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 320
	i32 4185676441, ; 637: System.Security => 0xf97c5a99 => 129
	i32 4196529839, ; 638: System.Net.WebClient.dll => 0xfa21f6af => 75
	i32 4213026141, ; 639: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 199
	i32 4256097574, ; 640: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 222
	i32 4258378803, ; 641: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 244
	i32 4260525087, ; 642: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 643: Microsoft.Maui.Controls.dll => 0xfea12dee => 186
	i32 4274623895, ; 644: CommunityToolkit.Mvvm.dll => 0xfec99597 => 174
	i32 4274976490, ; 645: System.Runtime.Numerics => 0xfecef6ea => 109
	i32 4292120959, ; 646: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 245
	i32 4294763496 ; 647: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 231
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [648 x i32] [
	i32 67, ; 0
	i32 66, ; 1
	i32 107, ; 2
	i32 241, ; 3
	i32 275, ; 4
	i32 47, ; 5
	i32 79, ; 6
	i32 144, ; 7
	i32 29, ; 8
	i32 316, ; 9
	i32 123, ; 10
	i32 190, ; 11
	i32 101, ; 12
	i32 259, ; 13
	i32 106, ; 14
	i32 259, ; 15
	i32 138, ; 16
	i32 279, ; 17
	i32 76, ; 18
	i32 123, ; 19
	i32 13, ; 20
	i32 215, ; 21
	i32 192, ; 22
	i32 131, ; 23
	i32 261, ; 24
	i32 150, ; 25
	i32 313, ; 26
	i32 314, ; 27
	i32 18, ; 28
	i32 213, ; 29
	i32 26, ; 30
	i32 235, ; 31
	i32 1, ; 32
	i32 58, ; 33
	i32 41, ; 34
	i32 90, ; 35
	i32 218, ; 36
	i32 146, ; 37
	i32 237, ; 38
	i32 234, ; 39
	i32 285, ; 40
	i32 53, ; 41
	i32 68, ; 42
	i32 313, ; 43
	i32 204, ; 44
	i32 82, ; 45
	i32 298, ; 46
	i32 236, ; 47
	i32 318, ; 48
	i32 297, ; 49
	i32 130, ; 50
	i32 54, ; 51
	i32 198, ; 52
	i32 148, ; 53
	i32 73, ; 54
	i32 144, ; 55
	i32 61, ; 56
	i32 145, ; 57
	i32 323, ; 58
	i32 164, ; 59
	i32 309, ; 60
	i32 219, ; 61
	i32 12, ; 62
	i32 232, ; 63
	i32 124, ; 64
	i32 151, ; 65
	i32 194, ; 66
	i32 112, ; 67
	i32 165, ; 68
	i32 163, ; 69
	i32 234, ; 70
	i32 247, ; 71
	i32 83, ; 72
	i32 296, ; 73
	i32 290, ; 74
	i32 184, ; 75
	i32 149, ; 76
	i32 279, ; 77
	i32 59, ; 78
	i32 180, ; 79
	i32 50, ; 80
	i32 102, ; 81
	i32 113, ; 82
	i32 39, ; 83
	i32 272, ; 84
	i32 270, ; 85
	i32 119, ; 86
	i32 304, ; 87
	i32 172, ; 88
	i32 51, ; 89
	i32 43, ; 90
	i32 118, ; 91
	i32 224, ; 92
	i32 302, ; 93
	i32 230, ; 94
	i32 80, ; 95
	i32 135, ; 96
	i32 266, ; 97
	i32 211, ; 98
	i32 8, ; 99
	i32 72, ; 100
	i32 284, ; 101
	i32 154, ; 102
	i32 281, ; 103
	i32 153, ; 104
	i32 198, ; 105
	i32 91, ; 106
	i32 276, ; 107
	i32 44, ; 108
	i32 299, ; 109
	i32 287, ; 110
	i32 280, ; 111
	i32 108, ; 112
	i32 128, ; 113
	i32 318, ; 114
	i32 25, ; 115
	i32 201, ; 116
	i32 71, ; 117
	i32 54, ; 118
	i32 45, ; 119
	i32 308, ; 120
	i32 183, ; 121
	i32 225, ; 122
	i32 22, ; 123
	i32 239, ; 124
	i32 85, ; 125
	i32 42, ; 126
	i32 159, ; 127
	i32 70, ; 128
	i32 252, ; 129
	i32 3, ; 130
	i32 41, ; 131
	i32 62, ; 132
	i32 16, ; 133
	i32 52, ; 134
	i32 197, ; 135
	i32 311, ; 136
	i32 275, ; 137
	i32 104, ; 138
	i32 280, ; 139
	i32 273, ; 140
	i32 236, ; 141
	i32 33, ; 142
	i32 157, ; 143
	i32 84, ; 144
	i32 31, ; 145
	i32 12, ; 146
	i32 50, ; 147
	i32 55, ; 148
	i32 256, ; 149
	i32 35, ; 150
	i32 179, ; 151
	i32 286, ; 152
	i32 274, ; 153
	i32 209, ; 154
	i32 34, ; 155
	i32 57, ; 156
	i32 243, ; 157
	i32 175, ; 158
	i32 17, ; 159
	i32 277, ; 160
	i32 163, ; 161
	i32 299, ; 162
	i32 242, ; 163
	i32 182, ; 164
	i32 269, ; 165
	i32 305, ; 166
	i32 152, ; 167
	i32 265, ; 168
	i32 250, ; 169
	i32 303, ; 170
	i32 211, ; 171
	i32 28, ; 172
	i32 174, ; 173
	i32 51, ; 174
	i32 301, ; 175
	i32 270, ; 176
	i32 5, ; 177
	i32 285, ; 178
	i32 260, ; 179
	i32 264, ; 180
	i32 216, ; 181
	i32 281, ; 182
	i32 208, ; 183
	i32 227, ; 184
	i32 84, ; 185
	i32 269, ; 186
	i32 60, ; 187
	i32 111, ; 188
	i32 56, ; 189
	i32 315, ; 190
	i32 256, ; 191
	i32 98, ; 192
	i32 19, ; 193
	i32 220, ; 194
	i32 110, ; 195
	i32 100, ; 196
	i32 101, ; 197
	i32 283, ; 198
	i32 103, ; 199
	i32 273, ; 200
	i32 70, ; 201
	i32 37, ; 202
	i32 31, ; 203
	i32 102, ; 204
	i32 72, ; 205
	i32 289, ; 206
	i32 9, ; 207
	i32 122, ; 208
	i32 45, ; 209
	i32 210, ; 210
	i32 184, ; 211
	i32 9, ; 212
	i32 42, ; 213
	i32 4, ; 214
	i32 257, ; 215
	i32 293, ; 216
	i32 288, ; 217
	i32 30, ; 218
	i32 137, ; 219
	i32 91, ; 220
	i32 92, ; 221
	i32 308, ; 222
	i32 48, ; 223
	i32 140, ; 224
	i32 111, ; 225
	i32 139, ; 226
	i32 226, ; 227
	i32 114, ; 228
	i32 274, ; 229
	i32 156, ; 230
	i32 319, ; 231
	i32 75, ; 232
	i32 78, ; 233
	i32 246, ; 234
	i32 36, ; 235
	i32 268, ; 236
	i32 173, ; 237
	i32 230, ; 238
	i32 223, ; 239
	i32 63, ; 240
	i32 137, ; 241
	i32 15, ; 242
	i32 195, ; 243
	i32 115, ; 244
	i32 262, ; 245
	i32 271, ; 246
	i32 218, ; 247
	i32 47, ; 248
	i32 69, ; 249
	i32 79, ; 250
	i32 125, ; 251
	i32 93, ; 252
	i32 120, ; 253
	i32 278, ; 254
	i32 26, ; 255
	i32 239, ; 256
	i32 96, ; 257
	i32 27, ; 258
	i32 214, ; 259
	i32 306, ; 260
	i32 284, ; 261
	i32 148, ; 262
	i32 168, ; 263
	i32 4, ; 264
	i32 97, ; 265
	i32 32, ; 266
	i32 92, ; 267
	i32 261, ; 268
	i32 180, ; 269
	i32 21, ; 270
	i32 40, ; 271
	i32 169, ; 272
	i32 300, ; 273
	i32 232, ; 274
	i32 292, ; 275
	i32 246, ; 276
	i32 277, ; 277
	i32 271, ; 278
	i32 251, ; 279
	i32 2, ; 280
	i32 0, ; 281
	i32 133, ; 282
	i32 110, ; 283
	i32 321, ; 284
	i32 181, ; 285
	i32 312, ; 286
	i32 201, ; 287
	i32 309, ; 288
	i32 57, ; 289
	i32 94, ; 290
	i32 291, ; 291
	i32 38, ; 292
	i32 212, ; 293
	i32 321, ; 294
	i32 25, ; 295
	i32 93, ; 296
	i32 88, ; 297
	i32 98, ; 298
	i32 10, ; 299
	i32 86, ; 300
	i32 99, ; 301
	i32 258, ; 302
	i32 176, ; 303
	i32 278, ; 304
	i32 203, ; 305
	i32 288, ; 306
	i32 7, ; 307
	i32 243, ; 308
	i32 283, ; 309
	i32 200, ; 310
	i32 87, ; 311
	i32 238, ; 312
	i32 153, ; 313
	i32 287, ; 314
	i32 32, ; 315
	i32 115, ; 316
	i32 81, ; 317
	i32 322, ; 318
	i32 20, ; 319
	i32 11, ; 320
	i32 161, ; 321
	i32 3, ; 322
	i32 188, ; 323
	i32 295, ; 324
	i32 183, ; 325
	i32 181, ; 326
	i32 83, ; 327
	i32 282, ; 328
	i32 63, ; 329
	i32 297, ; 330
	i32 265, ; 331
	i32 142, ; 332
	i32 247, ; 333
	i32 156, ; 334
	i32 40, ; 335
	i32 116, ; 336
	i32 177, ; 337
	i32 202, ; 338
	i32 291, ; 339
	i32 254, ; 340
	i32 130, ; 341
	i32 74, ; 342
	i32 65, ; 343
	i32 301, ; 344
	i32 171, ; 345
	i32 206, ; 346
	i32 142, ; 347
	i32 105, ; 348
	i32 150, ; 349
	i32 69, ; 350
	i32 191, ; 351
	i32 155, ; 352
	i32 176, ; 353
	i32 120, ; 354
	i32 126, ; 355
	i32 296, ; 356
	i32 151, ; 357
	i32 229, ; 358
	i32 320, ; 359
	i32 140, ; 360
	i32 216, ; 361
	i32 293, ; 362
	i32 20, ; 363
	i32 14, ; 364
	i32 317, ; 365
	i32 134, ; 366
	i32 74, ; 367
	i32 58, ; 368
	i32 219, ; 369
	i32 166, ; 370
	i32 167, ; 371
	i32 186, ; 372
	i32 15, ; 373
	i32 73, ; 374
	i32 6, ; 375
	i32 23, ; 376
	i32 241, ; 377
	i32 200, ; 378
	i32 90, ; 379
	i32 294, ; 380
	i32 1, ; 381
	i32 135, ; 382
	i32 242, ; 383
	i32 264, ; 384
	i32 133, ; 385
	i32 68, ; 386
	i32 145, ; 387
	i32 303, ; 388
	i32 282, ; 389
	i32 233, ; 390
	i32 182, ; 391
	i32 87, ; 392
	i32 95, ; 393
	i32 223, ; 394
	i32 228, ; 395
	i32 298, ; 396
	i32 30, ; 397
	i32 44, ; 398
	i32 237, ; 399
	i32 202, ; 400
	i32 108, ; 401
	i32 157, ; 402
	i32 34, ; 403
	i32 22, ; 404
	i32 113, ; 405
	i32 56, ; 406
	i32 262, ; 407
	i32 143, ; 408
	i32 117, ; 409
	i32 119, ; 410
	i32 109, ; 411
	i32 204, ; 412
	i32 138, ; 413
	i32 210, ; 414
	i32 53, ; 415
	i32 193, ; 416
	i32 104, ; 417
	i32 304, ; 418
	i32 187, ; 419
	i32 188, ; 420
	i32 132, ; 421
	i32 276, ; 422
	i32 267, ; 423
	i32 255, ; 424
	i32 310, ; 425
	i32 233, ; 426
	i32 317, ; 427
	i32 190, ; 428
	i32 158, ; 429
	i32 289, ; 430
	i32 220, ; 431
	i32 162, ; 432
	i32 131, ; 433
	i32 255, ; 434
	i32 160, ; 435
	i32 302, ; 436
	i32 244, ; 437
	i32 139, ; 438
	i32 267, ; 439
	i32 263, ; 440
	i32 168, ; 441
	i32 189, ; 442
	i32 173, ; 443
	i32 191, ; 444
	i32 205, ; 445
	i32 272, ; 446
	i32 39, ; 447
	i32 231, ; 448
	i32 80, ; 449
	i32 55, ; 450
	i32 36, ; 451
	i32 96, ; 452
	i32 165, ; 453
	i32 171, ; 454
	i32 268, ; 455
	i32 81, ; 456
	i32 207, ; 457
	i32 97, ; 458
	i32 29, ; 459
	i32 158, ; 460
	i32 18, ; 461
	i32 126, ; 462
	i32 118, ; 463
	i32 227, ; 464
	i32 258, ; 465
	i32 240, ; 466
	i32 260, ; 467
	i32 164, ; 468
	i32 235, ; 469
	i32 323, ; 470
	i32 257, ; 471
	i32 248, ; 472
	i32 169, ; 473
	i32 16, ; 474
	i32 143, ; 475
	i32 295, ; 476
	i32 124, ; 477
	i32 117, ; 478
	i32 37, ; 479
	i32 114, ; 480
	i32 46, ; 481
	i32 141, ; 482
	i32 116, ; 483
	i32 196, ; 484
	i32 33, ; 485
	i32 192, ; 486
	i32 175, ; 487
	i32 94, ; 488
	i32 52, ; 489
	i32 196, ; 490
	i32 249, ; 491
	i32 128, ; 492
	i32 152, ; 493
	i32 24, ; 494
	i32 160, ; 495
	i32 226, ; 496
	i32 322, ; 497
	i32 147, ; 498
	i32 103, ; 499
	i32 0, ; 500
	i32 88, ; 501
	i32 214, ; 502
	i32 59, ; 503
	i32 141, ; 504
	i32 99, ; 505
	i32 5, ; 506
	i32 13, ; 507
	i32 121, ; 508
	i32 134, ; 509
	i32 27, ; 510
	i32 290, ; 511
	i32 195, ; 512
	i32 71, ; 513
	i32 224, ; 514
	i32 24, ; 515
	i32 197, ; 516
	i32 212, ; 517
	i32 253, ; 518
	i32 250, ; 519
	i32 307, ; 520
	i32 136, ; 521
	i32 205, ; 522
	i32 221, ; 523
	i32 167, ; 524
	i32 254, ; 525
	i32 286, ; 526
	i32 194, ; 527
	i32 100, ; 528
	i32 122, ; 529
	i32 225, ; 530
	i32 178, ; 531
	i32 162, ; 532
	i32 166, ; 533
	i32 228, ; 534
	i32 38, ; 535
	i32 185, ; 536
	i32 294, ; 537
	i32 17, ; 538
	i32 170, ; 539
	i32 307, ; 540
	i32 306, ; 541
	i32 136, ; 542
	i32 149, ; 543
	i32 217, ; 544
	i32 154, ; 545
	i32 129, ; 546
	i32 19, ; 547
	i32 64, ; 548
	i32 193, ; 549
	i32 146, ; 550
	i32 46, ; 551
	i32 314, ; 552
	i32 203, ; 553
	i32 78, ; 554
	i32 60, ; 555
	i32 105, ; 556
	i32 252, ; 557
	i32 207, ; 558
	i32 48, ; 559
	i32 238, ; 560
	i32 311, ; 561
	i32 249, ; 562
	i32 14, ; 563
	i32 177, ; 564
	i32 67, ; 565
	i32 170, ; 566
	i32 319, ; 567
	i32 213, ; 568
	i32 217, ; 569
	i32 316, ; 570
	i32 77, ; 571
	i32 222, ; 572
	i32 107, ; 573
	i32 206, ; 574
	i32 248, ; 575
	i32 66, ; 576
	i32 62, ; 577
	i32 199, ; 578
	i32 159, ; 579
	i32 215, ; 580
	i32 10, ; 581
	i32 185, ; 582
	i32 11, ; 583
	i32 172, ; 584
	i32 77, ; 585
	i32 125, ; 586
	i32 82, ; 587
	i32 179, ; 588
	i32 65, ; 589
	i32 106, ; 590
	i32 64, ; 591
	i32 127, ; 592
	i32 121, ; 593
	i32 76, ; 594
	i32 263, ; 595
	i32 253, ; 596
	i32 315, ; 597
	i32 8, ; 598
	i32 221, ; 599
	i32 2, ; 600
	i32 43, ; 601
	i32 266, ; 602
	i32 155, ; 603
	i32 127, ; 604
	i32 251, ; 605
	i32 23, ; 606
	i32 132, ; 607
	i32 209, ; 608
	i32 240, ; 609
	i32 310, ; 610
	i32 292, ; 611
	i32 28, ; 612
	i32 208, ; 613
	i32 61, ; 614
	i32 187, ; 615
	i32 89, ; 616
	i32 86, ; 617
	i32 147, ; 618
	i32 189, ; 619
	i32 35, ; 620
	i32 85, ; 621
	i32 229, ; 622
	i32 305, ; 623
	i32 300, ; 624
	i32 178, ; 625
	i32 49, ; 626
	i32 6, ; 627
	i32 89, ; 628
	i32 312, ; 629
	i32 21, ; 630
	i32 161, ; 631
	i32 95, ; 632
	i32 49, ; 633
	i32 112, ; 634
	i32 245, ; 635
	i32 320, ; 636
	i32 129, ; 637
	i32 75, ; 638
	i32 199, ; 639
	i32 222, ; 640
	i32 244, ; 641
	i32 7, ; 642
	i32 186, ; 643
	i32 174, ; 644
	i32 109, ; 645
	i32 245, ; 646
	i32 231 ; 647
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
