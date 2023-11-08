import 'package:dermoscan/src/repository/authentication_repository/authentication_repository.dart';
import 'package:dermoscan/src/repository/user_repository/user_repository.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  // Fetch Data
  // Step 3: Get user email and password to UserRepository to fetch user record
  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if(email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar("Error", "Inicia sesión para continuar.");
    }
  }
}