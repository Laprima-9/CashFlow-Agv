import 'package:cashflow/welcome.dart';
import 'package:flutter/material.dart';

class profilGweh extends StatelessWidget {
  const profilGweh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profil Pertama Gweh"),
          backgroundColor: const Color.fromARGB(255, 255, 7, 156),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CircleAvatar(
                radius: 84,
                backgroundColor: const Color.fromARGB(255, 255, 7, 156),
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                  backgroundImage: AssetImage('assets/PP.jpeg'),
                ),
              ),

              const SizedBox(height: 20), // Memberi jarak kosong

              // Widget Teks Nama
              const Text(
                "Agvenditan Laprima",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              // Widget Teks Deskripsi
              const Text("Siswa SMK Negeri 1 Sampit - Belajar Flutter cik"),

              const SizedBox(height: 20), // Memberi jarak kosong

              // Widget Row untuk info tambahan
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on, color: Colors.red),
                  Text("Sampit, Indonesia"),
                ],
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.indigo,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                  );
                },
                child: const Text('Kembali ke Welcome Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}