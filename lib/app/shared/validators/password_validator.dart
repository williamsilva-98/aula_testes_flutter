class PasswordValidator {
  String? validate({String? password}) {
    if (password == null || password == '') {
      return 'A senha é obrigatória';
    }

    if (password.length < 6) {
      return 'A senha deve possuir pelo menos 6 caracteres';
    }

    final alphanumeric = RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9]).+$');
    if (!alphanumeric.hasMatch(password)) {
      return 'A senha deve ser alfanumérica';
    }

    return null;
  }
}
