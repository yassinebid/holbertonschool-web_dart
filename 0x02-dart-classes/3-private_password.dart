/*
 
*/
class Password {
  String? _password;
  Password({String password = ""}) {
    this._password = password;
  }
  isValid() {
    int lenPassword = _password!.length;
    if (lenPassword < 8 && 16 > lenPassword) return false;
    if (!(_password!.contains(RegExp(r'[A-Z]')) &&
        _password!.contains(RegExp(r'[a-z]')))) return false;
    if (!(_password!.contains(RegExp(r'[0-9]')))) return false;
    return true;
  }

  @override
  String toString() {
    return "Your Password is: ${this._password}";
  }
}
