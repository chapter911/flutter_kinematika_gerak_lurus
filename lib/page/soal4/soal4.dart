import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/helper/sharedpreferences.dart';
import 'package:kinematika_gerak_lurus/page/soal4/explanation4.dart';
import 'package:kinematika_gerak_lurus/page/soal4/extra4.dart';

class Soal4 extends StatefulWidget {
  const Soal4({super.key});

  @override
  State<Soal4> createState() => _Soal4State();
}

class _Soal4State extends State<Soal4> {
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
                  flex: 15,
                  child: Column(
                    children: [
                      const SizedBox(
                        width: double.maxFinite,
                        child: Text(
                          "SOAL No 4.",
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
                                        "Di bawah ini adalah grafik posisi-waktu dari gerak dua benda A dan B.",
                                        textAlign: TextAlign.justify,
                                      ),
                                      Image.asset('assets/soal4.jpg'),
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
                                                  "Benda B memiliki kecepatan yang lebih besar daripada benda A pada interval 0 sampai 5 detik.",
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
                                                  "Pada saat 5 detik, benda A memiliki kecepatan yang lebih besar daripada benda B.",
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
                                                  "Kecepatan benda B sama dengan kecepatan benda A pada saat 5 detik.",
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
                                                  "Benda A bergerak dengan kecepatan konstan.",
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
                                                  "Benda B bergerak dipercepat.",
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
                                  "SKOR ANDA : ${(Prefs.readInt("score1") ?? 0) + (Prefs.readInt('score2') ?? 0) + (Prefs.readInt('score3') ?? 0) + (Prefs.readInt('score4') ?? 0) + (Prefs.readInt('score5') ?? 0)}",
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
      Prefs().saveInt("score4", 10);
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
                    """Anda menganggap kecepatan benda lebih cepat jika garisnya lebih pendek.
                    \nPerhatikan grafik posisi-waktu dari gerak dua benda A dan B di bawah ini""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal4.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik posisi terhadap waktu dari gerak dua buah benda.
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra4()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'B') {
      Prefs().saveInt("score4", 20);
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
                    """Anda sudah benar menbaca grafik posisi terhadap waktu. """,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal4.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Silahkan memilih penjelasan grafik tersebut dari berbagai pilihan representasi yang disediakan.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Explanation4()),
              child: const Text('Lanjut'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'C') {
      Prefs().saveInt("score4", 10);
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
                    """Anda salah menafsirkan grafik posisi terhadap waktu sebagai grafik kecepatan terhadap waktu.
                    \nPerhatikan grafik posisi-waktu dari gerak dua benda A dan B di bawah ini""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal4.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik posisi terhadap waktu dari gerak dua buah benda.
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra4()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'D') {
      Prefs().saveInt("score4", 10);
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
                  """Anda salah menafsirkan jenis gerak berdasarkan grafik posisi terhadap waktu
                  \nPerhatikan grafik posisi-waktu dari gerak dua benda A dan B di bawah ini""",
                  textAlign: TextAlign.justify,
                ),
              ),
              Image.asset('assets/soal3.jpg'),
              const Text(
                """Grafik di atas merupakan grafik posisi terhadap waktu dari gerak dua buah benda.
                \nBagaimana memahami grafik tersebut?""",
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Get.offAll(() => const Extra4()),
                child: const Text('OK'))
          ],
        ),
      );
    } else if (pilihan == 'E') {
      Prefs().saveInt("score4", 10);
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
                    """Anda salah menafsirkan jenis gerak berdasarkan grafik posisi terhadap waktu
                    \nPerhatikan grafik posisi-waktu dari gerak dua benda A dan B di bawah ini""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal3.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik posisi terhadap waktu dari gerak dua buah benda.
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra4()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
