class Password {
  late String _password;
  set password(String value) {
    _password = value;
  }

  String get password {
    return _password;
  }

  Password({String password = ""}) {
    this._password = password;
  }
  isValid() {
    int lenPassword = password.length;
    if (lenPassword < 8 && 16 > lenPassword) return false;
    if (!(password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[a-z]')))) return false;
    if (!(password.contains(RegExp(r'[0-9]')))) return false;
    return true;
  }

  @override
  String toString() {
    return "Your Password is: ${this.password}";
  }
}
