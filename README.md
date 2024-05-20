# async_widget_builder

<img src="https://forthebadge.com/images/badges/built-with-love.svg" height="28px" />

Adds two handy functions to make it easier to deal with async data types in the widget tree.


## Getting started

First, add the `async_widget_builder` package to your pubspec.yaml.
```yaml
dependencies:
  async_widget_builder: <Package version>
```
or
```yaml
dependencies:
  async_widget_builder:
    git: 
      url: https://github.com/AxonDesigns/async_widget_builder.git
```
then, execute `flutter pub get`.

Now, import the package in your Dart code, use:
```dart
import 'package:async_widget_builder/async_widget_builder.dart';
```

## Usage

### Future

```dart
exampleFuture.widget(
  data: (data) => Text(data),
  loading: () => const CircularProgressIndicator(),
  error: (err, stackTrace) => Text('Error: $err'),
)
```

### Stream

```dart
exampleStream.widget(
  data: (data) => Text(data),
  loading: (state) => const CircularProgressIndicator(),
  error: (err, stackTrace) => Text('Error: $err'),
)
```