import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/page/soal1/s1sf1c.dart';
import 'package:kinematika_gerak_lurus/page/soal1/s1sf2a.dart';

class S1Sf1b extends StatefulWidget {
  const S1Sf1b({super.key});

  @override
  State<S1Sf1b> createState() => _S1Sf1bState();
}

class _S1Sf1bState extends State<S1Sf1b> {
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
                    "SOAL Scafolding No 1b.",
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini.\n\nBerdasarkan grafik tersebut, bagaimana garis singgungnya?"),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(10),
                            child: Image.asset('assets/s1sf1b.jpg'),
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
                                      "Garis singgung berupa garis mendatar dengan kemiringan 0.",
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
                            Get.offAll(() => const S1Sf1c());
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
                                      "Garis singgung berupa garis lurus dengan kemiringan tertentu.",
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
