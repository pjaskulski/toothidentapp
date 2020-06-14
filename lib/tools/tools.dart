import 'package:flutter/material.dart';

void showAppAbout(BuildContext context) {
  showAboutDialog(
      context: context,
      applicationIcon: Icon(Icons.device_hub),
      applicationName: 'Tooth Identification',
      applicationVersion: '0.1',
      applicationLegalese: 'Developed by Piotr Jaskulski',
      children: <Widget>[
        Text(
            'Application based on methodology described in: "Human Osteology" (Tim D. White, Michael T. Black, Pieter A. Folkens, Academic Press 2011).'),
        Text('Simple interactive decision tree.'),
        Text('https://github.com/pjaskulski/toothidentapp'),
      ]);
}
