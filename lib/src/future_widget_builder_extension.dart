import 'package:flutter/widgets.dart';

extension FutureWidgetBuilder<T> on Future<T> {
  Widget buildWidget({
    T? initialData,
    required Widget Function(T data) data,
    required Widget Function() loading,
    required Widget Function(Object err, StackTrace stackTrace) error,
  }) {
    return FutureBuilder<T>(
      future: this,
      initialData: initialData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return data(snapshot.data as T);
        }
        if (snapshot.hasError) {
          return error(snapshot.error!, snapshot.stackTrace!);
        }
        return loading();
      },
    );
  }
}
