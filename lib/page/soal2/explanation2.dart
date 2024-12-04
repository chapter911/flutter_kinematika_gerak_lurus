import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kinematika_gerak_lurus/page/soal3/soal3.dart';

class Explanation2 extends StatefulWidget {
  const Explanation2({super.key});

  @override
  State<Explanation2> createState() => _Explanation2State();
}

class _Explanation2State extends State<Explanation2> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penjelasan'),
        automaticallyImplyLeading: false,
      ),
      body: IntroductionScreen(
        key: _introKey,
        pages: [
          PageViewModel(
            title: 'Representasi Verbal',
            bodyWidget: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                      "Perhatikan grafik posisi-waktu untuk sebuah benda selama interval 5 detik di bawah ini."),
                  Image.asset('assets/soal2.jpg'),
                  const Text(
                    """Berdasarkan grafik di atas, benda mengalami tiga keadaan gerak. Keadaan pertama dari detik ke 0 sampai detik ke 2 benda bergerak secara GLB ke arah kanan. Keadaan kedua dari detik ke 2 sampai detik ke 4 benda diam. Keadaan ketiga dari detik ke 4 sampai detik ke 5 benda bergerak GLB ke arah kiri dan berhenti pada detik ke 5.
                    \nWaktu yang diperlukan benda dari posisi 0 sampai posisi x lebih lama dibandingkan waktu yang diperlukan benda untuk bergerak mundur dari posisi x ke posisi 0. Hal ini menunjukan bahwa kecepatan benda yang bergerak maju lebih kecil dibandingkan kecepatan benda yang bergerak mundur.
                    \nGrafik kecepatan terhadap waktu untuk benda yang bergerak GLB digambarkan sebagai garis horizontal sepanjang waktu, dengan besar kecepatan merupakan jarak vertikal dari sumbu x. semakin besar kecepatan benda maka ketinggian garis diukur dari sumbu x semakin tinggi.
                    \nSehingga, grafik kecepatan (v) terhadap waktu (t) dapat digambarkan sebagai""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal2d.jpg'),
                ],
              ),
            ),
          ),
          PageViewModel(
            title: 'Representasi Tabel',
            bodyWidget: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                      "Perhatikan grafik posisi-waktu untuk sebuah benda selama interval 5 detik di bawah ini."),
                  Image.asset('assets/soal2.jpg'),
                  const Text(
                    """Grafik hubungan posisi terhadap waktu di atas dapat diubah dalam bentuk tabel seperti di bawah ini:""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal2f.jpg'),
                  const Text(
                      """Pada tabel diatas, dapat dilihat dari detik ke 0 sampai detik ke 1 benda berpindah sejauh 1.5 m. Dari detik ke 1 sampai detik ke 2 benda berpindah sejauh 1.5 m. Berdasarkan data tersebut, dapat disimpulkan bahwa dari detik ke 0 sampai detik ke 2, benda bergerak dengan kecepatan 1.5 m/s.
                  \nDari detik ke 2 sampai detik ke 4, posisi benda tidak berubah. Hal ini menunjukan bahwa benda tidak bergerak (benda diam). Dari detik ke 4 sampai detik ke 5, benda berpindah sejauh –3m. Hal ini menunjukan bahwa benda bergerak dengan kecepatan -3 m/s.
                  \nBerdasarkan data di atas, grafik kecepatan terhadap waktu dapat digambarkan sebagai berikut:"""),
                  Image.asset('assets/soal2d.jpg'),
                ],
              ),
            ),
          ),
          PageViewModel(
            title: 'Representasi Gambar',
            bodyWidget: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                      "Perhatikan grafik posisi-waktu untuk sebuah benda selama interval 5 detik di bawah ini."),
                  Image.asset('assets/soal2.jpg'),
                  const Text(
                    """Grafik hubungan posisi terhadap waktu di atas dapat diubah dalam bentuk diagram gerak seperti di bawah ini:""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal2g.jpg'),
                  const Text(
                      """Berdasarkan gambar di atas dilihat dari detik ke 0 sampai detik ke 1 benda berpindah sejauh 1.5 m. Dari detik ke 1 sampai detik ke 2 benda berpindah sejauh 1.5 m. Berdasarkan data tersebut, dapat disimpulkan bahwa dari detik ke 0 sampai detik ke 2, benda bergerak dengan kecepatan 1.5 m/s.
                      \nDari detik ke 2 sampai detik ke 4, posisi benda tidak berubah. Hal ini menunjukan bahwa benda tidak bergerak (benda diam).
                      \nDari detik ke 4 sampai detik ke 5, benda berpindah sejauh –3m. Hal ini menunjukan bahwa benda bergerak dengan kecepatan -3 m/s.
                      \nBerdasarkan data di atas, grafik kecepatan terhadap waktu dapat digambarkan sebagai berikut:"""),
                  Image.asset('assets/soal2d.jpg'),
                ],
              ),
            ),
          ),
          PageViewModel(
            title: 'Representasi Grafik',
            bodyWidget: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                      "Perhatikan grafik posisi-waktu untuk sebuah benda selama interval 5 detik di bawah ini."),
                  Image.asset('assets/soal2.jpg'),
                  const Text(
                    """Grafik hubungan posisi terhadap waktu di atas dapat dijabarkan dalam tiga keadaan.
                    \nKecepatan benda setiap detiknya dapat digambarkan berupa garis singgung pada grafik posisi terhadap waktu
                    \nKeadaan pertama, dari detik ke 0 sampai detik ke 2, posisi benda bertambah setiap detiknya, dengan bentuk grafik berupa garis lurus. Hal ini menunjukan bahwa kecepatan benda dari detik ke 0 sampai detik ke 2 adalah sama. Garis singgung yang merepresentasikan kecepatan benda akan berupa garis lurus dengan kemiringan tertentu.
                    \nSebagai contoh, kecepatan benda pada detik ke 1 dapat dilihat pada gambar di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal2h.jpg'),
                  const Text("""(v_1 ) ⃗=(∆x) ⃗/∆t
                      \n=(3-0)/(2-0)
                      \n=1.5 m⁄s
                      \nDapat dilihat pada grafik di atas garis v1 berupa garis lurus dengan kemiringan 1.5 ke arah atas, yang artinya kecepatan benda pada detik ke 1 adalah 1.5 m/s ke arah kanan.Hal ini menunjukan bahwa benda bergerak maju dengan kecepatan tetap sebesar 1.5 m/s.
                      \nMengingat bahwa kecepatan benda pada keadaan pertama adalah sama disetiap waktunya, maka pada keadaan 1 dapat disimpulkan bahwa benda bergerak maju dengan kecepatan 1.5 m/s sampai detik ke 2.
                      \nKeadaan kedua, dari detik ke 2 sampai detik ke 4, posisi benda tidak berubah. Garis singgung yang merepresentasikan kecepatan benda akan berupa garis mendatar dengan kemiringan 0.
                      \nSebagai contoh, kecepatan benda pada detik ke 3 dapat dilihat pada gambar di bawah ini."""),
                  Image.asset('assets/soal2i.jpg'),
                  const Text(
                      """Dapat dilihat pada gambar di atas, garis v3 berupa garis datar. Hal ini menunjukan bahwa kecepatan benda pada detik ke 3 adalah 0, atau benda diam.
                      \nKeadaan ketiga, dari detik ke 4 sampai detik ke 5, posisi benda bertambah setiap detiknya, dengan bentuk grafik berupa garis lurus. Hal ini menunjukan bahwa kecepatan benda dari detik ke 4 sampai detik ke 5 adalah sama. Garis singgung yang merepresentasikan kecepatan benda akan berupa garis lurus dengan kemiringan tertentu.
                      \nSebagai contoh, kecepatan benda pada detik ke 4.5 dapat dilihat pada gambar di bawah ini."""),
                  Image.asset('assets/soal2j.jpg'),
                  const Text(
                      """Dapat dilihat pada grafik di atas garis v4.5 berupa garis lurus dengan kemiringan 3 ke arah kiri, yang artinya kecepatan benda pada detik ke 4.5 adalah 3 m/s ke arah kiri.
                      \nHal ini menunjukan bahwa benda bergerak mundur dengan kecepatan tetap sebesar 3 m/s.
                      \nMengingat bahwa kecepatan benda pada keadaan ketiga adalah sama disetiap waktunya, maka pada keadaan 3 dapat disimpulkan bahwa benda bergerak mundur dengan kecepatan 3 m/s sampai detik ke 5.
                      \nBerdasarkan data di atas, grafik kecepatan terhadap waktu dapat digambarkan sebagai berikut:"""),
                  Image.asset('assets/soal2d.jpg'),
                ],
              ),
            ),
          ),
          PageViewModel(
            title: 'Representasi Matematis',
            bodyWidget: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "Perhatikan grafik posisi terhadap waktu di bawah ini."),
                  Center(child: Image.asset('assets/soal1.jpg')),
                  const Text(
                    """Grafik posisi terhadap waktu di atas memiliki 3 keadaan:
                    \nt = 0 sampai t = 2""",
                    textAlign: TextAlign.justify,
                  ),
                  Center(child: Image.asset('assets/soal2k.jpg')),
                  const Text(
                    """t = 2 sampai t = 4""",
                    textAlign: TextAlign.justify,
                  ),
                  Center(child: Image.asset('assets/soal2l.jpg')),
                  const Text(
                      """Berdasarkan nilai kecepatan dari detik ke 0 sampai detik ke 5, maka grafik kecepatan terhadap waktu dapat digambarkan sebagai berikut:"""),
                  Center(child: Image.asset('assets/soal2d.jpg')),
                ],
              ),
            ),
          ),
        ],
        showNextButton: true,
        showDoneButton: true,
        showBackButton: true,
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        next: const Text('Next', style: TextStyle(fontWeight: FontWeight.w600)),
        back: const Text('Back', style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () {
          Get.offAll(() => const Soal3());
        },
      ),
    );
  }
}
