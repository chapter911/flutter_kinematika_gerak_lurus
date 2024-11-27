import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/page/soal1/s1sf2a.dart';

class S1Sf1c extends StatefulWidget {
  const S1Sf1c({super.key});

  @override
  State<S1Sf1c> createState() => _S1Sf1cState();
}

class _S1Sf1cState extends State<S1Sf1c> {
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
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "SOAL Scafolding No 1c.",
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini."),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(10),
                            child: Image.asset('assets/s1a.jpg'),
                          ),
                        ),
                        Card(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                                "Grafik di atas dapat diubah dalam bentuk tabel seperti di bawah ini:\n\nBerdasarkan tabel tersebut, bagaimana posisi benda selama interval 4 detik?"),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(10),
                            child: Image.asset('assets/s1f.jpg'),
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
                            Get.snackbar(
                              "Informasi",
                              "Jawaban Anda Benar",
                              backgroundColor: Colors.green[100],
                            );
                            Get.to(() => const S1Sf2a());
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
                                      "Tetap",
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.snackbar(
                              "Informasi",
                              "Jawaban Anda Salah",
                              backgroundColor: Colors.red[100],
                            );
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
                                      "Berubah",
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
        ],
      ),
    );
  }
}
