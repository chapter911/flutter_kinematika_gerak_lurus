import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kinematika_gerak_lurus/page/soal5/soal5.dart';

class Explanation5 extends StatefulWidget {
  const Explanation5({super.key});

  @override
  State<Explanation5> createState() => _Explanation5State();
}

class _Explanation5State extends State<Explanation5> {
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
                      "Perhatikan grafik posisi terhadap waktu di bawah ini."),
                  Image.asset('assets/soal5.jpg'),
                  const Text(
                    """Grafik posisi terhadap waktu di atas menunjukan keadaan gerak dari dua benda.
                    \nBenda A bergerak GLBB dipercepat dan benda B bergerak GLB.
                    \nBenda A dan benda B bergerak dari posisi awal yang sama. Benda B bergerak dengan kecepatan tertentu yang besarnya sama setiap detik. Benda A bergerak pelan-pelan sampai akhirnya pada detik ke 5, Benda A tepat akan menyalip benda B. Hal ini menunjukan bahwa pada detik ke 5, kecepatan benda B lebih besar daripada kecepatan benda A.""",
                    textAlign: TextAlign.justify,
                  ),
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
                      "Perhatikan grafik posisi terhadap waktu di bawah ini."),
                  Image.asset('assets/soal5.jpg'),
                  const Text(
                    """Grafik posisi terhadap waktu di atas menunjukan keadaan gerak dari dua benda.
                    \nPosisi benda A dan benda B dapat dituliskan dalam table berikut:""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal5e.png'),
                  const Text(
                      """Untuk mencari besarnya kecepatan sesaat pada saat t sama dengan kecepatan rata-rata dari t-1 sampai t+1.
                      \nMisalnya kecepatan benda B pada detik ke 2 akan sama dengan rata-rata kecepatan benda dari detik ke 1 sampai detik ke 3. Benda berubah posisi dari x = 2 menjadi x = 9. Artinya benda berpindah sejauh 7 m kearah kanan dalam waktu 2 detik. Atau dalam waktu 1 detik, benda berpindah sejauh 3.5 m ke arah kanan. Dalam fisika, kondisi ini dikatakan bahwa benda bergerak dengan kecepatan sebesar 3.5 m/s.
                      \nDengan cara yang sama, kecepatan pada detik ke 3 diperoleh sebesar 4.5 dan pada detik ke 4 diperoleh sebesar 5.5 m/s.
                      \nPada benda B setiap 1 detik berpindah sejauh 4 m. Hal ini menunjukan bahwa benda B bergerak secara GLB dengan kecepatan 4 m/s.
                      \nDari data di atas, posisi dan kecepatan benda tiap detik dapat dituliskan pada table sebagai berikut:"""),
                  Image.asset('assets/soal5f.jpg'),
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
                      "Perhatikan grafik posisi terhadap waktu di bawah ini."),
                  Image.asset('assets/soal5.jpg'),
                  const Text(
                    """Grafik hubungan posisi terhadap waktu di atas dapat diubah dalam bentuk diagram gerak seperti di bawah ini:""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal5g.png'),
                  const Text(
                      """Berdasarkan gambar di atas, posisi benda A berubah dengan pola tertentu. Yang artinya kecepatan benda berubah secara beraturan. Hal ini menunjukan bahwa benda bergerak secara GLBB.
                      \nUntuk mencari besarnya kecepatan sesaat pada saat t sama dengan kecepatan rata-rata dari t-1 sampai t+1.
                      \nMisalnya kecepatan benda A pada detik ke 2 akan sama dengan rata-rata kecepatan benda dari detik ke 1 sampai detik ke 3. Benda berubah posisi dari x = 2 menjadi x = 9. Artinya benda berpindah sejauh 7 m kearah kanan dalam waktu 2 detik. Atau dalam waktu 1 detik, benda berpindah sejauh 3.5 m ke arah kanan. Dalam fisika, kondisi ini dikatakan bahwa benda bergerak dengan kecepatan sebesar 3.5 m/s.
                      \nDengan cara yang sama, kecepatan pada detik ke 3 diperoleh sebesar 4.5 dan pada detik ke 4 diperoleh sebesar 5.5 m/s.
                      \nKecepatan benda berubah dari 3.5 m/s menjadi 4.5 m/s selama 1 detik, dan berubah dari 4.5 m/s menjadi 5.5 m/s selama 1 detik. Mengingat benda bergerak secara GLBB, maka kecepatan benda pada detik ke 5 dapat diprediksi sebesar 6.5 m/s.
                      \nPada benda B setiap 1 detik berpindah sejauh 4 m. Hal ini menunjukan bahwa benda B bergerak secara GLB dengan kecepatan 4 m/s.
                      \nBerdasarkan data di atas, maka pada detik ke 5, kecepatan benda A lebih besar daripada kecepatan benda B."""),
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
                      "Perhatikan grafik posisi terhadap waktu di bawah ini."),
                  Image.asset('assets/soal5.jpg'),
                  const Text(
                    """Berdasarkan grafik hubungan posisi terhadap waktu di atas, kecepatan benda A dan benda B pada detik ke 5 dapat digambarkan melalui garis singgung seperti di bawah ini.""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/soal5h.png'),
                  const Text(
                      """Besarnya kecepatan benda A dan benda B merupakan kemiringan dari garis singgung tersebut atau sama dengan kecepatan rata-rata dari t-1 sampai t+1.
                      \nkecepatan benda A pada detik ke 5 akan sama dengan rata-rata kecepatan benda dari detik ke 4 sampai detik ke 6. Benda berubah posisi dari x = 14 menjadi x = 27. Artinya benda berpindah sejauh 13 m kearah kanan dalam waktu 2 detik. Atau dalam waktu 1 detik, benda berpindah sejauh 6.5 m ke arah kanan. Dalam fisika, kondisi ini dikatakan bahwa benda bergerak dengan kecepatan sebesar 6.5 m/s.
                      \nkecepatan benda B pada detik ke 5 akan sama dengan rata-rata kecepatan benda dari detik ke 4 sampai detik ke 6. Benda berubah posisi dari x = 16 menjadi x = 24. Artinya benda berpindah sejauh 8 m kearah kanan dalam waktu 2 detik. Atau dalam waktu 1 detik, benda berpindah sejauh 4 m ke arah kanan. Dalam fisika, kondisi ini dikatakan bahwa benda bergerak dengan kecepatan sebesar 4 m/s."""),
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
                  Image.asset('assets/soal5.jpg'),
                  const Text(
                    """Berdasarkan grafik di atas, terlihat bahwa benda A bergerak secara GLBB dan benda B bergerak secara GLB.
                    \nBerdasarkan grafik, persamaan posisi benda A dapat dicari dengan cara:""",
                    textAlign: TextAlign.justify,
                  ),
                  Center(child: Image.asset('assets/soal5i.png')),
                  Center(child: Image.asset('assets/soal5j.png')),
                  const Text(
                      """Dari persamaan posisi dapat ditentukan persamaan kecepatannya yaitu:"""),
                  Center(child: Image.asset('assets/soal5k.png')),
                  const Text(
                      """Sehingga kecepatan benda A pada detik ke 5 adalah:"""),
                  Center(child: Image.asset('assets/soal5l.png')),
                  const Text(
                      """Persamaan posisi benda B dapat dicari menggunakan persamaan garis lurus melalui dua buah titik:"""),
                  Center(child: Image.asset('assets/soal5m.png')),
                  const Text(
                      """Dari persamaan posisi dapat ditentukan persamaan kecepatannya yaitu:"""),
                  Center(child: Image.asset('assets/soal5n.png')),
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
          Get.offAll(() => const Soal5());
        },
      ),
    );
  }
}
