import Foundation

// MARK: - 01. Variabel dan Konstanta
// Konstanta tidak dapat diubah nilainya
// Variabel dapat diubah nilainya
let namaCourse = "Dicoding"
var umur = 24
print("Belajar di", namaCourse)

// MARK: - 02. Tipe Data Integer
//
var skorBermain: Int = 100
var hargaItem = 30
skorBermain = skorBermain - hargaItem
print("Sisa skor:", skorBermain)

// MARK: - 03. Floating-Point Number
// Double (64-bit) 15 digit dibelakang koma
// Float (32-bit) 6 digit dibelakang koma
let pajakToko: Float = 0.11
let beratApel: Double = 2.5
var hargaSekilo = 15_000.00

var totalHarga = hargaSekilo * beratApel
var nominalPajak = totalHarga * Double(pajakToko)
var hargaFinal = totalHarga + nominalPajak
print("Total Harga Sebelum Pajak: Rp", totalHarga)
print("Pajak Toko: Rp",nominalPajak)
print("Total Harga Setelah Pajak: Rp", hargaFinal)

// MARK: - 04. Boolean
// Nilai yang 0 atau 1
// Int tidak bisa dijadikan sebagai nilai bool, jadi harus gunakan "=="
let orangeAreOranges = true
print("Nilai orange adalah \(orangeAreOranges)")

let i = 1
if i == 1 {
    print("Uhuyyyy")
}

// MARK: - 05. Tuple
// Kumpulan data yang tipe datanya tidak harus sama
// Cara 1: Menguraikan jadi variabel atau konstanta yang berbeda
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("http404Error memiliki kode status \(statusCode)")
print("http404Error memiliki pesan error \"\(statusMessage)\"")

// Cara 2: Akses salah satu nilainya saja
let http404Error_2 = (404, "Not Found")
let (justTheStatusCode, _) = http404Error_2
print("http404Error memiliki kode status \(justTheStatusCode)")

// Cara 3: Akses Indexnya
let http404Error_3 = (404, "Not Found")
print("http404Error memiliki kode status \(http404Error_3.0)")
print("http404Error memiliki pesan error \"\(http404Error_3.1)\"")

// Memberikan nama pada masing-masing nilai tuple
let http200Status = (statusCode: 200, description: "OK")
print("http200Status memiliki kode status \(http200Status.statusCode)")
print("http200Status memiliki pesan error \"\(http200Status.description)\"")

// MARK: - 06. Error Handling

// 1. KITA BUAT DULU DEFINISI ERROR-NYA
enum SandwichError: Error {
    case outOfCleanDishes
    case missingIngredients([String])
}

// 2. Fungsi-fungsi pendukung biar pas di-print kelihatan hasilnya
func washDishes() {
    print("Mencuci piring dulu bosq, piring kotor semua...")
}

func buyGroceries(_ ingredients: [String]) {
    print("Waduh bahan kurang. Pergi belanja beli: \(ingredients)")
}

func eatASandwich() {
    print("Nyam nyam! Sandwich mantap.")
}

// 3. Fungsi utama yang punya potensi GAGAL (ditandai dengan 'throws')
func makeASandwich() throws {
    print("Mulai membuat sandwich...")
    
    // --- TEMPAT EKSPERIMEN BOSQ ---
    // Coba aktifkan (uncomment) salah satu 'throw' di bawah ini untuk melihat error yang berbeda:
    
    // Skenario A: Piring kotor
    // throw SandwichError.outOfCleanDishes
    
    // Skenario B: Bahan kurang
    throw SandwichError.missingIngredients(["Roti", "Daging", "Saus"])
    
    // Skenario C: Kalau sukses (biarkan kedua throw di atas di-comment)
    print("Sandwich berhasil dibuat!")
}
 
// 4. Proses Eksekusi (Try-Catch)
do {
    // Kita 'coba' jalankan fungsinya
    try makeASandwich()
    
    // Kalau makeASandwich() di atas aman tanpa 'throw', baris ini dieksekusi:
    eatASandwich()
    
} catch SandwichError.outOfCleanDishes {
    // Kalau ada throw 'outOfCleanDishes', Swift langsung loncat ke sini
    washDishes()
    
} catch SandwichError.missingIngredients(let bahannya) {
    // Kalau ada throw 'missingIngredients', Swift menangkap data bahannya, lalu dikirim ke fungsi belanja
    buyGroceries(bahannya)
    
} catch {
    // Ini wajib ditambahkan sebagai 'jaring pengaman' terakhir kalau ada error lain
    print("Terjadi error yang tidak diketahui.")
}

// MARK: Membuat form data diri.
print("Selamat Datang di Dicoding Academy")
print("----------------------------------")

// MARK: Memasukkan nilai dari pengguna.
print("Masukkan nama depan Anda:"); let firstName = readLine()!
print("Masukkan nama belakang Anda:"); let lastName = readLine()!
print("Masukkan umur Anda:"); let age = readLine()!
print("Masukkan alamat Anda:"); let address = readLine()!
print("Masukkan pekerjaan Anda:"); let job = readLine()!

// MARK: Menggabungkan nama depan dan nama belakang.
let fullName = firstName + " " + lastName

print("----------------------------------")

// MARK: Mencetak program yang Anda buat ke dalam Terminal.
print("Apakah kalian tahu \(fullName)?")
print("\(firstName) adalah seorang \(job).")
print("Saat ini ia berumur \(age) dan bertempat tinggal di \(address).")

print("----------------------------------")
