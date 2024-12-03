import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/page/soal2/soal2.dart';

class Extra3 extends StatefulWidget {
  const Extra3({super.key});

  @override
  State<Extra3> createState() => _Extra3State();
}

class _Extra3State extends State<Extra3> {
  Widget soal = Container();
  String judul = "Soal 2 Scafolding 1a";

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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2m.jpg'),
                            const SizedBox(height: 10),
                            const Text("Bagaimana gerakan benda tersebut?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption(
                        "A",
                        "Bergerak ke depan dengan kecepatan konstan",
                        true,
                        "2a"),
                    pilihanOption("B", "Diam", false, "1b"),
                    pilihanOption(
                        "C",
                        "Bergerak ke belakang dengan kecepatan konstan",
                        false,
                        "1b"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2m.jpg'),
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
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah atas",
                        true,
                        "2b"),
                    pilihanOption(
                        "C",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah bawah",
                        true,
                        "1c"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2m.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2n.jpg'),
                            const Text(
                                "Bagaimanakah posisi benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap", false, "1c"),
                    pilihanOption("B", "Berubah semakin besar", true, "2c"),
                    pilihanOption("C", "Berubah semakin kecil", false, "1c"),
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
                                "Di bawah ini adalah grafik posisi terhadap waktu untuk benda yang bergerak ke depan dengan kecepatan konstan"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2m.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Bagaimana grafik kecepatan terhadap waktu dari gerak benda di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanGambar("A", "assets/soal2o.jpg", true, "3a"),
                    pilihanGambar("B", "assets/soal2p.jpg", false, "2a"),
                    pilihanGambar("C", "assets/soal2q.jpg", false, "2a"),
                    pilihanGambar("D", "assets/soal2r.jpg", false, "2a"),
                    pilihanGambar("E", "assets/soal2s.jpg", false, "2a"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/s1b.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berapakah gradien garis singgung grafik di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3", true, "2ba"),
                    pilihanOption("B", "1.5", false, "2b"),
                    pilihanOption("C", "0", false, "2b"),
                    pilihanOption("D", "-1.5", false, "2b"),
                    pilihanOption("E", "-3", false, "2b"),
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
                                "Perhatikan tabel posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2n.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Tabel di atas menunjukan perubahan posisi benda semakin besar setiap detiknya. Berdasarkan table di atas, berapakah perubahan posisi benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 ke arah depan", false, "2c"),
                    pilihanOption("B", "3 ke arah belakang", false, "2c"),
                    pilihanOption("C", "1.5 ke arah depan", true, "2ca"),
                    pilihanOption("D", "1.5 ke arah belakang", false, "2c"),
                    pilihanOption("E", "0", false, "2c"),
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
                            const Text(
                                "Di bawah ini adalah grafik posisi terhadap waktu  dengan gradien garis sebesar 1.5."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2m.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berapakah kecepatan benda selama 2 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 m/s", false, "2ba"),
                    pilihanOption("B", "1.5 m/s", true, "3c"),
                    pilihanOption("C", "0 m/s", false, "2ba"),
                    pilihanOption("D", "-1.5 m/s", false, "2ba"),
                    pilihanOption("E", "-3 m/s", false, "2ba"),
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
                                "Perhatikan tabel posisi terhadap waktu di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2n.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Tabel di atas menunjukan perubahan posisi benda setiap detiknya sebesar 1.5 ke arah depan.\nBerapakah kecepatan benda selama 2 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 m/s", false, "2ca"),
                    pilihanOption("B", "1.5 m/s", true, "3a"),
                    pilihanOption("C", "0 m/s", false, "2ca"),
                    pilihanOption("D", "-1.5 m/s", false, "2ca"),
                    pilihanOption("E", "-3 m/s", false, "2ca"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2t.jpg'),
                            const SizedBox(height: 10),
                            const Text("Bagaimana keadaan benda tersebut?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption(
                        "A",
                        "Bergerak ke depan dengan kecepatan konstan",
                        false,
                        "3b"),
                    pilihanOption("B", "Diam", true, "4a"),
                    pilihanOption(
                        "C",
                        "Bergerak ke belakang dengan kecepatan konstan",
                        false,
                        "3b"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2t.jpg'),
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
                        "4b"),
                    pilihanOption(
                        "B",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah atas.",
                        false,
                        "3c"),
                    pilihanOption(
                        "C",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu ke arah bawah.",
                        false,
                        "3c"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2t.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            Image.asset('assets/soal2u.jpg'),
                            const Text(
                                "Bagaimanakah posisi benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap", false, "4c"),
                    pilihanOption("B", "Berubah Semakin Besar.", false, "3c"),
                    pilihanOption("C", "Berubah semakin kecil", true, "3c"),
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
                                "Di bawah ini adalah grafik posisi terhadap waktu untuk benda yang diam"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2t.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Bagaimana grafik kecepatan terhadap waktu dari gerak benda di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanGambar("A", "assets/soal2o.jpg", false, "4a"),
                    pilihanGambar("B", "assets/soal2p.jpg", false, "4a"),
                    pilihanGambar("C", "assets/soal2q.jpg", true, "5a"),
                    pilihanGambar("D", "assets/soal2r.jpg", false, "4a"),
                    pilihanGambar("E", "assets/soal2s.jpg", false, "4a"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2t.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berapakah gradien garis singgung gradik di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3", false, "4b"),
                    pilihanOption("B", "1.5", false, "4b"),
                    pilihanOption("C", "0", true, "4ba"),
                    pilihanOption("D", "-1.5", false, "4b"),
                    pilihanOption("E", "-3", false, "4b"),
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
                                "Perhatikan tabel posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2u.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Tabel di atas menunjukan perubahan posisi benda yang tetap setiap detiknya. Berdasarkan table di atas, berapakah perubahan posisi benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 ke arah depan", false, "4c"),
                    pilihanOption("B", "3 ke arah belakang", false, "4c"),
                    pilihanOption("C", "1.5 ke arah depan", false, "4c"),
                    pilihanOption("D", "1.5 ke arah belakang", false, "4c"),
                    pilihanOption("E", "0", true, "4ca"),
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
                            const Text(
                                "Di bawah ini adalah grafik posisi terhadap waktu  dengan gradien garis sebesar 0."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2t.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berapakah kecepatan benda selama 2 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 m/s", false, "4ba"),
                    pilihanOption("B", "1.5 m/s", false, "4ba"),
                    pilihanOption("C", "0 m/s", true, "5a"),
                    pilihanOption("D", "-1.5 m/s", false, "4ba"),
                    pilihanOption("E", "-3 m/s", false, "4ba"),
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
                            Image.asset('assets/soal2u.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Tabel di atas menunjukan posisi benda yang tidak  berubah di setiap detiknya Berapakah kecepatan benda selama 2 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 m/s", false, "4ba"),
                    pilihanOption("B", "1.5 m/s", false, "4ba"),
                    pilihanOption("C", "0 m/s", true, "5a"),
                    pilihanOption("D", "-1.5 m/s", false, "4ba"),
                    pilihanOption("E", "-3 m/s", false, "4ba"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2v.jpg'),
                            const SizedBox(height: 10),
                            const Text("Bagaimana gerakan benda tersebut?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption(
                        "A",
                        "Bergerak ke depan dengan kecepatan konstan",
                        false,
                        "5b"),
                    pilihanOption("B", "Diam", false, "5b"),
                    pilihanOption(
                        "C",
                        "Bergerak ke belakang dengan kecepatan konstan",
                        true,
                        "6a"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2v.jpg'),
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
                        "6b"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2v.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2.jpg'),
                            const Text(
                                "Bagaimanakah posisi benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap", false, "5c"),
                    pilihanOption("B", "Berubah semakin besar", false, "5c"),
                    pilihanOption("C", "Berubah semakin kecil", true, "6c"),
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
                                "Di bawah ini adalah grafik posisi terhadap waktu untuk benda yang bergerak ke belakang dengan kecepatan konstan"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2v.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Bagaimana grafik kecepatan terhadap waktu dari gerak benda di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanGambar("A", "assets/soal2o.jpg", false, "6a"),
                    pilihanGambar("B", "assets/soal2p.jpg", false, "6a"),
                    pilihanGambar("C", "assets/soal2q.jpg", true, "6a"),
                    pilihanGambar("D", "assets/soal2r.jpg", true, "done"),
                    pilihanGambar("E", "assets/soal2s.jpg", false, "6a"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2v.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berapakah gradien garis singgung gradik di atas?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 m/s", false, "6b"),
                    pilihanOption("B", "1.5 m/s", false, "6b"),
                    pilihanOption("C", "0 m/s", false, "6b"),
                    pilihanOption("D", "-1.5 m/s", false, "6b"),
                    pilihanOption("E", "-3 m/s", true, "6ba"),
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
                                "Perhatikan tabel posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2w.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Tabel di atas menunjukan perubahan posisi benda semakin kecil setiap detiknya. Berdasarkan table di atas, berapakah perubahan posisi benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 ke arah depan", false, "6c"),
                    pilihanOption("B", "3 ke arah belakang", true, "6ca"),
                    pilihanOption("C", "1.5 ke arah depan", false, "6c"),
                    pilihanOption("D", "1.5 ke arah belakang", false, "6c"),
                    pilihanOption("E", "0", false, "6c"),
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
                                "Di bawah ini adalah grafik posisi terhadap waktu  dengan gradien garis sebesar -3."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2v.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Tabel di atas menunjukan perubahan posisi benda semakin kecil setiap detiknya. Berdasarkan table di atas, berapakah perubahan posisi benda setiap detiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 m/s", false, "6ba"),
                    pilihanOption("B", "1.5 m/s", false, "6ba"),
                    pilihanOption("C", "0 m/s", false, "6ba"),
                    pilihanOption("D", "-1.5 m/s", false, "6ba"),
                    pilihanOption("E", "-3 m/s", true, "done"),
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
                                "Perhatikan tabel posisi terhadap waktu di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal2w.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Tabel di atas menunjukan perubahan posisi benda setiap detiknya sebesar 3 ke arah belakang. Berapakah kecepatan benda selama 2 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3 m/s", false, "6ca"),
                    pilihanOption("B", "1.5 m/s", false, "6ca"),
                    pilihanOption("C", "0 m/s", false, "6ca"),
                    pilihanOption("D", "-1.5 m/s", false, "6ca"),
                    pilihanOption("E", "-3 m/s", true, "done"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else {
      Get.offAll(() => const Soal2());
    }
    setState(() {
      judul = "Soal 2 - Scafolding $s";
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
