import 'package:flutter/material.dart';

class MoreInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'More Info',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 238, 113, 136),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Mengatur scroll ke samping
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tambahkan ikon dan teks "Education History"
              Row(
                children: [
                  Icon(
                    Icons.school,
                    color: Color.fromARGB(255, 238, 113, 136),
                  ), // Ubah warna ikon sesuai keinginan
                  SizedBox(width: 8.0), // Jarak antara ikon dan teks
                  Text(
                    'Education History',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0), // Jarak antara teks dan card

              // Tambahkan row dengan card pendidikan
              Row(
                children: [
                  EducationCard(
                    degree: 'Informatics - Full Stack Development',
                    school: 'STIE Ciputra Makassar',
                    year: '2022 - Present',
                    image: 'assets/uc.png', // Ganti dengan asset yang sesuai
                  ),
                  EducationCard(
                    degree: 'High School - Science Major',
                    school: 'SMA Rajawali Makassar',
                    year: '2019 - 2022',
                    image: 'assets/sma.png', // Ganti dengan asset yang sesuai
                  ),
                  EducationCard(
                    degree: 'Junior School - General Major',
                    school: 'SMP Rajawali Makassar',
                    year: '2016 - 2019',
                    image: 'assets/smp.jpg', // Ganti dengan asset yang sesuai
                  ),
                  EducationCard(
                    degree: 'Elementary School - No Major',
                    school: 'SD Nusantara Makassar',
                    year: '2010 - 2016',
                    image: 'assets/sd.jpg', // Ganti dengan asset yang sesuai
                  ), // Tambahkan card pendidikan lainnya
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String degree;
  final String school;
  final String year;
  final String image;

  EducationCard({
    required this.degree,
    required this.school,
    required this.year,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.0, // Lebar card
      height: 130.0, // Tinggi card
      margin: EdgeInsets.only(right: 16.0), // Jarak antar card
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100.0, // Lebar gambar
              height: 130.0, // Tinggi gambar (sesuai dengan tinggi card)
              child: Align(
                alignment: Alignment.centerRight, // Gambar diatur ke kanan
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        8.0), // Atur radius sesuai keinginan
                    child: Image.asset(
                      image,
                      fit: BoxFit
                          .cover, // Mengatur bagaimana gambar menyesuaikan kotak
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.0), // Jarak antara gambar dan teks
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      degree,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(school),
                    SizedBox(height: 2.0),
                    Text(year),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
