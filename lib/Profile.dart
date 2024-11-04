import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        elevation: 4, // Menambahkan bayangan di bawah AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Menambahkan SingleChildScrollView agar dapat digulir jika diperlukan
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://cdn0-production-images-kly.akamaized.net/Xc1138UZHofwKdQQRH1C4O0t9EE=/800x450/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/892150/original/048455900_1433335401-kucingmelet5.jpg'),
              ),
              SizedBox(height: 16),
              Text(
                'Nama: suci ndana pratiwi',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent, // Warna teks yang menarik
                ),
              ),
              SizedBox(height: 8),
              Text(
                'NIM: 22TI017', // Ganti dengan NIM pengguna
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Kelas: TI A1', // Ganti dengan kelas pengguna
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Alamat: DOMPU', // Ganti dengan alamat pengguna
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 32),
              Card(
                // Menggunakan Card untuk memberikan tampilan yang lebih baik
                elevation: 4,
                child: ListTile(
                  leading: Icon(Icons.person, color: Colors.blueAccent),
                  title: Text('Tentang Saya',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    'Nama saya suci, saya berkuliah di Universitas Teknologi Mataram jurusan Teknik Informatika.',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
                elevation: 4,
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.blueAccent),
                  title: Text('Pengaturan',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onTap: () {
                    // Aksi ketika diklik
                  },
                ),
              ),
              SizedBox(height: 16),
              Card(
                elevation: 4,
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.redAccent),
                  title: Text('Keluar',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onTap: () {
                    // Aksi ketika diklik
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
