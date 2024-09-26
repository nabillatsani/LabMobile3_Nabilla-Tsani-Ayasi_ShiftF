Nama : Nabilla Tsani Ayasi

NIM  : H1D022058

Shift : F

## Penjelasan Kode 
Aplikasi Flutter sederhana ini mengimplementasikan login, navigasi, side menu, dan penyimpanan lokal menggunakan SharedPreferences. 

1. Inisialisasi Aplikasi dan Routes
Di `main.dart`, aplikasi diinisialisasi dengan rute untuk halaman login dan halaman utama. Kode berikut mendefinisikan rute awal:

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

2. Proses Login dan Penyimpanan Status
Pada halaman login, setelah pengguna berhasil masuk, status login disimpan menggunakan SharedPreferences. Kode berikut menangani login:

Future<void> _login() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', true);  // Simpan status login
  Navigator.pushReplacementNamed(context, '/home');  // Arahkan ke halaman utama
}

3. Side Menu dan Logout
Halaman utama dilengkapi dengan side menu yang memungkinkan pengguna untuk logout. Saat logout, status login dihapus dari SharedPreferences menggunakan kode berikut:

Future<void> _logout(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', false);  // Hapus status login
  Navigator.pushReplacementNamed(context, '/');  // Kembali ke halaman login
}

## Screenshoot!

![Screenshot 2024-09-26 220159](https://github.com/user-attachments/assets/a56c710e-f542-4eae-a0d7-ab068acfc2aa)
![Screenshot 2024-09-26 220234](https://github.com/user-attachments/assets/1cc76afa-3f88-4a7d-abac-3b6777565fdc)
![Screenshot 2024-09-26 220248](https://github.com/user-attachments/assets/ad19bdd5-3a1b-49ab-aee7-7fbbfb5f280d)
![Screenshot 2024-09-26 220256](https://github.com/user-attachments/assets/543a222b-a64f-4a43-998b-2ad972508077)
![Screenshot 2024-09-26 220307](https://github.com/user-attachments/assets/bc2d5b53-e9c2-42ba-8925-439e6a4d1cf1)

