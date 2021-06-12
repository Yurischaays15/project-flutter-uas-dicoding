class MyBook {
  String judul;
  String nama;
  String penerbit;
  String totalhlmn;
  String pict;

MyBook({
  this.judul, 
  this.nama, 
  this.penerbit, 
  this.totalhlmn, 
  this.pict});
}

var myBookList = [
  MyBook(
    judul: 'Hello Salma',
    nama: 'Erisca Febriani',
    penerbit: 'Gagas Media',
    totalhlmn: '300 halaman',
    pict: "https://2.bp.blogspot.com/-oKpIRqWHRzc/XNT3HcOmv1I/AAAAAAAAG9E/O-k-wjtF_8cZhvSe6qMC4M0LWiz5bJUxACLcBGAs/s1600/Gambar1.png",
  ),
  MyBook(
    judul: 'Geez & Ann',
    nama: 'Rintik Sedu',
    penerbit: 'Gagas Media',
    totalhlmn: '254 halaman',
    pict: "https://id-test-11.slatic.net/p/b90ad8376cc7ec89c0475b49314ad98b.jpg",
  ),
  MyBook(
    judul: 'Kudasai',
    nama: 'Brian Khrisna',
    penerbit: 'Media Kita',
    totalhlmn: '456 halaman',
    pict: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1577352316l/49929931._SX318_.jpg",
  ),
  MyBook(
    judul: 'Flesh Out',
    nama: 'Bellazmr',
    penerbit: 'Grasindo',
    totalhlmn: '316 halaman',
    pict: "https://www.bukukita.com/babacms/displaybuku/100991_f.jpg",
  ),
  MyBook(
    judul: 'Shea',
    nama: 'Asri Aci',
    penerbit: 'Bentang Belia',
    totalhlmn: '396 halaman',
    pict: "https://www.bukukita.com/babacms/displaybuku/116673_f.jpg",
  )
];