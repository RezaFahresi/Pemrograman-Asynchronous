import 'package:flutter/material.dart';


class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Change Color"),
          onPressed: () {
            _navigateAndGetColor(context);
          },
        ),
      ),
    );
  }

  // Fungsi untuk melakukan navigasi dan mengambil warna
  Future<void> _navigateAndGetColor(BuildContext context) async {
    // Mengambil warna dari layar kedua, jika null maka gunakan warna default
    color = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NavigationSecond(),
      ),
    ) ?? Colors.blue;

    // Memperbarui tampilan dengan warna yang baru
    setState(() {});
  }
}

class NavigationSecond extends StatelessWidget {
  const NavigationSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Second Screen')),
      body: Center(
        child: ElevatedButton(
          child: const Text("Pick Color"),
          onPressed: () {
            // Navigasi kembali ke layar pertama dengan warna baru
            Navigator.pop(context, Colors.red); // Mengembalikan warna merah
          },
        ),
      ),
    );
  }
}
