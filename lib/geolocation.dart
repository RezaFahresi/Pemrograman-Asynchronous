import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = ''; // Menyimpan posisi
  Future<Position>? position; // Menyimpan Future<Position>

  @override
  void initState() {
    super.initState();
    position = getPosition(); // Menetapkan position untuk diproses lebih lanjut
  }

  // Fungsi untuk mendapatkan posisi terkini
  Future<Position> getPosition() async {
    // Mengecek apakah layanan lokasi diaktifkan
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Jika tidak, beri peringatan
      setState(() {
        myPosition = 'Location services are disabled.';
      });
      return Future.error('Location services are disabled.');
    }

    // Tunggu selama 3 detik sebelum mengambil posisi
    await Future.delayed(const Duration(seconds: 3));

    // Mendapatkan posisi terkini
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location')),
      body: Center(
        child: FutureBuilder<Position>(
          future: position, // Menyambungkan Future dengan FutureBuilder
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Tampilkan CircularProgressIndicator saat masih menunggu
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              // Jika selesai, periksa error dan tampilkan data
              if (snapshot.hasError) {
                return const Text('Something terrible happened!');
              }
              // Jika tidak ada error, tampilkan latitude dan longitude
              return Text(
                'Latitude: ${snapshot.data?.latitude} - Longitude: ${snapshot.data?.longitude}',
                style: const TextStyle(fontSize: 16),
              );
            } else {
              // Tampilkan pesan lain jika terjadi kondisi lain
              return const Text('No location available.');
            }
          },
        ),
      ),
    );
  }
}
