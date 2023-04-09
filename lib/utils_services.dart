import 'package:intl/intl.dart';

class UtilServices {
  String priceToCurrency(double value) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(value);
  }
}
