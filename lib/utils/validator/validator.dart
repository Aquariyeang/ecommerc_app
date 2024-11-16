class WValidator {
  // Validate Email
  static String validateEmail(String email) {
    final RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (email.isEmpty) {
      return 'Email cannot be empty.';
    } else if (!emailRegex.hasMatch(email)) {
      return 'Please enter a valid email address.';
    }
    return 'Email is valid.';
  }

  // Validate Password
  static String validatePassword(String password) {
    final RegExp passwordRegex = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');

    if (password.isEmpty) {
      return 'Password cannot be empty.';
    } else if (!passwordRegex.hasMatch(password)) {
      return 'Password must be at least 8 characters long, include uppercase, lowercase, digit, and special character.';
    }
    return 'Password is valid.';
  }

  // Validate Phone Number (Assuming international format)
  static String validatePhoneNumber(String phoneNumber) {
    final RegExp phoneRegex = RegExp(r'^\+?[0-9]{1,3}[-. ]?[0-9]{6,14}$');

    if (phoneNumber.isEmpty) {
      return 'Phone number cannot be empty.';
    } else if (!phoneRegex.hasMatch(phoneNumber)) {
      return 'Please enter a valid phone number in international format.';
    }
    return 'Phone number is valid.';
  }
}
