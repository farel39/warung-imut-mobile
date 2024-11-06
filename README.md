# warung_imut

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Tugas 7
## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
### Stateless widget adalah widget yang bersifat statis, yang berarti tampilannya tidak berubah setelah pertama kali ditampilkan. Semua data yang dibutuhkan oleh widget ini diberikan saat widget tersebut dibuat dan tidak dapat berubah selama masa hidupnya. Widget ini hanya di-build sekali, dan tidak ada mekanisme untuk memperbarui tampilan widget setelahnya.

### Contoh stateless widget adalah Text, Icon, dan RaisedButton (kini digantikan oleh ElevatedButton). Widget ini biasanya digunakan untuk elemen yang tampilannya tetap

### Stateful widget adalah widget yang bisa berubah seiring waktu atau berdasarkan interaksi pengguna. Stateful widget memiliki objek state, yang memungkinkan widget untuk memperbarui atau merender ulang tampilannya ketika ada perubahan data atau kondisi. Perubahan tampilan atau data ini biasanya dilakukan menggunakan fungsi setState().

### Contoh Penggunaan: Contoh stateful widget adalah TextField, Checkbox, dan Slider, di mana perubahan data atau interaksi pengguna mempengaruhi tampilan widget

### Perbedaan Stateless dan Stateful Widget adalah Stateless Widget bersifat statis; tidak berubah seiring waktu atau interaksi pengguna, sementara Stateful Widget bersifat dinamis; tampilannya bisa berubah berdasarkan state atau data yang berubah.

## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
### a. MaterialApp:

Widget utama untuk aplikasi Flutter. Menyediakan konfigurasi dasar aplikasi, seperti title, theme, dan home. MaterialApp juga mengelola pengaturan tema dan navigasi halaman dalam aplikasi.

### b. Scaffold:

Menyediakan struktur dasar halaman aplikasi, seperti AppBar, body, dan floatingActionButton. Dalam proyek ini, Scaffold digunakan untuk mengatur struktur utama halaman dengan AppBar di bagian atas dan body untuk konten halaman.

### c. AppBar:

Komponen bagian atas halaman yang menampilkan judul atau aksi-aksi utama di bagian atas layar. Di sini, AppBar digunakan untuk menampilkan judul aplikasi "Warung Imut".

### d. Padding:

Menambahkan jarak di sekitar atau di antara widget. Padding digunakan untuk memberikan jarak pada body halaman agar konten tidak menempel langsung dengan batas layar.
### e. Column:

Menyusun widget secara vertikal (dari atas ke bawah). Digunakan untuk menyusun elemen-elemen di halaman seperti Row yang berisi InfoCard dan GridView yang berisi daftar ItemCard.

### f. Row:

Menyusun widget secara horizontal (dari kiri ke kanan). Digunakan untuk menampilkan beberapa InfoCard dalam satu baris.
### g. InfoCard:

Widget kustom yang menampilkan informasi seperti NPM, Nama, dan Kelas dalam bentuk kartu. InfoCard menggunakan widget Card, Text, dan Column untuk menyusun tampilan informasinya.
### h. GridView.count:

Menyusun widget dalam bentuk grid dengan jumlah kolom tetap (dalam proyek ini, 3 kolom). Digunakan untuk menampilkan daftar ItemCard sebagai tombol menu.
### i. Card:

Widget untuk menampilkan elemen dalam bentuk kartu, biasanya dengan bayangan. Digunakan dalam InfoCard untuk membuat tampilan informasi dalam bentuk kartu.
### j. Text:

Menampilkan teks pada layar. Digunakan di berbagai bagian, seperti judul, nama item, dan informasi pada InfoCard.
### k. SizedBox:

Menambahkan ruang kosong atau ukuran tetap antara widget. SizedBox digunakan untuk memberikan jarak vertikal antara elemen-elemen dalam Column.
### l. Center:

Menempatkan widget yang ada di dalamnya di tengah. Di sini, Center digunakan untuk memastikan kolom teks sambutan dan grid item berada di tengah halaman.
### m. Material:

Widget dasar yang menyediakan tema material untuk elemen UI. Dalam ItemCard, Material digunakan untuk menentukan warna latar belakang dan memberikan efek InkWell pada kartu.
### n. InkWell:

Widget yang memberikan efek responsif ketika ditekan, seperti efek riak. Di dalam ItemCard, InkWell digunakan untuk menangani aksi ketika item ditekan dan menampilkan SnackBar.
### o. SnackBar:

Komponen yang menampilkan pesan singkat di bagian bawah layar. Dalam proyek ini, SnackBar digunakan untuk menampilkan pesan saat ItemCard ditekan.
### p. Icon:

Menampilkan ikon yang dipilih dari paket Icons. Digunakan dalam ItemCard untuk memberikan ikon pada setiap item.

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
### setState() digunakan pada stateful widget untuk memberi tahu Flutter bahwa ada perubahan pada data di dalam widget. Ketika setState() dipanggil, Flutter akan merender ulang widget dengan data yang telah diperbarui.
### Variabel atau data yang ditampilkan di widget yang terkait langsung dengan state. Misalnya, jika ada variabel counter yang ditampilkan dalam widget, memanggil setState() dengan mengubah counter akan memperbarui tampilan nilai counter di layar.

## 4. Jelaskan perbedaan antara const dengan final

### const digunakan untuk nilai konstan yang ditetapkan pada waktu kompilasi. Objek yang dideklarasikan dengan const bersifat benar-benar tidak dapat diubah dan harus sudah diketahui nilainya saat kompilasi.

### final digunakan untuk variabel yang nilainya tetap setelah pertama kali ditetapkan, tetapi nilainya bisa ditentukan pada waktu runtime. final dapat digunakan ketika nilai tidak diketahui hingga runtime tetapi tidak akan diubah.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

### a. Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya
- Menjalankan "flutter create warung_imut" pada terminal di direktori yang sesuai

### b. Membuat tiga tombol sederhana dengan ikon dan teks untuk:
- Melihat daftar produk (Lihat Daftar Produk)
- Menambah produk (Tambah Produk)
- Logout (Logout)

``` dart
final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.mood, Colors.blue),
    ItemHomepage("Tambah Produk", Icons.add, Colors.green),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];
```
### c. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
``` dart
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}
```
- Menambahkan atribut warna pada class ItemHomepage dan menset warnanya untuk setiap tombol seperti di nomer sebelumnya
### d. Memunculkan Snackbar dengan tulisan:
- "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
- "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
- "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

``` dart
...
 // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
...
```