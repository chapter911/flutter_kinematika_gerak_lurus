import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinematika_gerak_lurus/page/soal1/s1sf1b.dart';

class S1Sf4b extends StatefulWidget {
  const S1Sf4b({super.key});

  @override
  State<S1Sf4b> createState() => _S1Sf4bState();
}

class _S1Sf4bState extends State<S1Sf4b> {
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
                    "SOAL Scafolding No 2a.",
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
                                "Perhatikan potongan grafik posisi terhadap waktu di bawah ini.\n\nBerdasarkan grafik tersebut, posisi benda selama 4 detik adalah tetap. Apa makna dari posisi benda yang tetap/ tidak berubah?"),
                          ),
                        ),
                        Card(
                          child: Container(
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(10),
                            child: Image.asset('assets/s1a.jpg'),
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
                                      "Benda diam",
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
                            Get.offAll(() => const S1Sf1b());
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
                                      "Benda Bergerak.",
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
