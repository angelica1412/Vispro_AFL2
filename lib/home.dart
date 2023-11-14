import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 238, 113, 136),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'profile_image',
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileImageDetail(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        'assets/foto.jpg',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Maria Angelica Vinesytha Chandrawan',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.0),
              Text(
                'Tentang Saya:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                '  Saya merupakan mahasiswa semester 2 Informatika. Memiliki ketertarikan untuk memperdalam dunia digital dan teknologi. Memiliki ketertarikan untuk memperdalam dunia digital dan teknologi. Memiliki kegesitan dan tidak suka menunda pekerjaan dalam melakukan tugas dan tanggung jawab yang diberikan. Memiliki kemampuan dalam hal komunikasi. Mudah berbaur dengan sesama, pemerhati detail serta memiliki rasa ingin tahu yang cukup tinggi.',
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Contact Info:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 120, 189, 246),
                  decoration: TextDecoration.underline,
                ),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('mangelica01@student.ciputra.ac.id'),
                iconColor: Color.fromARGB(255, 238, 113, 136),
                onTap: () {
                  // Tambahkan aksi yang sesuai
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('+6285847682763'),
                iconColor: Color.fromARGB(255, 238, 113, 136),
                onTap: () {
                  // Tambahkan aksi yang sesuai
                },
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('mariangelica1214'),
                iconColor: Color.fromARGB(255, 238, 113, 136),
                onTap: () {
                  // Tambahkan aksi yang sesuai
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileImageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'profile_image',
            child: Image.asset(
              'assets/foto.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
