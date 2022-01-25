import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future getPrayerTime() async {
  var response = await http
      .get(Uri.parse("https://dashboard.deatrust.org/Public/NamazTime/"));
  var data = jsonDecode(response.body.toString());

  try {
    if (response.statusCode == 200) {
      print("true" + data);
      return data;
    } else {
      print("false" + data);
    }
  } catch (e) {
    print("Error");
  }
}

class PrayerTimeScreen extends StatelessWidget {
  const PrayerTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getPrayerTime(),
        builder: (context, snapshot) {
          return Image.network(snapshot.data!.toString());
        },
      ),
    );
  }
}
