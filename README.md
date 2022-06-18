# Laporan Akhir Projek
- **KOM334-P1** Pemrograman Sistem Berorientasi Objek
- Kelompok 4

## Asisten Praktikum
- Bima Aulia
- Muhammad Fauzan Ramadhan

## Team
<table>
  <thead>
      <th>No</th>
      <th>Nama</th>
      <th>NIM</th>
  </thead>
  
  <tbody>
    <tr>
      <td>1</td>
      <td>Lesy Okviani</td>
      <td>G64190026</td>
     </tr> 
    <tr>
      <td>2</td>
      <td>WIka Fauziah</td>
      <td>G64190047</td>
    </tr> 
    <tr>
      <td>3</td>
      <td>Bobby Williams K. Hara</td>
      <td>G64190061</td>
    </tr>
    <tr>
      <td>4</td>
      <td>Tifanee Anindhita</td>
      <td>G64190080</td>
    </tr>
    <tr>
      <td>5</td>
      <td>Ramadhan Agung Karyuto</td>
      <td>G64190100</td>
     </tr>
    </tbody>
</table> 


# T-Farmer

T-Farmer merupakan aplikasi berbasis mobile sebagai modul untuk peralatan pertanian. T-Farmer sangat berguna bagi petani untuk mencatat peralatan pertanian mereka sekaligus memantau kondisi peralatan tersebut. Petani dapat menambah dan menghapus alat, petani juga dapat mengubah detail maupun kondisi alat mereka dengan mudah.

## Problem Description 

Indonesia merupakan negara agraris yang sudah sejak dahulu menjadikan sektor pertanian sebagai penopang perekonomian negara. Sampai saat ini pun sektor pertanian masih tetap menyumbang devisa yang cukup besar bagi perekonomian negara. Namun, dengan sumber daya yang melimpah, proses perkembangan dan modernisasi sektor pertanian Indonesia berjalan sangat lambat. Salah satu indikatornya yaitu produktivitas pertanian yang cenderung menurun akibat penerapan teknologi di sektor pertanian yang kurang memadai.

Teknologi dalam pertanian adalah segala sesuatu yang dapat memudahkan pekerjaan dan menghasilkan output yang lebih baik. Teknologi pertanian sendiri bisa berupa peralatan berbentuk mesin maupun non-mesin. Namun dalam proses menuju hasil output yang lebih baik, sangat dibutuhkan sistem untuk monitoring kondisi peralatan tersebut yang berguna bagi petani untuk mencatat peralatan pertanian, sekaligus memantau kondisi peralatan tersebut.

## Kapabilitas Sistem

- Menyimpan informasi kondisi peralatan
- Mencatat peralatan pertanian 
- Memantau alokasi peralatan dengan kondisi yang baik, maupun rusak

## Manfaat Sistem

- Menjaga informasi dengan tepat tentang deskripsi pada peralatan, sehingga memudahkan petani untuk mengetahui kondisi setiap peralatan
- Meningkatkan pemantauan kondisi peralatan
- Mempercepat petani mengetahui kondisi setiap alat

## Tech Stack

- Frame Work  : Flutter 2.17.0
- Text Editor : VS Code
- Emulator    : Android Studio Emulator

## Actor
Seorang petani yang ingin mencatat peralatan pertanian serta kondisinya

## User Stories
<table>
  <thead>
      <th>No</th>
      <th>Actor</th>
      <th>User Stories</th>
      <th>Acceptance Criteria</th>
  </thead>
   <tbody>
    <tr>
      <td>1</td>
      <td>Petani</td>
      <td>Sebagai seorang petani saya ingin mencatat/menambah peralatan pertanian untuk mempunyai daftar peralatan pertanian yang saya miliki</td>
      <td> <ul> <li> Petani berada di halaman utama aplikasi </li>
                <li> Ketika petani memilih menambah alat untuk mencatat peralatannya kemudian ditampilkan form untuk mengisi detail alat yang akan ditambahkan </li>
                <li> Alat berhasil ditambahkan sehingga petani dapat mempunyai daftar peralatan yang ia miliki </li>
           </ul>
      </td>
     </tr>
      <tr>
      <td>2</td>
      <td>Petani</td>
      <td>Sebagai seorang petani saya ingin menghapus alat pertanian yang ada pada daftar peralatan pertanian saya untuk memperbarui daftar peralatan pertanian  yang saya miliki </td>
        <td> <ul> <li> Petani berada di halaman detail alat </li>
                  <li> Ketika petani memilih simbol ‘tempat sampah’  untuk menghapus alat tersebut kemudian petani memilih ya </li>
                  <li> Alat berhasil dihapus sehingga petani dapat memperbarui daftar peralatan pertaniannya </li>
             </ul>
      </td>
     </tr>
   </tbody>
</table>

## Use Case Diagram

![Use Case Modul Alat Pertanian](https://user-images.githubusercontent.com/66372277/174416224-2afa4378-7045-483a-8085-56bc9628587e.jpg)

## Activity Diagram

### Menambah Alat

![Acitivity Diagram Tambah Alat](https://user-images.githubusercontent.com/66372277/174416289-97d19184-9861-4655-8903-0e7067e419ae.jpg)

### Menghapus Alat

![Activity Diagram Menghapus Alat](https://user-images.githubusercontent.com/66372277/174416295-5ecba4a4-2670-483b-883c-15840b9a375e.jpg)

## Class Diagram

![class diagram psbo](https://user-images.githubusercontent.com/66372277/174416326-15d5490b-d7c5-423c-8660-bbbad3e9df7a.jpeg)

## Sequence Diagram

![sequence diagram psbo](https://user-images.githubusercontent.com/66372277/174416332-14db8573-2786-439c-a5a6-c2f1eb5c33d8.jpeg)

## Domain Model Class Diagram

![model domain class diagram](https://user-images.githubusercontent.com/66372277/174419171-4ceabf4e-8485-4117-b359-1be082661196.jpeg)

## Prototipe

![Design and Prototype](https://user-images.githubusercontent.com/66372277/174418548-a24b8490-cb6d-43f1-a67b-e14287569eea.png)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
