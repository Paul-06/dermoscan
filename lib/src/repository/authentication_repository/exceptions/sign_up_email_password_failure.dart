class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = "Se ha producido un error desconocido."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure(
            'Por favor, introduce una contraseña más segura.');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure(
            'El correo electrónico no es válido.');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure(
            'Ya existe una cuenta para ese correo electrónico.');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
            'Operación no permitida. Por favor, ponte en contacto con el soporte.');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure(
            'Este usuario ha sido deshabilitado. Por favor, ponte en contacto con el soporte para obtener ayuda.');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
