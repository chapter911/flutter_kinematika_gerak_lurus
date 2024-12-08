import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/helper/sharedpreferences.dart';
import 'package:kinematika_gerak_lurus/page/splash_screen.dart';

class Score extends StatefulWidget {
  const Score({super.key});

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Skor Akhir"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Ulangi Pengerjaan?"),
                  content: const Text(
                    "Apakah anda ingin mengulang mengerjakan soal?",
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Tidak"),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offAll(() => const SplashScreen());
                      },
                      child: const Text("Ya"),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.maxFinite,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Soal')),
            DataColumn(label: Text('Skor')),
          ],
          rows: [
            DataRow(cells: [
              const DataCell(Text('1')),
              DataCell(Text("${Prefs.readInt("score1") ?? ""}")),
            ]),
            DataRow(cells: [
              const DataCell(Text('2')),
              DataCell(Text("${Prefs.readInt("score2") ?? ""}")),
            ]),
            DataRow(cells: [
              const DataCell(Text('3')),
              DataCell(Text("${Prefs.readInt("score3") ?? ""}")),
            ]),
            DataRow(cells: [
              const DataCell(Text('4')),
              DataCell(Text("${Prefs.readInt("score4") ?? ""}")),
            ]),
            DataRow(cells: [
              const DataCell(Text('5')),
              DataCell(Text("${Prefs.readInt("score5") ?? ""}")),
            ]),
            DataRow(cells: [
              const DataCell(Text(
                'Total',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              DataCell(Text(
                "${(Prefs.readInt("score1") ?? 0) + (Prefs.readInt('score2') ?? 0) + (Prefs.readInt('score3') ?? 0) + (Prefs.readInt('score4') ?? 0) + (Prefs.readInt('score5') ?? 0)}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
            ]),
          ],
        ),
      ),
    );
  }
}
