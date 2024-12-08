import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/page/soal1/soal1.dart';
import 'package:kinematika_gerak_lurus/page/splash_screen.dart';

class Extra1 extends StatefulWidget {
  const Extra1({super.key});

  @override
  State<Extra1> createState() => _Extra1State();
}

class _Extra1State extends State<Extra1> {
  Widget soal = Container();
  String judul = "Soal 1 Scafolding";

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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/s1a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Bagaimana posisi benda selama interval 4 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap", true, "2a"),
                    pilihanOption("B", "Berubah", false, "1b"),
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
                            Image.asset('assets/s1b.jpg'),
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
                        "Garis singgung berupa garis mendatar dengan kemiringan 0.",
                        true,
                        "2b"),
                    pilihanOption(
                        "B",
                        "Garis singgung berupa garis lurus dengan kemiringan tertentu.",
                        false,
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
                            Image.asset('assets/s1a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/s1f.png'),
                            const Text(
                                "Berdasarkan tabel di atas, bagaimana posisi benda selama interval 4 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap", true, "2c"),
                    pilihanOption("B", "Berubah", false, "1c"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/s1a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, posisi benda selama 4 detik adalah tetap. Apa makna dari posisi benda yang tetap/ tidak berubah?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Benda Diam", true, "3a"),
                    pilihanOption("B", "Benda Bergerak", false, "2b"),
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
                                "Berdasarkan grafik di atas, garis singgung berupa garis mendatar dengan kemiringan 0. Bagaimana keadaan gerak benda selama interval waktu tersebut?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Benda Diam", true, "3a"),
                    pilihanOption("B", "Benda Bergerak", false, "2c"),
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
                            const Text("Perhatikan tabel di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/s1f.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan tabel di atas, posisi benda selama 4 detik adalah tetap/ tidak berubah. Apa makna dari posisi benda yang tetap/ tidak berubah?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Benda Diam", true, "3a"),
                    pilihanOption("B", "Benda Bergerak", false, "2c"),
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
                            Image.asset('assets/s1c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Bagaimana posisi benda selama interval 6 detik?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap", false, "3b"),
                    pilihanOption("B", "Berubah semakin besar", false, "3b"),
                    pilihanOption("C", "Berubah semakin kecil", true, "4a"),
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
                            Image.asset('assets/s1d.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, bagaimana garis singgungnya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Garis singgung berupa garis mendatar",
                        false, "3c"),
                    pilihanOption(
                        "B",
                        "Garis singgung berupa garis lurus dengan kemiringan ke arah atas.",
                        false,
                        "3c"),
                    pilihanOption(
                        "C",
                        "Garis singgung berupa garis lurus dengan kemiringan ke arah bawah.",
                        true,
                        "4b"),
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
                            Image.asset('assets/s1c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            Image.asset('assets/s1e.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan tabel seperti di atas, bagaimana posisi benda selama interval 6 detik?")
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Tetap", false, "3c"),
                    pilihanOption("B", "Berubah Semakin Besar.", false, "3c"),
                    pilihanOption("C", "Berubah semakin kecil", true, "4c"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/s1c.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, posisi benda selama 6 detik adalah berubah. Apa makna dari posisi benda yang berubah?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Benda diam", false, "4a"),
                    pilihanOption("B", "Benda bergerak ke depan", false, "4a"),
                    pilihanOption("C", "Benda bergerak ke belakang", true, "5"),
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
                            Image.asset('assets/s1d.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, garis singgung berupa garis lurus dengan kemiringan tertentu. Bagaimana keadaan gerak benda selama interval waktu tersebut?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Benda diam", false, "4b"),
                    pilihanOption("B", "Benda bergerak ke depan", false, "4b"),
                    pilihanOption("C", "Benda bergerak ke belakang", true, "5"),
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
                                "Perhatikan kembali tabel di bawah ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/s1e.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan tabel di atas, posisi benda selama 6 detik adalah berubah. Apa makna dari posisi benda yang berubah?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "Benda diam", false, "4b"),
                    pilihanOption("B", "Benda bergerak ke depan", false, "4b"),
                    pilihanOption("C", "Benda bergerak ke belakang", true, "5"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else {
      Get.offAll(() => const Soal1());
    }
    setState(() {
      judul = "Soal 1 - Scafolding $s";
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
