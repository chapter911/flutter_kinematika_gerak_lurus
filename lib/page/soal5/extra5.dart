import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/page/soal5/soal5.dart';
import 'package:kinematika_gerak_lurus/page/splash_screen.dart';

class Extra5 extends StatefulWidget {
  const Extra5({super.key});

  @override
  State<Extra5> createState() => _Extra5State();
}

class _Extra5State extends State<Extra5> {
  Widget soal = Container();
  String judul = "Soal 5 Scafolding 1a";

  @override
  void initState() {
    super.initState();
    getSoal("1a");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
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
          soal
        ],
      ),
    );
  }

  Widget getSoal(String s) {
    if (s == "1a") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, bagaimana persamaan grafiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "v=0.75t²+4t", false, "2a"),
                    pilihanOption("B", "v=1.25t²", false, "1b"),
                    pilihanOption("C", "v=1.5t+4", false, "1b"),
                    pilihanOption("D", "v=2.5t", false, "1b"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "1b") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Berdasarkan grafik di atas, perpindahan benda merupakan luas permukaan di bawah grafik.
                                \nBagaimana bentuk luas permukaan di bawah grafik?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Persegi", false, "1c"),
                    pilihanOption("B", "Persegi panjang", false, "2b"),
                    pilihanOption("C", "Trapesium", true, "1c"),
                    pilihanOption("D", "Segitiga", false, "1c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "1c") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik hubungan kecepatan terhadap waktu di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5o.jpg'),
                            const Text(
                                "Berdasarkan table di atas, berapakah selisih perubahan kecepatan benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0.75 m/s", false, "1c"),
                    pilihanOption("B", "1.5 m/s", true, "2c"),
                    pilihanOption("C", "3 m/s", false, "1c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "2a") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Grafik di atas memiliki persamaan posisi
                                \nv=1.5t+4
                                \nBerdasarkan persamaan kecepatan tersebut, berapakah persamaan posisinya?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "x=0.75t²+4t", true, "3a"),
                    pilihanOption("B", "x=1.25t²", false, "2a"),
                    pilihanOption("C", "x=1.5t+4", false, "2a"),
                    pilihanOption("D", "x=2.5t", false, "2a"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "2b") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan potongan grafik kecepatan terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5b.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, berapakah luas area yang diarsir?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "20 satuan luas", true, "3b"),
                    pilihanOption("B", "28 satuan luas", true, "2b"),
                    pilihanOption("C", "40 satuan luas", false, "2b"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "2c") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Berdasarkan grafik di atas, perubahan kecepatan benda setiap detiknya sebesar 1.5 m/s.
                                \nBerapakah besar perpindahan benda selama 4 detik?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "20m", false, "2c"),
                    pilihanOption("B", "28m", true, "3c"),
                    pilihanOption("C", "40m", false, "2c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "3a") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Grafik di atas memiliki persamaan kecepatan
                            \nx=0.75t²+4t
                            \nBerdasarkan persamaan posisi tersebut, berapakah posisi benda pada detik ke 0?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0m", true, "3aa"),
                    pilihanOption("B", "20m", false, "3a"),
                    pilihanOption("C", "28m", false, "3a"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "3b") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan potongan grafik kecepatan terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5b.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Berdasarkan grafik di atas, luas permukaan di bawah grafik sebesar 28 satuan luas.
                                \nBerapakah perpindahan benda selama 4 detik?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "20m", false, "3b"),
                    pilihanOption("B", "28m", true, "3ba"),
                    pilihanOption("C", "40m", false, "3b"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "3c") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Selama 4 detik, benda berpindah sejauh 28 m. Berapakah kecepatan rata-rata benda selama 4 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0 m/s", false, "3c"),
                    pilihanOption("B", "4 m/s", false, "3c"),
                    pilihanOption("C", "7 m/s", true, "4c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "3aa") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Grafik di atas memiliki persamaan kecepatan
                                \nx=0.75t²+4t
                                \nBerdasarkan persamaan posisi tersebut, berapakah posisi benda pada detik ke 4?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0m", false, "3aa"),
                    pilihanOption("B", "20m", true, "3ab"),
                    pilihanOption("C", "28m", false, "3aa"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "3ba") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Selama 4 detik, benda berpindah sejauh 28 m. Berapakah kecepatan rata-rata benda selama 4 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0m", false, "3ba"),
                    pilihanOption("B", "4m", true, "3ba"),
                    pilihanOption("C", "7m", true, "4a"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "3ab") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Pada detik ke 0, posisi benda berada di 0 m, sedangkan pada detik ke 4, posisi benda berada di 28 m. Berdasarkan data tersebut, berapakah kecepatan rata-rata benda selama 4 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0m/s", false, "3ab"),
                    pilihanOption("B", "5m/s", true, "3ab"),
                    pilihanOption("C", "7m/s", true, "4a"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "4a") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, bagaimana persamaan grafiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "v=0.75t²+4t", false, "4b"),
                    pilihanOption("B", "v=1.25t²", false, "4b"),
                    pilihanOption("C", "v=1.5t+4", false, "4b"),
                    pilihanOption("D", "v=2.5t", true, "5a"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "4b") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Berdasarkan grafik di atas, perpindahan benda merupakan luas permukaan di bawah grafik.
                                \nBagaimana bentuk luas permukaan di bawah grafik?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Persegi", false, "4c"),
                    pilihanOption("B", "Persegi panjang", false, "4c"),
                    pilihanOption("C", "Trapesium", true, "4c"),
                    pilihanOption("D", "Segitiga", true, "5b"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "4c") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik hubungan kecepatan terhadap waktu di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5p.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan table di atas, berapakah selisih perubahan kecepatan benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0.75 m/s", false, "4c"),
                    pilihanOption("B", "1.25 m/s", false, "4c"),
                    pilihanOption("C", "2.5 m/s", true, "5c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "5a") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Grafik di atas memiliki persamaan posisi
                                \nv=2.5t
                                \nBerdasarkan persamaan kecepatan tersebut, berapakah persamaan posisinya?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "x=0.75t²+4t", false, "5a"),
                    pilihanOption("B", "x=1.25t²", true, "6a"),
                    pilihanOption("C", "x=1.5t+4", false, "5a"),
                    pilihanOption("D", "x=2.5t", false, "5a"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "5b") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5d.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, berapakah luas area yang diarsir?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "20 satuan luas", true, "6b"),
                    pilihanOption("B", "28 satuan luas", false, "5b"),
                    pilihanOption("C", "40 satuan luas", false, "5b"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "5c") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Berdasarkan grafik di atas, perubahan kecepatan benda setiap detiknya sebesar 2.5 m/s.
                                \nBerapakah besar perpindahan benda selama 4 detik?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "20 m", true, "6c"),
                    pilihanOption("B", "28 m", false, "5c"),
                    pilihanOption("C", "40 m", false, "5c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "6a") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Grafik di atas memiliki persamaan kecepatan
                                \nx=1.25t²
                                \nBerdasarkan persamaan posisi tersebut, berapakah posisi benda pada detik ke 0?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0 m", true, "6aa"),
                    pilihanOption("B", "20 m", false, "6a"),
                    pilihanOption("C", "28 m", false, "6a"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "6b") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5d.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, luas permukaan di bawah grafik sebesar 20 satuan luas. Berapakah perpindahan benda selama 4 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "20 m", true, "6ba"),
                    pilihanOption("B", "28 m", false, "6b"),
                    pilihanOption("C", "40 m", false, "6b"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "6c") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Selama 4 detik, benda berpindah sejauh 20 m. Berapakah kecepatan rata-rata benda selama 4 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0 m/s", false, "6c"),
                    pilihanOption("B", "5 m/s", true, "done"),
                    pilihanOption("C", "7 m/s", false, "6c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "6aa") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                """Grafik di atas memiliki persamaan kecepatan
                                \nx=1.25t²
                                \nBerdasarkan persamaan posisi tersebut, berapakah posisi benda pada detik ke 4?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0 m", false, "6aa"),
                    pilihanOption("B", "20 m", true, "6ab"),
                    pilihanOption("C", "28 m", false, "6aa"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "6ba") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Selama 4 detik, benda berpindah sejauh 20 m. Berapakah kecepatan rata-rata benda selama 4 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0 m/s", false, "6ba"),
                    pilihanOption("B", "5 m/s", true, "done"),
                    pilihanOption("C", "7 m/s", false, "6ba"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "6ab") {
      soal = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal5c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Selama 4 detik, benda berpindah sejauh 20 m. Berapakah kecepatan rata-rata benda selama 4 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "0 m/s", false, "6ab"),
                    pilihanOption("B", "5 m/s", true, "done"),
                    pilihanOption("C", "7 m/s", false, "6ab"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else {
      Get.offAll(() => const Soal5());
    }
    setState(() {
      judul = "Soal 5 - Scafolding $s";
      soal;
    });
    return soal;
  }

  Widget textPilihan() {
    return const SizedBox(
      width: double.maxFinite,
      child: Text(
        "Pilih Jawaban Anda",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget pilihanOption(
      String option, String jawaban, bool isBenar, String arah) {
    return InkWell(
      onTap: () {
        if (isBenar) {
          Get.snackbar(
            "Informasi",
            "Jawaban Anda Benar",
            backgroundColor: Colors.green[100],
          );
        } else {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.red[100],
              title: const Text('😌 Maaf'),
              content: const Text("Jawaban Anda Salah"),
              actions: [
                TextButton(
                  onPressed: () => Get.back(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
        setState(() {
          soal = getSoal(arah);
        });
      },
      child: Card(
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(10),
          child: IntrinsicHeight(
            child: Row(children: [
              Flexible(
                flex: 1,
                child: Center(
                  child: Text(
                    option,
                  ),
                ),
              ),
              const VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              Flexible(
                flex: 10,
                child: Text(
                  jawaban,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
