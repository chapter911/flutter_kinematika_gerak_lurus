import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/helper/sharedpreferences.dart';
import 'package:kinematika_gerak_lurus/page/soal3/explanation3.dart';
import 'package:kinematika_gerak_lurus/page/soal3/extra3.dart';

import '../footer/footer.dart';

class Soal3 extends StatefulWidget {
  const Soal3({super.key});

  @override
  State<Soal3> createState() => _Soal3State();
}

class _Soal3State extends State<Soal3> {
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
                          "SOAL No 3.",
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
                                        "Di bawah ini adalah grafik kecepatan-waktu untuk sebuah benda selama interval 5 detik",
                                        textAlign: TextAlign.justify,
                                      ),
                                      Image.asset('assets/soal3.jpg'),
                                      const Text(
                                        "Manakah dari grafik percepatan terhadap waktu berikut yang paling tepat mewakili gerak benda selama interval waktu yang sama?",
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
                                                  'assets/soal3a.jpg',
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
                                                  'assets/soal3b.jpg',
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
                                                  'assets/soal3c.jpg',
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
                                                  'assets/soal3d.jpg',
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
                                                  'assets/soal3e.jpg',
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
                Flexible(flex: 1, child: footer),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void tampilDialog(String pilihan) {
    if (pilihan == 'A') {
      Prefs().saveInt("score3", 10);
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
                    """Anda membaca grafik kecepatan terhadap waktu sebagai grafik percepatan terhadap waktu.
                    \nPerhatikan grafik kecepatan-waktu di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal3.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik kecepatan terhadap waktu. Pada waktu yang berbeda (t), dapat dilihat perubahan kecepatan benda (v).
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra3()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'B') {
      Prefs().saveInt("score3", 20);
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
                    """Anda telah memahami keseluruhan gerak benda. Perhatikan grafik kecepatan-waktu untuk sebuah benda selama interval 5 detik di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal3.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas dapat direpresentasikan dalam beberapa representasi. Ayo klik tombol di bawah ini untuk mengetahui penjelasan grafik tersebut dalam beberapa representasi yang disediakan.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Explanation3()),
              child: const Text('Lanjut'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'C') {
      Prefs().saveInt("score3", 10);
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
                    """Anda sudah benar membaca grafik bahwa percepatan benda pada interval waktu 0 ≤ t ≤ 2 dan 3 ≤ t ≤ 5 adalah konstan. Sedangkan percepatan benda pada interval waktu 2 ≤ t ≤ 3 adalah nol. Tetapi, anda tidak tidak cermat melihat arah kemiringan garis pada grafik kecepatan terhadap waktu untuk interval 0 ≤ t ≤ 2.
                    \nPerhatikan grafik kecepatan-waktu di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal3.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik kecepatan terhadap waktu. Pada waktu yang berbeda (t), dapat dilihat  perubahan kecepatan benda (v).
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra3()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (pilihan == 'D') {
      Prefs().saveInt("score3", 10);
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
                  """Anda sudah benar membaca grafik bahwa percepatan benda pada interval waktu 3 ≤ t ≤ 5 adalah konstan. Tetapi, anda tidak tidak cermat melihat besar kemiringan garis pada grafik kecepatan terhadap waktu untuk interval 3 ≤ t ≤ 5. Selain itu, anda juga salah menafsirkan percepatan benda pada interval waktu 0 ≤ t ≤ 2 dan 2 ≤ t ≤ 3. Anda tidak memperhatikan besar dan arah kemiringan garis pada grafik kecepatan terhadap waktu untuk interval 0 ≤ t ≤ 2 dan 2 ≤ t ≤ 3.
                  \nPerhatikan grafik kecepatan-waktu di bawah ini.""",
                  textAlign: TextAlign.justify,
                ),
              ),
              Image.asset('assets/soal3.jpg'),
              const Text(
                """Grafik di atas merupakan grafik kecepatan terhadap waktu. Pada waktu yang berbeda (t), dapat dilihat  perubahan kecepatan benda (v).
                \nBagaimana memahami grafik tersebut?""",
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Get.offAll(() => const Extra3()),
                child: const Text('OK'))
          ],
        ),
      );
    } else if (pilihan == 'E') {
      Prefs().saveInt("score3", 10);
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
                    """Anda sudah benar membaca grafik bahwa percepatan benda pada interval waktu 2 ≤ t ≤ 3 adalah konstan dan bernilai 0. Tetapi, salah menafsirkan percepatan benda pada interval waktu 0 ≤ t ≤ 2 dan 3 ≤ t ≤ 5. Anda tidak memperhatikan besar dan arah kemiringan garis pada grafik kecepatan terhadap waktu untuk interval 0 ≤ t ≤ 2 dan 3 ≤ t ≤ 5. 
                    \nPerhatikan grafik kecepatan-waktu di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Image.asset('assets/soal3.jpg'),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    """Grafik di atas merupakan grafik kecepatan terhadap waktu. Pada waktu yang berbeda (t), dapat dilihat  perubahan kecepatan benda (v).
                    \nBagaimana memahami grafik tersebut?""",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAll(() => const Extra3()),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
