import 'package:flutter/material.dart';

class WordCloudData {
  List<Map> data = [];

  WordCloudData({
    required this.data,
  }) {
    data = (data..sort((a, b) => a['value'].compareTo(b['value'])))
        .reversed
        .toList();
  }

  void addDataAsMapList(List<Map> newdata) {
    data.addAll(newdata);
    data = (data..sort((a, b) => a['value'].compareTo(b['value'])))
        .reversed
        .toList();
  }

  void addData(String word, double value, {Color? color}) {
    data.add({
      'word': word,
      'value': value,
      if (color != null) 'color': color,
    });
    data = (data..sort((a, b) => a['value'].compareTo(b['value'])))
        .reversed
        .toList();
  }

  List<Map> getData() {
    return data;
  }
}
