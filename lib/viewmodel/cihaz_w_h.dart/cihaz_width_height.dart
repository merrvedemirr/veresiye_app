import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final screenDimensionsProvider = ChangeNotifierProvider<ScreenDimensions>((ref) {
  return ScreenDimensions();
});

class ScreenDimensions extends ChangeNotifier {
  double _width = 0;
  double _height = 0;

  double get width => _width;
  double get height => _height;

  void updateDimensions(BuildContext context) {
    final newWidth = MediaQuery.of(context).size.width;
    final newHeight = MediaQuery.of(context).size.height;

    if (_width != newWidth || _height != newHeight) {
      _width = newWidth;
      _height = newHeight;
      notifyListeners();
    }
  }
}
