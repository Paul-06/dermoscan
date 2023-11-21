class SignInWithEmailAndPasswordFailure {
  final String message;

  const SignInWithEmailAndPasswordFailure(
      [this.message = "Se ha producido un error desconocido."]);

  factory SignInWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'wrong-password':
        return const SignInWithEmailAndPasswordFailure(
            'La contraseña es incorrecta.');
      case 'INVALID_LOGIN_CREDENTIALS':
        return const SignInWithEmailAndPasswordFailure(
            'Credenciales inválidas.');
      case 'user-not-found':
        return const SignInWithEmailAndPasswordFailure(
            'No existe ningún usuario con ese correo electrónico.');
      case 'operation-not-allowed':
        return const SignInWithEmailAndPasswordFailure(
            'Operación no permitida. Por favor, ponte en contacto con el soporte.');
      case 'user-disabled':
        return const SignInWithEmailAndPasswordFailure(
            'Este usuario ha sido deshabilitado. Por favor, ponte en contacto con el soporte para obtener ayuda.');
      default:
        return const SignInWithEmailAndPasswordFailure();
    }
  }
}
