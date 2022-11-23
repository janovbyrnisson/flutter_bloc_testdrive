# flutter_bloc_testdrive

![](../../../D:/App%20Projects/flutter_bloc_testdrive/home_screen.png)

A test drive [Flutter BLoC](https://pub.dev/packages/flutter_bloc) project. Use it as a base for your project or as pure inspiration. It's a cross-platform *BLoC + Freezed + JSON & HTTP* example app.

Uses [Freezed](https://pub.dev/packages/freezed) for immutable model, state and event classes.

Loads data from a free [Jokes API](https://official-joke-api.appspot.com/) for demonstration purposes.

## Getting Started

The app was tested on Windows, MacOS & Web environments only. It uses code generation that has to be run before starting the project.

[Windows Only] Clean the project for getting rid of Windows CMake file issues:
```
flutter clean
```

Run code generation:
```
flutter pub run build_runner build
```

Run the project
```
flutter run -d [DEVICE_NAME]
```

## License

```
MIT License

Copyright (c) 2022, Janov Byrnisson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
