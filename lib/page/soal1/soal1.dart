import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/helper/sharedpreferences.dart';
import 'package:kinematika_gerak_lurus/page/soal1/explanation1.dart';
import 'package:kinematika_gerak_lurus/page/soal1/extra1.dart';

class Soal1 extends StatefulWidget {
  const Soal1({super.key});

  @override
  State<Soal1> createState() => _Soal1State();
}

class _Soal1State extends State<Soal1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.asset('assets/splash_screen.jpg').image,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Flexible(
                  flex: 11,
                  child: Column(
                    children: [
                      const SizedBox(
                        width: double.maxFinite,
                        child: Text(
                          "SOAL No 1.",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Card(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  child: const Text(
                                      "Berikut adalah grafik hubungan posisi terhadap waktu dari gerak sebuah benda. Kalimat manakah yang merupakan penafsiran yang benar?"),
                                ),
                              ),
                              Card(
                                child: Container(
                                  width: double.maxFinite,
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset('assets/soal1.jpg'),
                                ),
                              ),
                              const SizedBox(
                                width: double.maxFinite,
                                child: Text(
                                  "Pilih Jawaban Anda",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  tampilDialog("A");
                                },
                                child: Card(
                                  child: Container(
                                    width: double.maxFinite,
                                    padding: const EdgeInsets.all(10),
                                    child: const IntrinsicHeight(
                                      child: Row(children: [
                                        Flexible(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              "A.",
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          color: Colors.black,
                                          thickness: 1,
                                        ),
                                        Flexible(
                                          flex: 10,
                                          child: Text(
                                            "Benda menggelinding di sepanjang permukaan datar. Kemudian bergerak ke depan menuruni bukit, dan akhirnya berhenti.",
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  tampilDialog("B");
                                },
                                child: Card(
                                  child: Container(
                                    width: double.maxFinite,
                                    padding: const EdgeInsets.all(10),
                                    child: const IntrinsicHeight(
                                      child: Row(children: [
                                        Flexible(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              "B.",
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          color: Colors.black,
                                          thickness: 1,
                                        ),
                                        Flexible(
                                          flex: 10,
                                          child: Text(
                                            "Benda mula-mula diam. Kemudian bergerak ke depan menuruni bukit dan akhirnya berhenti.",
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  tampilDialog("C");
                                },
                                child: Card(
                                  child: Container(
                                    width: double.maxFinite,
                                    padding: const EdgeInsets.all(10),
                                    child: const IntrinsicHeight(
                                      child: Row(children: [
                                        Flexible(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              "C.",
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          color: Colors.black,
                                          thickness: 1,
                                        ),
                                        Flexible(
                                          flex: 10,
                                          child: Text(
                                            "Benda bergerak dengan kecepatan tetap. Kemudian melambat dan berhenti.",
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  tampilDialog("D");
                                },
                                child: Card(
                                  child: Container(
                                    width: double.maxFinite,
                                    padding: const EdgeInsets.all(10),
                                    child: const IntrinsicHeight(
                                      child: Row(children: [
                                        Flexible(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              "D.",
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          color: Colors.black,
                                          thickness: 1,
                                        ),
                                        Flexible(
                                          flex: 10,
                                          child: Text(
                                            "Benda mula-mula diam. Kemudian bergerak ke belakang dan akhirnya berhenti.",
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  tampilDialog("E");
                                },
                                child: Card(
                                  child: Container(
                                    width: double.maxFinite,
                                    padding: const EdgeInsets.all(10),
                                    child: const IntrinsicHeight(
                                      child: Row(children: [
                                        Flexible(
                                          flex: 1,
                                          child: Center(
                                            child: Text(
                                              "E.",
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          color: Colors.black,
                                          thickness: 1,
                                        ),
                                        Flexible(
                                          flex: 10,
                                          child: Text(
                                            "Benda bergerak di sepanjang area datar, bergerak mundur menuruni bukit, dan kemudian terus bergerak.",
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
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
                                child: const Text(
                                  "SKOR ANDA : 0",
                                  style: TextStyle(
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
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.exit_to_app,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void tampilDialog(String pilihan) {
    if (pilihan == 'A') {
      Prefs().saveInt("score1", 10);
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red[100],
          title: const Text('😌 Jawaban Salah'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Anda membaca grafik sebagai gambar lintasan.\n\nPerhatikan grafik hubungan posisi terhadap waktu dari gerak sebuah benda di bawah ini.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal1.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Sumbu vertical menunjukan posisi benda, sedangkan sumbu horizontal menunjukan waktu. Pada waktu yang berbeda (t), dapat dilihat posisi benda (x).\n\nBagaimana memahami grafik tersebut?',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra1()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'B') {
      Prefs().saveInt("score1", 10);
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red[100],
          title: const Text('😌 Jawaban Salah'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Anda sudah benar membaca grafik, ketika 4 detik pertama benda diam. Tetapi, Ketika anda melihat grafik yg turun, anda memikirkan lintasannya turun.\n\nPerhatikan grafik hubungan posisi terhadap waktu dari gerak sebuah benda di bawah ini.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal1.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Sumbu vertical menunjukan posisi benda, sedangkan sumbu horizontal menunjukan waktu. Pada waktu yang berbeda (t), dapat dilihat posisi benda (x).\n\nBagaimana memahami grafik tersebut?',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra1()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'C') {
      Prefs().saveInt("score1", 10);
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red[100],
          title: const Text('😌 Jawaban Salah'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Anda membaca grafik posisi terhadap waktu sebagai grafik kecepatan terhadap waktu.\n\nPerhatikan grafik hubungan posisi terhadap waktu dari gerak sebuah benda di bawah ini.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal1.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Sumbu vertical menunjukan posisi benda, sedangkan sumbu horizontal menunjukan waktu. Pada waktu yang berbeda (t), dapat dilihat posisi benda (x).\n\nBagaimana memahami grafik tersebut?',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra1()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'D') {
      if (Prefs.checkData("score1") == false) {
        Prefs().saveInt("score1", 20);
      }
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.green[100],
          title: const Text('😁 Jawaban Benar'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Anda telah memahami gerak benda secara keseluruhan.\n\nPerhatikan grafik posisi terhadap waktu di bawah ini.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal1.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Grafik di atas dapat direpresentasikan dalam beberapa representasi.',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () => Get.offAll(() => const Explanation1()),
                child: const Text('Lanjut'))
          ],
        ),
      );
    } else if (pilihan == 'E') {
      Prefs().saveInt("score1", 10);
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red[100],
          title: const Text('😌 Jawaban Salah'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Anda membaca grafik sebagai gambar lintasan.\n\nPerhatikan grafik hubungan posisi terhadap waktu dari gerak sebuah benda di bawah ini.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal1.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Sumbu vertical menunjukan posisi benda, sedangkan sumbu horizontal menunjukan waktu. Pada waktu yang berbeda (t), dapat dilihat posisi benda (x).\n\nBagaimana memahami grafik tersebut?',
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra1()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
