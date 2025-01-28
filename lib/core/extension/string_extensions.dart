import 'package:collection/collection.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

extension StringExtensions on String {
  String get translated => tr().replaceAll(' - 404', '');

  String translateNumbers() {
    return LocalizeAndTranslate.isRTL()
        ? replaceAll('0', '٠')
            .replaceAll('1', '١')
            .replaceAll('2', '٢')
            .replaceAll('3', '٣')
            .replaceAll('4', '٤')
            .replaceAll('5', '٥')
            .replaceAll('6', '٦')
            .replaceAll('7', '٧')
            .replaceAll('8', '٨')
            .replaceAll('9', '٩')
        : this;
  }

  bool isValidNumber() {
    // Attempt to parse the string as a number (integer or double)
    final number = num.tryParse(this);
    // Return true if the parsing succeeded, meaning it's a valid number
    return number != null;
  }

  String get phonePrefixPosition => '\u200E$this';

  String get priceFormatted {
    final String price = this;
    final List<String> parts = price.split('.');
    final String whole = parts.firstOrNull ?? '';
    final String fraction = parts.length > 1 ? (parts.lastOrNull ?? '') : '';
    final String formattedWhole = whole.replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
    return fraction.isEmpty ? formattedWhole : '$formattedWhole.$fraction';
  }

  T? toEnum<T>(List<T> enumValues) {
    return enumValues.firstWhereOrNull(
      (e) => e.toString().split('.').lastOrNull == this,
    );
  }

  bool get isAssetPath {
    return startsWith('assets/');
  }

  bool get isSvg {
    return toLowerCase().endsWith('.svg');
  }
}
