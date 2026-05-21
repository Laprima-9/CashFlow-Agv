import 'package:flutter/material.dart';
import 'package:cashflow/welcome.dart';
import 'package:cashflow/add_activity.dart';
import 'package:cashflow/profil.dart';
// Jangan lupa import file tempat AddActivityScreen berada jika belum
// import 'package:cashflow/add_activity.dart'; // (Sesuaikan nama file-nya)

class Home extends StatelessWidget {
  const Home({super.key});

  // ✅ Dipindah ke luar (sebagai static atau di StatefulWidget),
  // karena 'final' instance field tidak bisa dipakai di const constructor
  static const List<String> daftarKegiatan = [
    "Beli makan siang",
    "Bayar BPP",
    "Bayar uang kas",
    "Bayar member gym",
    "Bayar kuota",
    "Menabung",
    "Beli BBM",
    "Beli pulsa",
    "Beli kopi",
    "Beli snack",
    "Beli beli",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Keuangan"),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Aksi ketika ikon profil diklik (misalnya, navigasi ke halaman profil)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const profilGweh()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: daftarKegiatan.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: (index % 2 == 0 ? Colors.blue : Colors.green),
                      child: const Icon(Icons.monetization_on, color: Colors.white),
                    ),
                    title: Text(daftarKegiatan[index]),
                    subtitle: const Text("Hari ini"),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      print("Anda mengklik ${daftarKegiatan[index]}");
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
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
          const SizedBox(height: 50), // Sedikit jarak tambahan di bagian bawah agar tidak terlalu mepet
        ],
      ),
      
      // 👇 Floating Action Button ditambahkan di sini
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddActivity()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}