import 'package:flutter/material.dart';

void privacyPolicy(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Privacy Policy'),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    '• We value your privacy and are committed to protecting your personal information.'),
                Text(
                    '• We collect personal information only when necessary and with your consent.'),
                Text(
                    '• The data we collect may include your name, email address, and phone number.'),
                Text(
                    '• We use your information to provide, maintain, and improve our services.'),
                Text(
                    '• We do not sell or rent your personal information to third parties.'),
                Text(
                    '• We may share your information with service providers who assist us in operating our services.'),
                Text(
                    '• We implement reasonable security measures to protect your information from unauthorized access.'),
                Text(
                    '• You have the right to access, correct, or delete your personal information.'),
                Text(
                    '• We may update our privacy policy from time to time, and any changes will be posted on this page.'),
                Text(
                    '• By using our services, you consent to our privacy policy and its terms.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'))
          ],
        );
      });
}
