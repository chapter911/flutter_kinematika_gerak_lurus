import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/helper/sharedpreferences.dart';
import 'package:kinematika_gerak_lurus/page/soal2/explanation2.dart';
import 'package:kinematika_gerak_lurus/page/soal2/extra2.dart';

class Soal2 extends StatefulWidget {
  const Soal2({super.key});

  @override
  State<Soal2> createState() => _Soal2State();
}

class _Soal2State extends State<Soal2> {
  @override
  void initState() {
    super.initState();
  }

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
                          "SOAL No 2.",
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
                                        "Di bawah ini adalah grafik posisi-waktu untuk sebuah benda selama interval 5 detik",
                                        textAlign: TextAlign.justify,
                                      ),
                                      Image.asset('assets/soal2.jpg'),
                                      const Text(
                                        "Manakah dari grafik kecepatan terhadap waktu berikut yang paling tepat mewakili gerak benda selama interval waktu yang sama?",
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
                                          child: IntrinsicHeight(
                                            child: Row(children: [
                                              const Flexible(
                                                flex: 1,
                                                child: Center(
                                                  child: Text(
                                                    "A.",
                                                  ),
                                                ),
                                              ),
                                              const VerticalDivider(
                                                color: Colors.black,
                                                thickness: 1,
                                              ),
                                              Flexible(
                                                flex: 10,
                                                child: Image.asset(
                                                  'assets/soal2a.jpg',
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
                                          child: IntrinsicHeight(
                                            child: Row(children: [
                                              const Flexible(
                                                flex: 1,
                                                child: Center(
                                                  child: Text(
                                                    "B.",
                                                  ),
                                                ),
                                              ),
                                              const VerticalDivider(
                                                color: Colors.black,
                                                thickness: 1,
                                              ),
                                              Flexible(
                                                flex: 10,
                                                child: Image.asset(
                                                  'assets/soal2b.jpg',
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
                                          child: IntrinsicHeight(
                                            child: Row(children: [
                                              const Flexible(
                                                flex: 1,
                                                child: Center(
                                                  child: Text(
                                                    "C.",
                                                  ),
                                                ),
                                              ),
                                              const VerticalDivider(
                                                color: Colors.black,
                                                thickness: 1,
                                              ),
                                              Flexible(
                                                flex: 10,
                                                child: Image.asset(
                                                  'assets/soal2c.jpg',
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
                                          child: IntrinsicHeight(
                                            child: Row(children: [
                                              const Flexible(
                                                flex: 1,
                                                child: Center(
                                                  child: Text(
                                                    "D.",
                                                  ),
                                                ),
                                              ),
                                              const VerticalDivider(
                                                color: Colors.black,
                                                thickness: 1,
                                              ),
                                              Flexible(
                                                flex: 10,
                                                child: Image.asset(
                                                  'assets/soal2d.jpg',
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
                                          child: IntrinsicHeight(
                                            child: Row(children: [
                                              const Flexible(
                                                flex: 1,
                                                child: Center(
                                                  child: Text(
                                                    "E.",
                                                  ),
                                                ),
                                              ),
                                              const VerticalDivider(
                                                color: Colors.black,
                                                thickness: 1,
                                              ),
                                              Flexible(
                                                flex: 10,
                                                child: Image.asset(
                                                  'assets/soal2e.jpg',
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
                                  "SKOR ANDA : ${(Prefs.readInt("score1") ?? 0)}",
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
      Prefs().saveInt("score2", 10);
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
                    """Anda membaca grafik posisi terhadap waktu sebagai grafik kecepatan terhadap waktu.
                    \nPerhatikan grafik posisi-waktu di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal2.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik posisi terhadap waktu. Pada waktu yang berbeda (t), dapat dilihat  perubahan posisi benda (x). 
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra2()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'B') {
      Prefs().saveInt("score2", 10);
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
                    """Anda sudah benar membaca grafik bahwa kecepatan benda pada interval waktu 0 ≤ t ≤ 2 adalah konstan dan bernilai positif, kecepatan benda pada interval waktu 2 ≤ t ≤ 4 adalah nol, dan kecepatan benda pada interval waktu 4 ≤ t ≤ 5 adalah konstan dan bernilai negative. Tetapi, anda tidak tidak cermat melihat gradien kemiringan garis pada grafik posisi terhadap waktu untuk interval 0 ≤ t ≤ 2 dan 4 ≤ t ≤ 5.
                    \nPerhatikan grafik posisi-waktu di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal2.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik posisi terhadap waktu. Pada waktu yang berbeda (t), dapat dilihat perubahan posisi benda (x). 
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra2()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'C') {
      Prefs().saveInt("score2", 10);
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
                    """Anda sudah benar membaca grafik bahwa kecepatan benda pada interval waktu 0 ≤ t ≤ 2 adalah konstan dan bernilai positif, kecepatan benda pada interval waktu 4 ≤ t ≤ 5 adalah konstan dan bernilai negative. Tetapi, anda tidak tidak cermat melihat gradien kemiringan garis pada grafik posisi terhadap waktu untuk interval 0 ≤ t ≤ 2 dan 4 ≤ t ≤ 5. Anda juga salah dalam menafsirkan kecepatan benda pada interval 2 ≤ t ≤ 4
                    \nPerhatikan grafik posisi-waktu di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal2.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik posisi terhadap waktu. Pada waktu yang berbeda (t), dapat dilihat perubahan posisi benda (x). 
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra2()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'D') {
      if (Prefs.checkData("score2") == false) {
        Prefs().saveInt("score2", 20);
      }
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.green[100],
          title: const Text('😁 Jawaban Benar'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: double.maxFinite,
                child: Text(
                  """Anda telah memahami keseluruhan gerak benda.
              \nPerhatikan grafik posisi-waktu untuk sebuah benda selama interval 5 detik di bawah ini.""",
                  textAlign: TextAlign.justify,
                ),
              ),
              Image.asset('assets/soal2.jpg'),
              const Text(
                "Grafik di atas dapat direpresentasikan dalam beberapa representasi",
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Get.offAll(() => const Explanation2()),
                child: const Text('Lanjut'))
          ],
        ),
      );
    } else if (pilihan == 'E') {
      Prefs().saveInt("score2", 10);
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
                    """Anda sudah benar membaca grafik bahwa kecepatan benda pada interval waktu 0 ≤ t ≤ 2 dan 4 ≤ t ≤ 5 adalah konstan. Sedangkan kecepatan benda pada interval waktu 2 ≤ t ≤ 4 adalah nol. Tetapi, anda tidak tidak cermat melihat gradien dan arah kemiringan garis pada grafik posisi terhadap waktu untuk interval 0 ≤ t ≤ 2 dan 4 ≤ t ≤ 5.
                    \nPerhatikan grafik posisi-waktu di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal2.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik posisi terhadap waktu. Pada waktu yang berbeda (t), dapat dilihat perubahan posisi benda (x).
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra2()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
