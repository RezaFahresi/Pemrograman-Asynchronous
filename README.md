**Reza Fahresi 362358302144**

# PRATIKUM 1
jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!?
Jawab : substring adalah metode yang digunakan untuk mengambil bagian dari string
        value.body: Merujuk pada body dari respons HTTP yang diterima, biasanya dalam bentuk JSON atau teks.
        toString(): Mengubah body yang mungkin berupa objek (misalnya, JSON atau Map) menjadi sebuah string.
        substring(0, 450): Mengambil bagian dari string yang dimulai pada indeks ke-0 dan berakhir pada indeks ke-450.
![pratikum1](https://github.com/user-attachments/assets/0b621780-99ea-4de5-9b23-90eb0e2dae64)

# PRATIKUM 2
Jelaskan maksud kode langkah 1 dan 2 tersebut?
Jawab: Langkah 1 mendefinisikan tiga fungsi asinkron (returnOneAsync, returnTwoAsync, returnThreeAsync)
       Langkah 2 menggabungkan ketiga fungsi tersebut dalam satu fungsi count()
![pratikum2](https://github.com/user-attachments/assets/251d467e-796b-418e-b817-7d4e98b21b51)

# PRATIKUM 3
Jelaskan maksud kode langkah 2 tersebut!
Jawab : Fungsi getNumber() mengembalikan Future<int>, yang akan selesai setelah
        calculate() menyelesaikan prosesnya, yaitu memberikan nilai 42 setelah penundaan 5 detik.
        

Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
Jawab : Langkah 2 berfungsi hanya untuk menunggu dan menyelesaikan Future dengan hasil yang diberikan tanpa menangani error.
        Langkah 5-6 menambahkan mekanisme penanganan error menggunakan try-catch dan completeError(), serta menangani error pada
        getNumber().then() menggunakan catchError().
![pratikum3](https://github.com/user-attachments/assets/53d6e6db-3824-4b24-b7d5-ab0e62fd52bd)

# PRATIKUM 4
Jelaskan maksud perbedaan kode langkah 1 dan 4!
Jawab : FutureGroup memberikan kontrol lebih dalam pengelolaan beberapa
        Future. Anda bisa menambahkan Future satu per satu dan menutup grup setelah menambahkan semua Future.
        Future.wait() lebih sederhana dan langsung, menerima daftar Future dan mengembalikan Future<List> setelah semua selesai.
        FutureGroup lebih fleksibel jika Anda perlu menambah atau mengelola Future secara dinamis selama eksekusi.
        Future.wait() lebih cocok untuk kasus yang lebih sederhana ketika Anda sudah tahu semua Future yang akan dijalankan sejak awal.
        FutureGroup lebih kompleks dan digunakan untuk skenario yang memerlukan pengelolaan lebih rumit.
        Future.wait() lebih ringkas dan mudah digunakan untuk menunggu beberapa Future secara bersamaan tanpa perlu pengelolaan lebih lanjut.
![pratikum4](https://github.com/user-attachments/assets/fff18b2c-1075-4768-adc0-1f24b2bdea50)

# PRATIKUM 5
Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4
Jawab : Langkah 1 (returnError() + try-catch-finally): Menggunakan struktur try-catch-finally untuk menangani error dan
                                                       memastikan bagian finally dieksekusi, baik terjadi error atau tidak.
        Langkah 4 (handleError() + ElevatedButton) : ElevatedButton memanggil metode handleError() saat tombol ditekan.
                                                     Perbedaan utamanya adalah pada penanganan user interface (UI), di 
                                                     mana setState() digunakan untuk memperbarui tampilan dengan hasil error yang ditangkap.

![pratikum5](https://github.com/user-attachments/assets/8e6cac88-fac1-4488-b6bb-abfa237e5f87)

![debugconsole5](https://github.com/user-attachments/assets/299a756e-2e9d-42f2-a565-ad40806a8b1f)

# PRATIKUM 6
Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?
Jawab : dapat karena saya menggunakan future getPosition

![pratikum6](https://github.com/user-attachments/assets/ec332000-2518-4e42-860c-9b4f0c79dde5)

# PRATIKUM 7
Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?
Jawab : Perbedaan UI antara aplikasi yang dijalankan di browser dan perangkat
        mobile lebih terlihat pada akses ke hardware, responsivitas UI, serta pengaturan layout dan interaksi pengguna.
        Pada perangkat mobile, UI dioptimalkan untuk layar sentuh, penggunaan GPS,
        dan interaksi yang lebih cepat dan responsif, sementara di browser, aplikasi
        akan lebih terfokus pada penggunaan mouse dan keyboard serta akses terbatas ke sensor hardware.

Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?
Jawab : Perbedaan UI yang Saya alami antara langkah-langkah sebelumnya bisa 
        disebabkan oleh faktor akses hardware (GPS dan sensor lain), responsivitas UI
        yang tidak sepenuhnya optimal di browser, serta pengaturan izin yang berbeda di
        perangkat mobile dan browser. UI di perangkat mobile lebih responsif, dan akses
        ke sensor lebih langsung, sementara di browser ada batasan yang mengurangi
        pengalaman yang sama seperti di perangkat mobile.
![pratikum7](https://github.com/user-attachments/assets/61cbc37d-4f85-46de-9e4e-aa05ba865ca7)

# PRATIKUM 8
Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
Jawab : memunculkan warna merah, biru, hijau, Button yang mengubah warna, seperti pada aplikasi yang mengubah warna latar belakang ketika Anda mengklik "Red", "Green", atau "Blue", bertujuan untuk memanggil fungsi yang mengganti warna background di layar utama

![pratikum8](https://github.com/user-attachments/assets/34bf27c0-791c-44bb-85d7-12ca4b41962a)

![pratikum8 2](https://github.com/user-attachments/assets/5bc4834d-8c2d-439c-9ab5-fc62910c01d7)

# PRATIKUM 9
Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
Jawab: mengganti dan bisa memilih warna background mengapa demikian karena pada aplikasi ada tombol warna untuk memilih warna

![pratikum9](https://github.com/user-attachments/assets/c4a443ee-c4e2-4174-9fad-14f915bb0cc3)



  


                                                     


