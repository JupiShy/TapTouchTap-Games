import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void aboutPopup(BuildContext context) {
  String email = "ssofiakkirichok@gmail.com";

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(
          child: Text("About", textAlign: TextAlign.center),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Created by JupiShy"),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () async {
                final Uri url = Uri.parse("https://github.com/JupiShy");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Error open GitHub")),
                  );
                }
              },
              icon: Icon(Icons.open_in_new),
              label: Text("GitHub"),
            ),
            SizedBox(height: 25),
            Text("For questions, ideas, or bug reports:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(email, style: TextStyle(fontWeight: FontWeight.bold)),
                IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: email));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email copied to clipboard")),
                    );
                  },
                ),
              ],
            ),

          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Close"),
          ),
        ],
      );
    },
  );
}