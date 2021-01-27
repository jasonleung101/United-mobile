import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SpendingPieChartData {
  final String type;
  final double amount;
  final Color color;

  SpendingPieChartData(this.type, this.amount, this.color);

  static charts.Color toChartsColor(Color color) {
    return charts.ColorUtil.fromDartColor(color);
  }

  static List<charts.Series<SpendingPieChartData, String>> initData(
      {String id, List<SpendingPieChartData> data}) {
    final _data = data;

    return [
      new charts.Series(
        id: id,
        domainFn: (SpendingPieChartData spendingPieChartData, _) =>
            spendingPieChartData.type,
        measureFn: (SpendingPieChartData spendingPieChartData, _) =>
            spendingPieChartData.amount,
        colorFn: (SpendingPieChartData spendingPieChartData, _) =>
            toChartsColor(spendingPieChartData.color),
        data: _data,
        labelAccessorFn: (SpendingPieChartData row, _) =>
            '${row.type}: ${row.amount}',
      )
    ];
  }
}
