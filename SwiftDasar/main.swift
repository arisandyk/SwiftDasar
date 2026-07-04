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


