import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kinematika_gerak_lurus/page/soal2/soal2.dart';

class Explanation1 extends StatefulWidget {
  const Explanation1({super.key});

  @override
  State<Explanation1> createState() => _Explanation1State();
}

class _Explanation1State extends State<Explanation1> {
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
                  Image.asset('assets/soal1.jpg'),
                  const Text(
                    """Grafik hubungan posisi terhadap waktu di atas dapat dijabarkan dalam dua keadaan.
                        \n\nKeadaan pertama dari detik ke 0 sampai detik ke 4, grafik posisi terhadap waktu berbentuk garis mendatar. Hal ini menunjukan bahwa posisi benda tidak berubah, yang artinya benda dalam keadaan diam selama 4 detik.
                        \n\nKeadaan kedua dari detik ke 5 sampai detik ke 10, grafik posisi terhadap waktu berbentuk garis linier dengan arah kemiringan garis ke arah kanan-bawah. Hal ini menunjukan bahwa posisi benda berkurang setiap waktunya, yang artinya benda bergerak mundur dan berhenti pada detik ke 10.""",
                    textAlign: TextAlign.justify,
                  )
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
                  Image.asset('assets/soal1.jpg'),
                  const Text(
                    """Grafik hubungan posisi terhadap waktu di atas dapat diubah dalam bentuk tabel seperti di bawah ini:""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/s1e.png'),
                  const Text(
                    """Berdasarkan table di atas, diperoleh informasi sebagai berikut:
                      \n•	Selama empat detik pertama (dari t = 0s sampai t = 4s), benda diam di x = 3m (3 meter di depan titik acuan x = 0)
                      \n•	Selama enam detik berikutnya (dari t = 4s sampai t = 10s) benda terus bergerak menuju titik acuan dengan kelajuan konstan sebesar 3/6 = 0,5 m/s.
                      \n•	Setelah detik ke 10, benda diam di x = 0m (titik acuan).
                      \nJika sumbu x mengarah ke kanan, maka gerakan benda adalah sebagai berikut. Selama empat detik pertama benda diam pada jarak 3 meter di kanan titik acuan dan enam detik berikutnya bergerak ke kiri dengan kecepatan 0,5 m/s, hingga sampai pada titik acuan kemudian benda berhenti bergerak.""",
                    textAlign: TextAlign.justify,
                  )
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
                  Image.asset('assets/soal1.jpg'),
                  const Text(
                    """Grafik hubungan posisi terhadap waktu di atas dapat dapat diubah dalam bentuk diagram gerak sebagai berikut:""",
                    textAlign: TextAlign.justify,
                  ),
                  Image.asset('assets/s1g.jpg'),
                  const Text(
                    """Dari diagram di atas terlihat bahwa benda mula-mula diam di x = 3 m selama empat detik pertama, kemudian bergerak ke kiri dengan kelajuan 0.5 m/s selama enam detik, dan benda berhenti bergerak di x = 10 m.""",
                    textAlign: TextAlign.justify,
                  )
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
                  Image.asset('assets/soal1.jpg'),
                  const Text(
                    """Grafik hubungan posisi terhadap waktu di atas, gradien garis singgungnya adalah sebagai berikut:
                    \n•	Dalam interval waktu 0≤t≤4, gradiennya nol. Jadi kecepatannya nol.
                    \n•	Dalam interval waktu 4≤t≤10, gradiennya sebesar ∆x⁄(∆t=(0-3)/(10-4)=-0,5.) Jadi kecepatannya sebesar 0,5 m/s dan arahnya berlawanan dengan arah sumbu x. nol. Ingat bahwa tanda negatif menyatakan arah kecepatan, yaitu berlawanan arah dengan sumbu x.  Jika sumbu x ke kanan, maka gerakan benda ke kiri
                    \n•	Dalam interval waktu t≥10 gradiennya nol. Jadi kecepatannya nol.
                    Jadi gerakan benda tersebut adalah mula-mula (dalam interval waktu 0≤t≤4 s) diam di x = 3 kemudian bergerak selama enap detik menuju titik acuan dengan kecepatan 0,5 m/s, kemudian berhenti.""",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ),
          PageViewModel(
            title: 'Representasi Matematis',
            bodyWidget: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                      "Perhatikan grafik posisi terhadap waktu di bawah ini."),
                  Image.asset('assets/soal1.jpg'),
                  const Text(
                      """Grafik posisi terhadap waktu di atas memiliki 2 persamaan posisi."""),
                  Image.asset('assets/s1h.png'),
                  const Text(
                      """Dari kedua persamaan posisi di atas, dapat dicari kecepatan benda pada:"""),
                  Image.asset('assets/s1i.png'),
                  const Text(
                    """Berdasarkan persamaan kecepatan, dapat dilihat bahwa dari detik ke 0 sampai detik ke 4, besar kecepatan benda adalah 0, yang artinya benda diam. Dari detik ke 4 sampai detik ke 10, benda memiliki kecepatan -0.5 m/s yang artinya benda bergerak mundur. Setelah detik ke 10, tidak didefinisikan posisi benda, artinya gerak benda berhenti pada detik ke 10.""",
                    textAlign: TextAlign.justify,
                  )
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
