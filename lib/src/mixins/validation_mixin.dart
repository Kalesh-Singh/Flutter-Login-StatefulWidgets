class ValidationMixin {
  String validateEmail(String value) {
    // Should return null if valid, else the error message if invalid
    return (value.contains('@')) ? null : 'Invalid email';
  }

  String validatePassword (String value) {
    return (value.length > 3) ? null : 'Password is too short';
  }
}
