# twicon

twicon helps to integrate [TW Icon Fonts](https://www.twicon.page), into your
Flutter apps,

TW Icon Fonts consist of [free icons](https://www.twicon.page/icons.html)
covering topics like sights, products, traffic and so on. They let you to
promote your favorite places and cuisines in Taiwan easily.

The icons are designed by a Japanese designer, holoko, and an English designer
Rob. They are both living in Taiwan right now. For further information, please
visit [TW Icon Fonts](https://www.twicon.page).

A Flutter example web app is available at https://zonble.github.io/twicon/.

[Traditional Chinese]

twicon 套件可以讓您將 [TW Icon Fonts](https://www.twicon.page) 輕鬆整合到到您的 Flutter app 當中。

TW Icon Fonts 一套以台灣為主題的免費圖示，包含了屬於台灣風景、交通、本土產品的各
種圖示，從以下網頁中可以看到[完整列表]((https://www.twicon.page/icons.html))。
這套圖示是由兩位居住在台灣的日本設計師 holiko 以及英國設計師 Rob 所設計，更多相關資訊，
請參見 [TW Icon Fonts 的頁面](https://www.twicon.page)。

在 https://zonble.github.io/twicon/ 上面，也提供了以 Flutter Web 製作的範例。

## Usage

Adds `twicon` to your pubspec file, run `futter packages get`, then you can
import the package:

``` dart
import 'package:twicon/twicon.dart';
```

Then you can use these icons in widgets like `Icon`, `IconButton` and so on:

``` dart
Icon(TaiwanIcons.taipei101);
```

You can also run the example project, to view the icons included.

![screenshot.png](https://raw.githubusercontent.com/zonble/twicon/master/screenshot.png)
