class Mahasiswa {
  String nama;
  int umur;

  // Constructor
  Mahasiswa(this.nama, this.umur);

  // Method
  void tampilkan() {
    print("Nama: $nama");
    print("Umur: $umur");
  }
}

// INHERITANCE
class MahasiswaAktif extends Mahasiswa {
  String nim;

  MahasiswaAktif(String nama, int umur, this.nim)
      : super(nama, umur);

  void infoMahasiswa() {
    tampilkan();
    print("NIM: $nim");
  }
}

class MahasiswaAlumni extends Mahasiswa {
  int tahunLulus;

  MahasiswaAlumni(String nama, int umur, this.tahunLulus)
      : super(nama, umur);

  void infoAlumni() {
    tampilkan();
    print("Tahun Lulus: $tahunLulus");
  }
}

// MIXIN
mixin Mengajar {
  void mengajar() {
    print("Sedang mengajar");
  }
}

mixin Penelitian {
  void penelitian() {
    print("Sedang melakukan penelitian");
  }
}

mixin Administrasi {
  void administrasi() {
    print("Mengurus administrasi");
  }
}

// CLASS DOSEN
class Dosen with Mengajar, Penelitian, Administrasi {}

// CLASS FAKULTAS
class Fakultas with Administrasi {}