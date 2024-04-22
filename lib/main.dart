import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Data Diri Saya';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: Column(
          children: [
            // Section for Profile Image and Information
            ProfileSection(
              profileImage: AssetImage('assets/Foto_RizmaSabillah.jpg'),
              name: 'Rizma Sabillah',
              location: 'Desa Tumanggal, Kec. Pengadegan, Kab. Purbalingga',
            ),
            // Section for Button Actions
            ButtonSection(),
            // Section for Text Description
            TextSection(
              description:
                  'Hallo, perkenalkan nama saya Rizma Sabillah biasa dipanggil Rizma. Saya kelahiran Jakarta, 2 September 2001. Sekarang saya tinggal di Desa Tumanggal, Kec, Pengadegan, Kab. Purbalingga. Saya sedang menempuh pendidikan sarjana di STMIK Widya Utama Purwokerto mengambil jurusan Teknik Informatika dan sekarang saya sudah semester 6.',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.location,
  }) : super(key: key);

  final ImageProvider profileImage;
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20), // Menambahkan spasi di atas foto profil
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(
            image: profileImage,
            width: 180, // Lebar sesuai kebutuhan
            height: 300, // Tinggi sesuai kebutuhan
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10), // Menambahkan spasi antara foto profil dan teks
        Text(
          name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5), // Menambahkan spasi antara nama dan alamat
        Text(
          location,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 20), // Menambahkan spasi di bawah alamat
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            // Action when Call button is pressed
          },
          icon: const Icon(Icons.call), // Mengganti ikon menjadi ikon panggilan
          label: const Text('CALL'),
          style: ElevatedButton.styleFrom(
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Action when Route button is pressed
          },
          icon: const Icon(Icons.directions), // Mengganti ikon menjadi ikon arah
          label: const Text('ROUTE'),
          style: ElevatedButton.styleFrom(
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Action when Share button is pressed
          },
          icon: const Icon(Icons.share), // Mengganti ikon menjadi ikon berbagi
          label: const Text('SHARE'),
          style: ElevatedButton.styleFrom(
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
