class Validation {
  static String? emptyValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required.';
    }
    return null;
  }

  static String? validateEmailOrUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required.';
    }

    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (emailRegex.hasMatch(value)) {
      return "Enter email valid";
    }

    final usernameRegex = RegExp(r'^[a-zA-Z0-9]{3,15}$');
    if (usernameRegex.hasMatch(value)) {
      return null;
    }

    return 'Enter a valid email or username.';
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }
    if (!RegExp(r'^\d{10}$').hasMatch(value)) {
      return 'Enter a valid 10-digit phone number.';
    }
    return null;
  }
}
