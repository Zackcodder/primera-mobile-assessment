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
                      widget: Chip(
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
          ],
        ),
      ),
    );
  }
}
