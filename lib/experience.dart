import 'package:flutter/material.dart';
import 'dart:math';

class ExperienceScreen extends StatelessWidget {
  final List<ExperienceItem> experiences = [
    ExperienceItem(
      title: 'Treasurer IMT Student Union',
      company: 'STIE Ciputra Makassar',
      year: '2023 - Present',
      description:
          'Bertugas untuk mengatur keuangan yang ada pada Student Union tersebut, baik dalam bentuk pemasukan maupun pengeluaran ',
      image: 'assets/isu.png',
    ),
    ExperienceItem(
      title: 'Secretary O-Week 2024',
      company: 'STIE Ciputra Makassar',
      year: '2023 - 2024',
      description:
          'Bertugas untuk membuat segala jenis laporan, surat yang akan dibawa ke pihak luar, mengurus segala absensi, serta proposal O-Week',
      image: 'assets/oweek.png',
    ),
    ExperienceItem(
      title: 'Secretary Infinity',
      company: 'STIE Ciputra Makassar',
      year: '2022 - Present',
      description:
          'Bertugas untuk membuat segala jenis laporan, mengurus segala absensi, serta proposal acara yang akan dilaksanakan oleh INFINITY',
      image: 'assets/infinity.png',
    ),
    ExperienceItem(
      title: 'Panitia De Vest',
      company: 'GDSC Makassar',
      year: '2022',
      description:
          'Saya di sini masuk ke dalam divisi acara di mana saya mengurus rundown beserta registrasi para peserta sebelum memasuki sesi acara berlangsung',
      image: 'assets/gugel.png',
    ),
    ExperienceItem(
      title: 'Vice President FDU-Katolik',
      company: 'STIE Ciputra Makassar',
      year: '2022 - Present',
      description:
          'Bertugas untuk membantu ketua dalam mengurus para pengurus lain FDU Katolik',
      image: 'assets/fdu.png',
    ),
    // Tambahkan data pengalaman lainnya
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Experience',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 238, 113, 136),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Berikut adalah beberapa pengalaman saya:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '* Tap pada setiap item untuk melihat deskripsi.',
              style: TextStyle(
                fontSize: 12.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              experiences[index].title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: Text(experiences[index].description),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Tutup'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Card(
                      color: experiences[index].cardColor,
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                              experiences[index].image,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              experiences[index].title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              '${experiences[index].company}, ${experiences[index].year}',
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menghasilkan warna acak
  Color _generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }
}

class ExperienceItem {
  final String title;
  final String company;
  final String year;
  final String description;
  final String image;
  final Color cardColor; // Tambahkan properti cardColor

  ExperienceItem({
    required this.title,
    required this.company,
    required this.year,
    required this.description,
    required this.image,
  }) : cardColor = _generateRandomColor();

  static Color _generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }
}
