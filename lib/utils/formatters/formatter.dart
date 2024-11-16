import 'package:intl/intl.dart';

class WFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  } // Customize the date format as needed

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\S')
        .format(amount); // Customize the currency local
  }

  static String formatPhoneNumber(String phoneNumber) {
// Assuming a 10-digit US phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
// Add more custom phone number formatting logic for different formats if needed.
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length < 3) {
      return 'Invalid phone number';
    }

    // Extract the country code from the digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;

      // Adjust group length for US numbers
      if (countryCode == '+1' && i == 0) {
        groupLength = 3; // First group for US numbers
      }

      // Prevent out-of-range errors
      int end = i + groupLength;
      if (end > digitsOnly.length) {
        end = digitsOnly.length; // Adjust end to not exceed length
      }

      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' '); // Add space if more digits remain
      }

      i = end; // Move to the next group
    }

    return formattedNumber.toString().trim(); // Return formatted number
  }
}
