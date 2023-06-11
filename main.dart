import 'dart:io';
import 'class.dart';

void main() {
  // Membuat objek Pelanggan (Customer) dan menampilkan informasinya
  print('Masukkan Informasi Pelanggan:');
  print('Nama: ');
  String name = stdin.readLineSync()!;
  print('Email: ');
  String email = stdin.readLineSync()!;
  print('Nomor Telepon: ');
  String phoneNumber = stdin.readLineSync()!;
  Customer customer = Customer(name, email, phoneNumber);
  customer.showInfo();
  print('');

  // Menampilkan informasi kamar Hotel
  print('Informasi Kamar Hotel:');
  Room room = Room('Standart', 001, 2,
      ['AC', 'TV', 'WI-FI', 'Lemari', 'Kamar Mandi'], false);
  room.showInfo();
  print('');

  // Membuat objek Pembayaran (Payment) dan menampilkan informasinya
  print('Masukkan Informasi Pembayaran:');
  print('Jumlah: ');
  double amount = double.parse(stdin.readLineSync()!);
  print('Metode Pembayaran: ');
  String paymentMethod = stdin.readLineSync()!;
  Payment payment = Payment(amount, paymentMethod);
  payment.showInfo();

  // Meminta pengguna untuk melakukan pembayaran
  print('\nSilakan lakukan pembayaran sebelum ${payment.dueDate}');
  print('Apakah Anda sudah melakukan pembayaran? (ya/tidak)');
  String confirmation = stdin.readLineSync()!.toLowerCase();
  if (confirmation == 'ya') {
    payment.payPayment();
    print('Pembayaran berhasil.');
  } else {
    print('Pembayaran belum dilakukan.');
  }

  payment.showInfo();

  // Estimasi waktu kamar hotel
  if (room.isOccupied) {
    DateTime estimatedCheckOut = DateTime.now().add(Duration(days: 1));
    print('Estimasi Check-out: $estimatedCheckOut');
  }
}
