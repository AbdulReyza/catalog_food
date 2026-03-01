# Struktur folder
```
lib/
│
├── core/
│   ├── router/ # untuk mengarahkan ke halaman halaman
│   └── constants/ # untuk atur design atau text yang constants
│
├── features/ # untuk menampung fitur fitur
│   └── cart/ # menampung fitur cart
│       ├── data/ # implementasi kontrak
│       ├── domain/ # membuat kontrak & entities
│       └── presentation/ # menampilkan/membuat UI 
│
├── injection.dart # mengatur semua dependecy di satu tempat
└── main.dart # file utama untuk run apk
```


### Flow

Ketika user klik + :

1. AddButton memanggil provider.addItem()
2. Provider memanggil repository.addItem()
3. notifyListeners() trigger
4. UI nge rebuild otomatis
5. Menu di Cart bertambah


### Langkah-Langkah Menjalankan:

#### 1. **Clone atau Download Proyek**
```bash
git clone https://github.com/AbdulReyza/catalog_food.git
cd catalog_food
```

#### 2. **Install Dependencies**
```bash
flutter pub get
```

#### 3. **Run Aplikasi di Emulator atau Device**
```bash
flutter run
```


# hasil

<p align="center">
  <img src="" width="300"/>
  <img src="" width="300"/>
</p>