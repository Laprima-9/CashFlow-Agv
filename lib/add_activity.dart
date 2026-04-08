import 'package:flutter/material.dart';

class AddActivity extends StatefulWidget {
  const AddActivity({super.key});

  @override
  State<AddActivity> createState() => _AddActivityState();
}

class _AddActivityState extends State<AddActivity> {
  // Perekam untuk input judul kegiatan
  final TextEditingController _controllerKegiatan = TextEditingController();
  final TextEditingController _controllerJumlah = TextEditingController();

  @override
  void dispose() {
    _controllerKegiatan.dispose();
    _controllerJumlah.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Kegiatan')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controllerKegiatan,
              decoration: const InputDecoration(
                labelText: 'Nama Kegiatan',
                labelStyle: TextStyle(color: Color.fromARGB(255, 38, 73, 199)),
                hintText: "Contoh: Beli Buku",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 38, 73, 199),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 38, 73, 199),
                    width: 2.0,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.edit,
                  color: Color.fromARGB(255, 38, 73, 199),
                ), // Menambahkan ikon di dalam TextField
              ),
            ),

            const SizedBox(height: 20),
            
            TextField(
              controller: _controllerJumlah,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Jumlah',
                labelStyle: TextStyle(color: Color.fromARGB(255, 38, 73, 199)),
                hintText: "Contoh: 10000",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 38, 73, 199),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 38, 73, 199),
                    width: 2.0,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.attach_money,
                  color: Color.fromARGB(255, 38, 73, 199),
                  ),
                
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: const Color.fromARGB(255, 38, 73, 199),
              ),
              onPressed: () {
                // Logika saat tombol ditekan
                if (_controllerKegiatan.text.isEmpty) {
                  // Tampilkan pesan error jika input kosong
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Nama kegiatan tidak boleh kosong'),
                    ),
                  );
                } else {
                  // Ambil data dan kembali ke halaman sebelumnya
                  String namaKegiatan = _controllerKegiatan.text;

                  // Contoh menyimpan data (bisa diganti dengan logika penyimpanan sebenarnya)
                  print("Data Tersimpan: $namaKegiatan - Rp${_controllerJumlah.text}");

                  // Kembali ke halaman sebelumnya dengan membawa data
                  Navigator.pop(context, namaKegiatan);
                }
              },
              child: const Text(
                'Simpan',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
