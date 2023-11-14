import 'package:flutter/material.dart';

class MoreInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight:
                  0.0, // Set ke 0.0 untuk menghilangkan background gambar
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'More Info',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                centerTitle: true, // Teks di tengah AppBar
              ),
              backgroundColor:
                  Color.fromARGB(255, 238, 113, 136), // Warna AppBar
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.school,
                    color: Color.fromARGB(255, 238, 113, 136),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Education History',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    EducationCard(
                      degree: 'Informatics - Full Stack Development',
                      school: 'STIE Ciputra Makassar',
                      year: '2022 - Present',
                      image: 'assets/uc.png',
                    ),
                    EducationCard(
                      degree: 'High School - Science Major',
                      school: 'SMA Rajawali Makassar',
                      year: '2019 - 2022',
                      image: 'assets/sma.png',
                    ),
                    EducationCard(
                      degree: 'Junior School - General Major',
                      school: 'SMP Rajawali Makassar',
                      year: '2016 - 2019',
                      image: 'assets/smp.jpg',
                    ),
                    EducationCard(
                      degree: 'Elementary School - No Major',
                      school: 'SD Nusantara Makassar',
                      year: '2010 - 2016',
                      image: 'assets/sd.jpg',
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height:
                      10.0), // Perkecil jarak antara Education History dan Achievement
              Text(
                'Achievements',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    AchievementCard(
                      title: 'Lomba KTI AIoT',
                      organization: 'Politeknik Semarang',
                      year: '2023',
                      role: 'Sebagai Peserta',
                    ),
                    AchievementCard(
                      title: 'Lomba AIoT',
                      organization: 'Universitas Udayana Bali',
                      year: '2023',
                      role: 'Sebagai Finalis',
                    ),
                    AchievementCard(
                      title: 'Olimpiade Fisika',
                      organization: 'Universitys ID',
                      year: '2021, Masa SMA',
                      role: 'Pemenang Silver Medal',
                    ),
                    AchievementCard(
                      title: 'Ompliade Matematika ',
                      organization: 'University ID',
                      year: '2021, Masa SMA',
                      role: 'Pemenang Silver Medal',
                    ),
                    // Tambahkan AchievementCard lainnya jika diperlukan
                  ],
                ),
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

class AchievementCard extends StatelessWidget {
  final String title;
  final String organization;
  final String year;
  final String role;

  AchievementCard({
    required this.title,
    required this.organization,
    required this.year,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Organization: $organization'),
            Text('Year: $year'),
            Text('Role: $role'),
          ],
        ),
      ),
    );
  }
}
