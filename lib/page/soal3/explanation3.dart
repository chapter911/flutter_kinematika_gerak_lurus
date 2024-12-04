import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kinematika_gerak_lurus/page/soal2/soal2.dart';

class Explanation3 extends StatefulWidget {
  const Explanation3({super.key});

  @override
  State<Explanation3> createState() => _Explanation3State();
}

class _Explanation3State extends State<Explanation3> {
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
                      "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                  Image.asset('assets/soal3.jpg'),
                  const Text(
                    """Berdasarkan grafik di atas, benda mengalami tiga keadaan gerak. Keadaan pertama dari detik ke 0 sampai detik ke 2 benda bergerak secara GLBB diperlambat. Keadaan kedua dari detik ke 2 sampai detik ke 3 benda bergerak secara GLB. Keadaan ketiga dari detik ke 3 sampai detik ke 5 benda bergerak GLBB dipercepat. Besarnya kemiringan garis saat benda bergerak GLBB dipercepat sama dengan saat benda bergerak GLBB diperlambat.
                    \nHal ini menunjukan bahwa besarnya percepatan benda saat bergerak GLBB dipercepat sama dengan saat benda bergerak GLBB diperlambat. Pada GLBB diperlambat  nilai percepatan berharga negative.
                    \nSehingga, grafik percepatan (a) terhadap waktu (t) dapat digambarkan sebagai""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal3b.jpg'),
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
                      "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                  Image.asset('assets/soal3.jpg'),
                  const Text(
                    """Grafik hubungan kecepatan terhadap waktu di atas dapat diubah dalam bentuk tabel seperti di bawah ini:""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal3n.jpg'),
                  const Text(
                      """Pada tabel diatas, dapat dilihat dari detik ke 0 sampai detik ke 1 benda kecepatan benda berubah -1.5 m/s, dari detik ke 1 sampai detik ke 2 kecepatan benda berubah -1.5 m/s. Hal ini menunjukan bahwa dari detik ke 0 sampai detik ke 2, benda bergerak dengan percepatan -1.5 m/s2.
                      \nDari detik ke2 sampai detik ke 3, kecepatan benda tidak berubah. Hal ini menunjukan bahwa benda bergerak secara GLB (tidak memiliki percepatan).
                      \nDari detik ke 4 sampai detik ke 5, kecepatan benda berubah 1.5 m/s. Hal ini menunjukan bahwa dari detik ke 4 sampai detik ke 5, benda bergerak dengan percepatan 1.5 m/s2.
                      \nBerdasarkan data di atas, grafik percepatan terhadap waktu dapat digambarkan sebagai berikut:"""),
                  Image.asset('assets/soal3b.jpg'),
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
                      "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                  Image.asset('assets/soal3.jpg'),
                  const Text(
                    """Grafik hubungan kecepatan terhadap waktu di atas dapat diubah dalam bentuk diagram gerak seperti di bawah ini:""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal3o.jpg'),
                  const Text(
                      """Berdasarkan gambar di atas, dari detik ke 0 sampai detik ke 2 terlihat panjang garis percepatan adalah sama, sedangkan panjang garis kecepatan berkurang sebesar 1.5 tiap detiknya. Hal ini menunjukan bahwa benda bergerak GLBB diperlambat dengan percepatan -1.5 m/s2.
                      \nDari detik ke2 sampai detik ke 3, kecepatan benda tidak berubah. Hal ini menunjukan bahwa benda bergerak secara GLB (tidak memiliki percepatan).
                      \nDari detik ke 3 sampai detik ke 5 terlihat panjang garis percepatan adalah sama, sedangkan panjang garis kecepatan bertambah sebesar 1.5 tiap detiknya. Hal ini menunjukan bahwa benda bergerak GLBB dipercepat dengan percepatan 1.5 m/s2.
                      \nBerdasarkan data di atas, grafik percepatan terhadap waktu dapat digambarkan sebagai berikut:"""),
                  Image.asset('assets/soal3b.jpg'),
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
                      "Perhatikan grafik kecepatan terhadap waktu untuk sebuah benda selama interval 5 detik di bawah ini."),
                  Image.asset('assets/soal3.jpg'),
                  const Text(
                    """Grafik hubungan kecepatan terhadap waktu di atas dapat dijabarkan dalam tiga keadaan.
                    \nPercepatan benda setiap detiknya dapat digambarkan berupa garis singgung pada grafik kecepatan terhadap waktu
                    \nKeadaan pertama, dari detik ke 0 sampai detik ke 2, kecepatan benda berkurang setiap detiknya, dengan bentuk grafik berupa garis lurus. Hal ini menunjukan bahwa percepatan benda dari detik ke 0 sampai detik ke 2 adalah sama. Garis singgung yang merepresentasikan kecepatan benda akan berupa garis lurus dengan kemiringan tertentu.
                    \nSebagai contoh, percepatan benda pada detik ke 1 dapat dilihat pada gambar di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal3p.jpg'),
                  const Text(
                      """Dapat dilihat pada grafik di atas garis a1 berupa garis lurus dengan kemiringan 1.5 ke arah bawah, yang artinya percepatan benda pada detik ke 1 adalah 1.5 m/s2 berlawanan arah dengan arah gerak benda.
                  \nHal ini menunjukan bahwa benda bergerak GLBB dengan percepatan sebesar -1.5 m/s2. Mengingat bahwa percepatan benda pada keadaan pertama adalah sama disetiap waktunya, maka pada keadaan 1 dapat disimpulkan bahwa benda bergerak maju dengan percepatan -1.5 m/s2 sampai detik ke 2.
                  \nKeadaan kedua, dari detik ke 2 sampai detik ke 3, kecepatan benda tidak berubah. Garis singgung yang merepresentasikan percepatan benda akan berupa garis mendatar dengan kemiringan 0.
                  \nSebagai contoh, percepatan benda pada detik ke 2.5 dapat dilihat pada gamabr di bawah ini."""),
                  Image.asset('assets/soal3q.jpg'),
                  const Text(
                      """Dapat dilihat pada gambar di atas, garis a2.5 berupa garis datar. Hal ini menunjukan bahwa percepatan benda pada detik ke 2.5 adalah 0, atau benda bergerak dengan kecepatan konstan.
                      \nKeadaan ketiga, dari detik ke 3 sampai detik ke 5, kecepatan benda bertambah setiap detiknya, dengan bentuk grafik berupa garis lurus. Hal ini menunjukan bahwa percepatan benda dari detik ke 3 sampai detik ke 5 adalah sama. Garis singgung yang merepresentasikan kecepatan benda akan berupa garis lurus dengan kemiringan tertentu.
                      \nSebagai contoh, percepatan benda pada detik ke 4 dapat dilihat pada gambar di bawah ini."""),
                  Image.asset('assets/soal3r.jpg'),
                  const Text(
                      """Dapat dilihat pada grafik di atas garis a4 berupa garis lurus dengan kemiringan 1.5 ke arah atas, yang artinya percepatan benda pada detik ke 4 adalah 1.5 m/s2 searah dengan arah gerak benda.
                      \nHal ini menunjukan bahwa benda bergerak GLBB dengan percepatan sebesar 1.5 m/s2. Mengingat bahwa percepatan benda pada keadaan pertama adalah sama disetiap waktunya, maka pada keadaan 3 dapat disimpulkan bahwa benda bergerak maju dengan percepatan 1.5 m/s2 sampai detik ke 5.
                      \nBerdasarkan data di atas, grafik kecepatan terhadap waktu dapat digambarkan sebagai berikut:"""),
                  Image.asset('assets/soal3b.jpg'),
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
                      "Perhatikan grafik kecepatan terhadap waktu di bawah ini."),
                  Image.asset('assets/soal3.jpg'),
                  const Text(
                    """Grafik kecepatan terhadap waktu di atas memiliki 3 keadaan:
                    \nt = 0 sampai t = 2""",
                    textAlign: TextAlign.justify,
                  ),
                  Center(child: Image.asset('assets/soal3s.jpg')),
                  const Text(
                      """Berdasarkan nilai percepatan dari detik ke 0 sampai detik ke 5, maka grafik percepatan terhadap waktu dapat digambarkan sebagai berikut:"""),
                  Center(child: Image.asset('assets/soal3b.jpg')),
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
          Get.offAll(() => const Soal2());
        },
      ),
    );
  }
}
