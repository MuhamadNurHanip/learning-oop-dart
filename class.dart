import 'dart:io'; //import library 

// Abstract class untuk representasi Pengguna (User)
abstract class User {
  String _name;
  String _email;
  String _phoneNumber;

  User(this._name, this._email, this._phoneNumber); //constructor

  String get name => _name; // konsep enkapsulasi
  set name(String value) {
    _name = value;
  }

  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  void showInfo(); //akan ditimpa ovveride oleh kelas turunannya 
}

// Class turunan dari User untuk representasi Pelanggan (Customer)
class Customer extends User {
  Customer(String name, String email, String phoneNumber)
      : super(name, email, phoneNumber);

  @override
  void showInfo() {
    print('Informasi Pelanggan:');
    print('Nama: $name');
    print('Email: $email');
    print('Nomor Telepon: $phoneNumber');
  }
}

// Class turunan dari User untuk representasi Pegawai (Staff)
class Staff extends User {
  String _department;

  Staff(String name, String email, String phoneNumber, this._department)
      : super(name, email, phoneNumber);

  String get department => _department;
  set department(String value) {
    _department = value;
  }

  @override
  void showInfo() {
    print('Informasi Pegawai:');
    print('Nama: $name');
    print('Email: $email');
    print('Nomor Telepon: $phoneNumber');
    print('Departemen: $department');
  }
}

// Class untuk representasi Ruangan (Room)
class Room {
  String _roomName;
  int _roomNumber;
  int _floor;
  List<String> _facilities;
  bool _isOccupied;

  Room(this._roomName, this._roomNumber, this._floor, this._facilities,
      this._isOccupied);

  String get roomName => _roomName;
  int get roomNumber => _roomNumber;
  int get floor => _floor;
  List<String> get facilities => _facilities;
  bool get isOccupied => _isOccupied;
  set isOccupied(bool value) {
    _isOccupied = value;
  }

  void showInfo() {
    print('Informasi Kamar Hotel:');
    print('Nama Kamar: $roomName');
    print('Nomor Ruangan: $roomNumber');
    print('Lantai: $floor');
    print('Fasilitas:');
    for (String facility in facilities) {
      print('- $facility');
    }
    print('Status: ${isOccupied ? "Terisi" : "Kosong"}');
  }
}

// Class untuk representasi Pembayaran (Payment)
class Payment {
  double _amount;
  String _paymentMethod;
  bool _isPaid;
  DateTime _dueDate;

  Payment(this._amount, this._paymentMethod)
      : _isPaid = false,
        _dueDate = DateTime.now().add(Duration(days: 3));

  double get amount => _amount;
  set amount(double value) {
    _amount = value;
  }

  String get paymentMethod => _paymentMethod;
  set paymentMethod(String value) {
    _paymentMethod = value;
  }

  bool get isPaid => _isPaid;
  DateTime get dueDate => _dueDate;

  void payPayment() {
    _isPaid = true;
  }

  void showInfo() {
    print('Informasi Pembayaran:');
    print('Jumlah: \$${amount.toStringAsFixed(2)}');
    print('Metode Pembayaran: $paymentMethod');
    if (isPaid) {
      print('Status Pembayaran: Sudah Dibayar');
    } else {
      print('Status Pembayaran: Belum Dibayar');
      print('Tenggat Pembayaran: $dueDate');
    }
  }
}