import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/helper/sharedpreferences.dart';
import 'package:kinematika_gerak_lurus/page/soal5/explanation5.dart';
import 'package:kinematika_gerak_lurus/page/soal5/extra5.dart';

class Soal5 extends StatefulWidget {
  const Soal5({super.key});

  @override
  State<Soal5> createState() => _Soal5State();
}

class _Soal5State extends State<Soal5> {
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
                          "SOAL No 5.",
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
                                  width: double.maxFinite,
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      const Text(
                                        "Di bawah ini merupakan grafik kecepatan benda (v) terhadap waktu (t).",
                                        textAlign: TextAlign.justify,
                                      ),
                                      Image.asset('assets/soal5.jpg'),
                                      const Text(
                                        "Manakah pernyataan berikut ini yang benar?",
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
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
                              Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: InkWell(
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
                                                  "Pada saat 4 detik, benda B mengejar benda A",
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: InkWell(
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
                                                  "Pada saat 4 detik pertama, benda B memiliki kecepatan rata-rata 5 m/s.",
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: InkWell(
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
                                                  "Pada saat 4 detik, kedua benda menempuh jarak yang sama",
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: InkWell(
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
                                                  "Benda A tidak bergerak.",
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: InkWell(
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
                                                  "Benda B bergerak dengan kecepatan tetap dan positif",
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(flex: 1, child: Container()),
                                ],
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
                                child: Text(
                                  "SKOR ANDA : ${(Prefs.readInt("score1") ?? 0) + (Prefs.readInt('score2') ?? 0) + (Prefs.readInt('score3') ?? 0) + (Prefs.readInt('score4') ?? 0)}",
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
      Prefs().saveInt("score5", 10);
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
                    """Anda menganggap bahwa benda B telah mengejar benda A hanya berdasarkan kecepatan tanpa mempertimbangkan posisi relatif awal atau jarak yang telah ditempuh oleh kedua benda sebelumnya.
                    \nPerhatikan grafik kecepatan benda (v) terhadap waktu (t) di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal5.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik kecepatan terhadap waktu dari gerak dua buah benda.
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra5()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'B') {
      if (Prefs.checkData("score5") == false) {
        Prefs().saveInt("score5", 20);
      }
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.green[100],
          title: const Text('😁 Jawaban Benar'),
          content: const SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Anda sudah benar menbaca grafik posisi terhadap waktu. Silahkan memilih penjelasan grafik tersebut dari berbagai pilihan representasi yang disediakan.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Explanation5()),
              child: const Text('Lanjut'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'C') {
      Prefs().saveInt("score5", 10);
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
                    """Anda menganggap bahwa benda yang memiliki kecepatan sama akan menempuh jarak yang sama. Grafik ini hanya menunjukkan kecepatan terhadap waktu, bukan jarak yang ditempuh.
                    \nPerhatikan grafik kecepatan benda (v) terhadap waktu (t) di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal5.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik kecepatan terhadap waktu dari gerak dua buah benda.
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra5()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'D') {
      Prefs().saveInt("score5", 10);
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red[100],
          title: const Text('😌 Jawaban Salah'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: double.maxFinite,
                child: Text(
                  """Anda menganggap menafsirkan grafik benda A yang lebih datar dibandingkan benda B sebagai indikasi bahwa benda A tidak bergerak.
                  \nPerhatikan grafik kecepatan benda (v) terhadap waktu (t) di bawah ini.""",
                  textAlign: TextAlign.justify,
                ),
              ),
              Image.asset('assets/soal5.jpg'),
              const Text(
                """Grafik di atas merupakan grafik kecepatan terhadap waktu dari gerak dua buah benda.
                \nBagaimana memahami grafik tersebut?""",
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Get.offAll(() => const Extra5()),
                child: const Text('OK'))
          ],
        ),
      );
    } else if (pilihan == 'E') {
      Prefs().saveInt("score5", 10);
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
                    """Anda menganggap grafik kecepatan terhadap waktu sebagai grafik percepatan terhadap waktu.
                    \nPerhatikan grafik kecepatan benda (v) terhadap waktu (t) di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal5.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik kecepatan terhadap waktu dari gerak dua buah benda.
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra5()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
