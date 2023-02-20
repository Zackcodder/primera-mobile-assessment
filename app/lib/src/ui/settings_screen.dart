import 'package:flutter/material.dart';

import '../architecture/mvc.dart';
import '../controllers/settings.dart';
import '../shared/colors.dart';
import '../widgets/setting_card.dart';

class SettingScreenView
    extends StatelessView<SettingScreenScreen, SettingScreenController> {
  const SettingScreenView(SettingScreenController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:
            controller.changeTheme ? AppColors.black : AppColors.white,
        title: Text(
          'More',
          style: TextStyle(
            color: controller.changeTheme ? AppColors.white : AppColors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Text('Account'),
            const SizedBox(height: 16),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Column(
                children: [
                  cardSetting(
                      themeSwitch: false,
                      text: 'My Profile',
                      icon: Icons.person),
                  cardSettingWithIcon(
                      themeSwitch: false,
                      text: 'Account Verification',
                      icon: Icons.security_update,
                      widget: const Chip(
                        label: Text(
                          "Verified",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.green,
                      )),
                  cardSetting(
                      themeSwitch: false,
                      text: 'Notification',
                      icon: Icons.notifications_active),
                  cardSetting(
                      themeSwitch: false,
                      text: 'Upgrade Account',
                      icon: Icons.upcoming),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text('Security'),
            const SizedBox(height: 16),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Column(
                children: [
                  cardSetting(
                      themeSwitch: false,
                      text: 'Change Password',
                      icon: Icons.password),
                  cardSetting(
                    themeSwitch: false,
                    text: 'Change Transaction PIN',
                    icon: Icons.pin,
                  ),
                  cardSetting(
                      themeSwitch: false,
                      text: 'Biometric & 2FA',
                      icon: Icons.fingerprint),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text('Finances'),
            const SizedBox(height: 16),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: cardSetting(
                  themeSwitch: false, text: 'Cards', icon: Icons.card_giftcard),
            ),
            const SizedBox(height: 16),
            const Text('Prefences'),
            const SizedBox(height: 16),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: cardSettingWithIcon(
                  themeSwitch: false,
                  text: 'System Prefences',
                  icon: Icons.system_security_update,
                  widget: Switch(
                    value: controller.changeTheme,
                    onChanged: (value) {
                      controller.changeThemeValue(value);
                    },
                  )),
            ),
            const SizedBox(height: 16),
            const Text('Others'),
            const SizedBox(height: 16),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Column(
                children: [
                  cardSetting(
                      themeSwitch: false,
                      text: 'Refer & Earn',
                      icon: Icons.people),
                  cardSettingWithIcon(
                    themeSwitch: false,
                    text: 'Terms & Conditions ',
                    icon: Icons.lock,
                  ),
                  cardSetting(
                      themeSwitch: false,
                      text: 'Statement of Account',
                      icon: Icons.edit),
                  cardSetting(
                      themeSwitch: false,
                      text: 'Privacy Policy',
                      icon: Icons.privacy_tip),
                  cardSetting(
                      themeSwitch: false, text: 'Log Out', icon: Icons.login),
                  cardSettingWithColor(
                      themeSwitch: false,
                      text: 'Delete Account',
                      icon: Icons.delete),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 50, right: 50),
              height: 40,
              // width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: controller.changeTheme
                    ? AppColors.primary
                    : AppColors.greyscale400Color,
              ),
              child: const Center(child: Text("Check for updates")),
            )
          ],
        ),
      ),
    );
  }
}
