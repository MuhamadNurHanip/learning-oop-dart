import 'dart:io'; // Mengimpor library dart:io untuk input/output

// Abstract class untuk representasi Pengguna (User)
abstract class User {
  String _name;
  String _email;
  String _phoneNumber;

  User(this._name, this._email, this._phoneNumber); // Constructor

  String get name => _name; // Getter untuk mengakses nilai properti _name dari luar kelas User
  set name(String value) {
    _name = value; // Setter untuk mengubah nilai properti _name
  }

  String get email => _email; // Getter untuk mengakses nilai properti _email dari luar kelas User
  set email(String value) {
    _email = value; // Setter untuk mengubah nilai properti _email
  }

  String get phoneNumber => _phoneNumber; // Getter untuk mengakses nilai properti _phoneNumber dari luar kelas User
  set phoneNumber(String value) {
    _phoneNumber = value; // Setter untuk mengubah nilai properti _phoneNumber
  }

  void showInfo(); // Metode abstrak yang akan ditimpa (override) oleh kelas turunannya
}

// Kelas turunan dari User untuk representasi Pelanggan (Customer)
class Customer extends User {
  Customer(String name, String email, String phoneNumber)
      : super(name, email, phoneNumber); // Memanggil constructor kelas User

  @override
  void showInfo() {
    print('Informasi Pelanggan:');
    print('Nama: $name');
    print('Email: $email');
    print('Nomor Telepon: $phoneNumber');
  }
}

// Kelas turunan dari User untuk representasi Pegawai (Staff)
class Staff extends User {
  String _department;

  Staff(String name, String email, String phoneNumber, this._department)
      : super(name, email, phoneNumber); // Memanggil constructor kelas User

  String get department => _department; // Getter untuk mengakses nilai properti _department dari luar kelas Staff
  set department(String value) {
    _department = value; // Setter untuk mengubah nilai properti _department
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

// Kelas untuk representasi Ruangan (Room)
class Room {
  String _roomName;
  int _roomNumber;
  int _floor;
  List<String> _facilities;
  bool _isOccupied;

  Room(this._roomName, this._roomNumber, this._floor, this._facilities,
      this._isOccupied); // Constructor

  String get roomName => _roomName; // Getter untuk mengakses nilai properti _roomName dari luar kelas Room
  int get roomNumber => _roomNumber; // Getter untuk mengakses nilai properti _roomNumber dari luar kelas Room
  int get floor => _floor; // Getter untuk mengakses nilai properti _floor dari luar kelas Room
  List<String> get facilities => _facilities; // Getter untuk mengakses nilai properti _facilities dari luar kelas Room
  bool get isOccupied => _isOccupied; // Getter untuk mengakses nilai properti _isOccupied dari luar kelas Room
  set isOccupied(bool value) {
    _isOccupied = value; // Setter untuk mengubah nilai properti _isOccupied
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

// Kelas untuk representasi Pembayaran (Payment)
class Payment {
  double _amount;
  String _paymentMethod;  
  bool _isPaid;
  DateTime _dueDate;

  Payment(this._amount, this._paymentMethod)
      : _isPaid = false,
        _dueDate = DateTime.now().add(Duration(days: 3)); // Constructor

  double get amount => _amount; // Getter untuk mengakses nilai properti _amount dari luar kelas Payment
  set amount(double value) {
    _amount = value; // Setter untuk mengubah nilai properti _amount
  }

  String get paymentMethod => _paymentMethod; // Getter untuk mengakses nilai properti _paymentMethod dari luar kelas Payment
  set paymentMethod(String value) {
    _paymentMethod = value; // Setter untuk mengubah nilai properti _paymentMethod
  }

  bool get isPaid => _isPaid; // Getter untuk mengakses nilai properti _isPaid dari luar kelas Payment
  DateTime get dueDate => _dueDate; // Getter untuk mengakses nilai properti _dueDate dari luar kelas Payment

  void payPayment() {
    _isPaid = true; // Metode untuk melakukan pembayaran
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