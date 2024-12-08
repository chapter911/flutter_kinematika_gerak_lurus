import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/page/soal4/soal4.dart';
import 'package:kinematika_gerak_lurus/page/splash_screen.dart';

class Extra4 extends StatefulWidget {
  const Extra4({super.key});

  @override
  State<Extra4> createState() => _Extra4State();
}

class _Extra4State extends State<Extra4> {
  Widget soal = Container();
  String judul = "Soal 4 Scafolding 1a";

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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, bagaimana persamaan grafiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "x=2t²", false, "1b"),
                    pilihanOption("B", "x=4t²", false, "1b"),
                    pilihanOption("C", "x=2t", false, "1b"),
                    pilihanOption("D", "x=4t", true, "2a"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas memiliki garis singgung berupa garis lurus dengan kemiringan tertentu ke arah atas. Berapakah besar kemiringan garis singgungnya pada detik ke 5?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "4", true, "2b"),
                    pilihanOption("B", "2", false, "1c"),
                    pilihanOption("C", "0", false, "1c"),
                    pilihanOption("C", "-2", false, "1c"),
                    pilihanOption("C", "-4", false, "1c"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4m.png'),
                            const Text(
                                "Berdasarkan table di atas, berapakah posisi benda pada detik ke 6?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "20m", false, "1c"),
                    pilihanOption("B", "22m", false, "1c"),
                    pilihanOption("C", "24m", true, "2c"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Persamaana grafik di atas adalah x=4t. Berdasarkan persamaan posisi tersebut, berapakah persamaan kecepatannya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "v=2t²", false, "2a"),
                    pilihanOption("B", "v=4t²", false, "2a"),
                    pilihanOption("C", "v=4t", false, "2a"),
                    pilihanOption("D", "v=4", true, "2aa"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas memiliki garis singgung ke arah atas dengan kemiringan garis pada detik ke 5 sebesar 4. Berapakah kecepatan gerak benda pada detik ke 5?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "4 m/s", true, "3a"),
                    pilihanOption("B", "2 m/s", false, "2b"),
                    pilihanOption("C", "0 m/s", false, "2b"),
                    pilihanOption("D", "-2 m/s", false, "2b"),
                    pilihanOption("E", "-4 m/s", false, "2b"),
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
                                "Perhatikan table posisi terhadap waktu di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4m.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan table di atas, posisi benda pada detik ke 6 adalah 24 m. berapakah kecepatan benda pada detik ke 5?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "4 m/s", true, "3a"),
                    pilihanOption("B", "2 m/s", false, "2c"),
                    pilihanOption("C", "0 m/s", false, "2c"),
                    pilihanOption("D", "-2 m/s", false, "2c"),
                    pilihanOption("E", "-4 m/s", false, "2c"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else if (s == "2aa") {
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas memiliki persamaan posisi x=4t dan persamaan kecepatan v=4. Berapakah kecepatan benda pada detik ke 5?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "4 m/s", true, "3a"),
                    pilihanOption("B", "2 m/s", false, "2aa"),
                    pilihanOption("C", "0 m/s", false, "2aa"),
                    pilihanOption("D", "-2 m/s", false, "2aa"),
                    pilihanOption("E", "-4 m/s", false, "2aa"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan grafik di atas, bagaimana persamaan grafiknya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "x=1.5t²", false, "3b"),
                    pilihanOption("B", "x=1.5t²+1/2 t", false, "3b"),
                    pilihanOption("C", "x=1/2 t²+1.5t", true, "4a"),
                    pilihanOption("D", "x=1/2 t²", false, "3b"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas memiliki garis singgung berupa garis lurus dengan kemiringan tertentu ke arah atas. Berapakah besar kemiringan garis singgungnya pada detik ke 5?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "2", false, "3c"),
                    pilihanOption("B", "4", false, "3c"),
                    pilihanOption("C", "6.5", true, "4b"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:"),
                            Image.asset('assets/soal4n.png'),
                            const Text(
                                "Berdasarkan table di atas, berapakah posisi benda pada detik ke 6?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "25m", false, "3c"),
                    pilihanOption("B", "26m", false, "3c"),
                    pilihanOption("C", "27m", true, "4c"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Persamaan grafik di atas adalah x=1/2 t²+1.5t. Berdasarkan persamaan posisi tersebut, berapakah persamaan kecepatannya?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "x=3t", false, "4a"),
                    pilihanOption("B", "x=3t+1/2", false, "4a"),
                    pilihanOption("C", "x=t+1.5", true, "5a"),
                    pilihanOption("D", "x=t+3", false, "4a"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas memiliki garis singgung ke arah atas dengan kemiringan garis pada detik ke 5 sebesar 6.5. Berapakah kecepatan gerak benda pada detik ke 5?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "2 m/s", false, "4b"),
                    pilihanOption("B", "4 m/s", false, "4b"),
                    pilihanOption("C", "6.5 m/s", true, "done"),
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
                                "Perhatikan table posisi terhadap waktu di bawah ini:"),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4n.png'),
                            const SizedBox(height: 10),
                            const Text(
                                "Berdasarkan table di atas, posisi benda pada detik ke 6 adalah 27 m. berapakah kecepatan benda pada detik ke 5?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "2 m/s", false, "4c"),
                    pilihanOption("B", "4 m/s", false, "4c"),
                    pilihanOption("C", "6.5 m/s", true, "done"),
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
                                "Perhatikan potongan grafik posisi terhadap waktu berikut ini."),
                            const SizedBox(height: 10),
                            Image.asset('assets/soal4a.jpg'),
                            const SizedBox(height: 10),
                            const Text(
                                "Grafik di atas memiliki persamaan posisi x=1/2 t²+1.5t dan persamaan kecepatan v=t+1.5. Berapakah kecepatan benda pada detik ke 5?"),
                          ],
                        ),
                      ),
                    ),
                    textPilihan(),
                    pilihanOption("A", "3.5 m/s", false, "5a"),
                    pilihanOption("B", "6.5 m/s", true, "done"),
                    pilihanOption("C", "11.5 m/s", false, "5a"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    } else {
      Get.offAll(() => const Soal4());
    }
    setState(() {
      judul = "Soal 4 - Scafolding $s";
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
