import 'dart:io';
import 'class.dart'; // import class dart 



void main() {
  // Membuat objek Pelanggan (Customer) dan menampilkan informasinya
  print('Masukkan Informasi Pelanggan:');
  print('Nama: ');
  String name = stdin.readLineSync()!; // Mengambil input nama dari pengguna
  print('Email: ');
  String email = stdin.readLineSync()!; // Mengambil input email dari pengguna
  print('Nomor Telepon: ');
  String phoneNumber = stdin.readLineSync()!; // Mengambil input nomor telepon dari pengguna
  Customer customer = Customer(name, email, phoneNumber); // Membuat objek customer berdasarkan input pengguna
  customer.showInfo(); // Menampilkan informasi pelanggan
  print('');

  // Menampilkan informasi kamar Hotel
  print('Informasi Kamar Hotel:');
  Room room = Room('Standart', 001, 2,
      ['AC', 'TV', 'WI-FI', 'Lemari', 'Kamar Mandi'], false); // Membuat objek room dengan nilai properti yang ditentukan
  room.showInfo(); // Menampilkan informasi kamar
  print('');

  // Membuat objek Pembayaran (Payment) dan menampilkan informasinya
  print('Masukkan Informasi Pembayaran:');
  print('Jumlah: ');
  double amount = double.parse(stdin.readLineSync()!); // Mengambil input jumlah pembayaran dari pengguna
  print('Metode Pembayaran: ');
  String paymentMethod = stdin.readLineSync()!; // Mengambil input metode pembayaran dari pengguna
  Payment payment = Payment(amount, paymentMethod); // Membuat objek payment berdasarkan input pengguna
  payment.showInfo(); // Menampilkan informasi pembayaran

  // Meminta pengguna untuk melakukan pembayaran
  print('\nSilakan lakukan pembayaran sebelum ${payment.dueDate}');
  print('Apakah Anda sudah melakukan pembayaran? (ya/tidak)');
  String confirmation = stdin.readLineSync()!.toLowerCase(); // Mengambil input konfirmasi pembayaran dari pengguna
  if (confirmation == 'ya') {
    payment.payPayment(); // Melakukan pembayaran
    print('Pembayaran berhasil.');
  } else {
    print('Pembayaran belum dilakukan.');
  }
}