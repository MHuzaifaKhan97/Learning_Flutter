import 'package:flutter/material.dart';

Color backgroundColor = Colors.black.withOpacity(0.9);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'images/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'images/rabbit.png'},
  {'name': 'Parrots', 'iconPath': 'images/parrot.png'},
  {'name': 'Horses', 'iconPath': 'images/horse.png'}
];

List<Map> drawerItems = [
  {'icon': Icons.dashboard, 'title': 'Dashboard'},
  {'icon': Icons.ac_unit_sharp, 'title': 'Your Profile'},
  {'icon': Icons.account_balance, 'title': 'Accounts'},
  {'icon': Icons.payment, 'title': 'Payments'},
  {'icon': Icons.schedule, 'title': 'Schedule Payments'},
  {'icon': Icons.payments, 'title': 'Payee Management'},
  {'icon': Icons.history, 'title': 'E-Transaction History'},
  {
    'icon': Icons.insert_invitation_rounded,
    'title': 'Invite Friend/Family via QR'
  },
  {'icon': Icons.feedback, 'title': 'Feedback'},
];
