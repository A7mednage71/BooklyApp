import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> LauncherUri(context, String? link) async {
  if (link != null) {
    Uri uri = Uri.parse(link);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('failed to launch')));
    }
  }
}
