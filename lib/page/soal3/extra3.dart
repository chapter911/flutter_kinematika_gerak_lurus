import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/page/soal3/soal3.dart';

class Extra3 extends StatefulWidget {
  const Extra3({super.key});

  @override
  State<Extra3> createState() => _Extra3State();
}

class _Extra3State extends State<Extra3> {
  Widget soal = Container();
  String judul = "Soal 3 Scafolding 1a";

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
              setState(() {
                getSoal("1a");
              });
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
                                "Perhatikan potongan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3f.jpg'),
                            const SizedBox(height: 10),
                            const Text("Bagaimana gerakan benda tersebut?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Diam", false, "1b"),
                    pilihanOption("A", "GLB", true, "2a"),
                    pilihanOption("A", "GLBB dipercepat", false, "1b"),
                    pilihanOption("A", "GLBB diperlambat", false, "1b"),
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
                                "Perhatikan potongan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3f.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3t.png'),
                            const Text(
                                "Jika tabel seperti di atas, maka bagaimanakah kecepatan benda?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap", false, "1c"),
                    pilihanOption("B", "Berubah semakin besar", true, "2b"),
                    pilihanOption("C", "Berubah semakin kecil", false, "1c"),
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
                                "Perhatikan potongan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3f.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, bagaimana garis singgungnya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption(
                        "A",
                        "Garis singgung berupa garis lurus dengan kemiringan 0. ",
                        false,
                        "1c"),
                    pilihanOption(
                        "B",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah atas.",
                        true,
                        "2c"),
                    pilihanOption(
                        "C",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah bawah.",
                        false,
                        "1c"),
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
                                "Di bawah ini adalah grafik posisi terhadap waktu untuk benda yang bergerak GLBB di percepat"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3f.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Bagaimana grafik percepatan terhadap waktu dari gerak benda di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanGambar("A", "assets/soal3g.jpg", false, "2b"),
                    pilihanGambar("B", "assets/soal3h.jpg", false, "2b"),
                    pilihanGambar("C", "assets/soal3i.jpg", true, "3a"),
                    pilihanGambar("D", "assets/soal3j.jpg", false, "2b"),
                    pilihanGambar("E", "assets/soal3k.jpg", false, "2b"),
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
                            const Text("Perhatikan table di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3t.png'),
                            const SizedBox(height: 10),
                            const Text(
                                """Table di atas menunjukan perubahan kecepatan benda semakin besar setiap detiknya.
                                \nBerdasarkan table di atas, berapakah besar perubahan kecepatan benda setiap detiknya?"""),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "1.5 m/s", true, "2ba"),
                    pilihanOption("B", "0.5 m/s", false, "2c"),
                    pilihanOption("C", "0 m/s", false, "2c"),
                    pilihanOption("D", "-0.5 m/s", false, "2c"),
                    pilihanOption("E", "-1.5 m/s", false, "2c"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3f.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berapakah gradien garis singgung grafik di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "2", false, "2c"),
                    pilihanOption("B", "1.5", true, "2ca"),
                    pilihanOption("C", "0", true, "2c"),
                    pilihanOption("D", "-1.5", false, "2c"),
                    pilihanOption("E", "-2", false, "2c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "2ba") {
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
                            const Text("Perhatikan table di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3t.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan table di atas, kecepatan benda berubah sebesar 1.5 m/s setiap detiknya. Berapakah besar percepatan benda?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "1.5 m/s²", true, "3a"),
                    pilihanOption("B", "0.5 m/s²", true, "2ba"),
                    pilihanOption("C", "0 m/s²", false, "2ba"),
                    pilihanOption("D", "-0.5 m/s²", false, "2ba"),
                    pilihanOption("E", "-1.5 m/s²", false, "2ba"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "2ca") {
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
                                "Di bawah ini adalah grafik posisi terhadap waktu  dengan gradien garis sebesar 1.5"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3f.jpg'),
                            const SizedBox(height: 10),
                            const Text("Berapakah percepatan gerak benda?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "2 m/s²", false, "2ca"),
                    pilihanOption("B", "1.5 m/s²", true, "3a"),
                    pilihanOption("C", "0 m/s²", false, "2ca"),
                    pilihanOption("D", "-1.5 m/s²", false, "2ca"),
                    pilihanOption("E", "-3 m/s²", false, "2ca"),
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
                                "Perhatikan potongan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3l.jpg'),
                            const SizedBox(height: 10),
                            const Text("Bagaimana gerakan benda tersebut?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Diam", true, "4a"),
                    pilihanOption("B", "GLB", false, "3b"),
                    pilihanOption("C", "GLBB dipercepat", false, "3b"),
                    pilihanOption("D", "GLBB diperlambat", false, "3b"),
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
                                "Perhatikan potongan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3l.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            Image.asset('assets/soal3u.png'),
                            const Text(
                                "Jika tabel seperti di atas, maka bagaimanakah kecepatan benda?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap", true, "4b"),
                    pilihanOption("B", "Berubah semakin besar", false, "3c"),
                    pilihanOption("C", "Berubah semakin kecil", false, "3c"),
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
                                "Perhatikan potongan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3l.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, bagaimana garis singgungnya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption(
                        "A",
                        "Garis singgung berupa garis lurus dengan kemiringan 0.",
                        true,
                        "4c"),
                    pilihanOption(
                        "B",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah atas.",
                        false,
                        "3c"),
                    pilihanOption(
                        "C",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah bawah.",
                        true,
                        "3c"),
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
                                "Di bawah ini adalah grafik posisi terhadap waktu untuk benda yang diam."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3l.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Bagaimana grafik percepatan terhadap waktu dari gerak benda di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanGambar("A", "assets/soal3g.jpg", false, "4a"),
                    pilihanGambar("B", "assets/soal3h.jpg", false, "4a"),
                    pilihanGambar("C", "assets/soal3i.jpg", true, "5a"),
                    pilihanGambar("D", "assets/soal3j.jpg", false, "4a"),
                    pilihanGambar("E", "assets/soal3k.jpg", false, "4a"),
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
                            const Text("Perhatikan table di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3u.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Table di atas menunjukan kecepatan benda besarnya sama. Berdasarkan table di atas, berapakah besar perubahan kecepatan benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "1.5 m/s", false, "4b"),
                    pilihanOption("B", "0.5 m/s", false, "4b"),
                    pilihanOption("C", "0 m/s", true, "4ba"),
                    pilihanOption("D", "-0.5 m/s", false, "4b"),
                    pilihanOption("E", "-1.5 m/s", false, "4b"),
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
                                "Di bawah ini adalah grafik posisi terhadap waktu untuk benda yang diam."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3l.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berapakah gradien garis singgung grafik di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "2", false, "4c"),
                    pilihanOption("B", "1.5", false, "4c"),
                    pilihanOption("C", "0", true, "4ca"),
                    pilihanOption("D", "-1.5", false, "4c"),
                    pilihanOption("E", "-2", false, "4c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "4ba") {
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
                            const Text("Perhatikan table di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3u.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan table di atas, kecepatan benda berubah sebesar 0 m/s setiap detiknya. Berapakah besar percepatan benda?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "1.5 m/s²", false, "4ba"),
                    pilihanOption("B", "0.5 m/s²", false, "4ba"),
                    pilihanOption("C", "0 m/s²", true, "5a"),
                    pilihanOption("D", "-0.5 m/s²", false, "4ba"),
                    pilihanOption("E", "-1.5 m/s²", false, "4ba"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "4ca") {
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
                                "Di bawah ini adalah grafik posisi terhadap waktu  dengan gradien garis sebesar 0."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3l.jpg'),
                            const SizedBox(height: 10),
                            const Text("Berapakah percepatan gerak benda?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "2 m/s²", false, "4ca"),
                    pilihanOption("B", "1.5 m/s²", false, "4ca"),
                    pilihanOption("C", "0 m/s²", true, "5a"),
                    pilihanOption("D", "-1.5 m/s²", false, "4ca"),
                    pilihanOption("E", "-2 m/s²", false, "4ca"),
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
                                "Perhatikan potongan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3m.jpg'),
                            const SizedBox(height: 10),
                            const Text("Bagaimana gerakan benda tersebut?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Diam", false, "5b"),
                    pilihanOption("B", "GLB", false, "5b"),
                    pilihanOption("C", "GLBB dipercepat", false, "6a"),
                    pilihanOption("C", "GLBB diperlambat", true, "6a"),
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
                                "Perhatikan potongan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3m.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3v.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Jika tabel seperti di atas, maka bagaimanakah kecepatan benda?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap ", false, "5c"),
                    pilihanOption("B", "Berubah semakin besar", false, "5c"),
                    pilihanOption("C", "Berubah semakin kecil", true, "6b"),
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
                                "Perhatikan potongan grafik kecepatan terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3m.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, bagaimana garis singgungnya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption(
                        "A",
                        "Garis singgung berupa garis lurus dengan kemiringan 0. ",
                        false,
                        "5c"),
                    pilihanOption(
                        "B",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah atas.",
                        false,
                        "5c"),
                    pilihanOption(
                        "C",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah bawah.",
                        true,
                        "6c"),
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
                                "Di bawah ini adalah grafik posisi terhadap waktu untuk benda yang diam."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3m.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Bagaimana grafik percepatan terhadap waktu dari gerak benda di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanGambar("A", "assets/soal3g.jpg", false, "6a"),
                    pilihanGambar("B", "assets/soal3h.jpg", false, "6a"),
                    pilihanGambar("C", "assets/soal3i.jpg", false, "6a"),
                    pilihanGambar("D", "assets/soal3j.jpg", true, "done"),
                    pilihanGambar("E", "assets/soal3k.jpg", false, "6a"),
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
                            const Text("Perhatikan table di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3v.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Table di atas menunjukan perubahan kecepatan benda semakin kecil setiap detiknya. Berdasarkan table di atas, berapakah besar perubahan kecepatan benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "1.5m/s", false, "6b"),
                    pilihanOption("B", "0.5 m/s", false, "6b"),
                    pilihanOption("C", "0 m/s", false, "6b"),
                    pilihanOption("D", "-0.5 m/s", false, "6b"),
                    pilihanOption("E", "-1.5 m/s", true, "6ba"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3m.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berapakah gradien garis singgung grafik di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "2", false, "6c"),
                    pilihanOption("B", "1.5", false, "6c"),
                    pilihanOption("C", "0", false, "6c"),
                    pilihanOption("D", "-1.5", true, "6ca"),
                    pilihanOption("E", "-2", false, "6c"),
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
                            const Text("Perhatikan table di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3v.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan table di atas, kecepatan benda berubah sebesar -1.5 m/s setiap detiknya. Berapakah besar percepatan benda?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "1.5 m/s²", false, "6ba"),
                    pilihanOption("B", "0.5 m/s²", false, "6ba"),
                    pilihanOption("C", "0 m/s²", false, "6ba"),
                    pilihanOption("D", "-0.5 m/s²", false, "6ba"),
                    pilihanOption("E", "-1.5 m/s²", true, "done"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "6ca") {
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
                                "Di bawah ini adalah grafik posisi terhadap waktu  dengan gradien garis sebesar -1.5."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal3m.jpg'),
                            const SizedBox(height: 10),
                            const Text("Berapakah percepatan gerak benda?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "2 m/s²", false, "6ca"),
                    pilihanOption("B", "1.5 m/s²", false, "6ca"),
                    pilihanOption("C", "0 m/s²", false, "6ca"),
                    pilihanOption("D", "-1.5 m/s²", true, "done"),
                    pilihanOption("E", "-2 m/s²", false, "6ca"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else {
      Get.offAll(() => const Soal3());
    }
    setState(() {
      judul = "Soal 3 - Scafolding $s";
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

  Widget pilihanGambar(
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
              Flexible(flex: 10, child: Image.asset(option)),
            ]),
          ),
        ),
      ),
    );
  }
}
