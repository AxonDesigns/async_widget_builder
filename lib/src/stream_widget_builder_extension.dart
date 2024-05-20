import 'package:flutter/widgets.dart';

extension StreamWidgetBuilder<T> on Stream<T> {
  Widget widget({
    T? initialData,
    required Widget Function(T data) data,
    required Widget Function(ConnectionState state) loading,
    required Widget Function(Object err, StackTrace stackTrace) error,
  }) {
    return StreamBuilder<T>(
      stream: this,
      initialData: initialData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return data(snapshot.data as T);
        }
        if (snapshot.hasError) {
          return error(snapshot.error!, snapshot.stackTrace!);
        }
        return loading(snapshot.connectionState);
      },
    );
  }
}
