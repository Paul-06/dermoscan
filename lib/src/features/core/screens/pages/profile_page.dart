import 'package:dermoscan/src/constants/colors.dart';
import 'package:dermoscan/src/constants/image_strings.dart';
import 'package:dermoscan/src/constants/sizes.dart';
import 'package:dermoscan/src/constants/text_strings.dart';
import 'package:dermoscan/src/features/core/screens/pages/profile_widgets/profile_menu.dart';
import 'package:dermoscan/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:dermoscan/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var backgroundColor = isDark ? caribbean400 : dPrimaryColor;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          dProfile,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                          image: AssetImage(dProfileImage),
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: backgroundColor,
                      ),
                      child: const Icon(
                        LineAwesomeIcons.alternate_pencil,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                dProfileHeading,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                dProfileSubHeading,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const UpdateProfileScreen()),
                  child: const Text(dEditProfile),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(), // This helps us to centralize everything
              const SizedBox(
                height: 10,
              ),
              // Menu Section
              ProfileMenuWidget(
                  title: dMenu1, icon: LineAwesomeIcons.cog, onPress: () {}),
              ProfileMenuWidget(
                  title: dMenu2,
                  icon: LineAwesomeIcons.folder_open,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: dMenu3,
                  icon: LineAwesomeIcons.user_check,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: dMenu4, icon: LineAwesomeIcons.info, onPress: () {}),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: dLogoutDialog,
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    AuthenticationRepository.instance.logout();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
