import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:get/get.dart';

import '../../helper/sharedpreferences.dart';

var footer = Row(
  children: [
    Flexible(
      flex: 10,
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Card(
          elevation: 10,
          child: Center(
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              child: Text(
                "SKOR ANDA : ${Prefs.readInt('score') ?? 0}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    Flexible(
      flex: 2,
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: (Get.context as BuildContext),
                builder: (context) => AlertDialog(
                      title: const Text('Keluar'),
                      content: const Text('Apakah Anda yakin?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text('Tidak')),
                        TextButton(
                            onPressed: () {
                              FlutterExitApp.exitApp();
                            },
                            child: const Text('Ya')),
                      ],
                    ));
          },
          child: const Icon(
            Icons.exit_to_app,
            color: Colors.red,
          ),
        ),
      ),
    ),
  ],
);
