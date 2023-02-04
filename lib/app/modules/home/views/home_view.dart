import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomeView extends GetView<HomeController> {
  final controller = Get.put(HomeController());
  final authC = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  height: tinggi * 0.13,
                  decoration: BoxDecoration(color: navbwar),
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: lebar * 0.43,
                        height: tinggi * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Kamen Rider Black",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                        ),
                      ),
                      Container(
                        width: lebar * 0.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              CupertinoIcons.mail,
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              CupertinoIcons.bell,
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              CupertinoIcons.cart,
                              color: Colors.white,
                              size: 30,
                            ),
                            InkWell(
                              onTap: () => authC.logout(),
                              child: Icon(
                                CupertinoIcons.line_horizontal_3,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                  width: lebar,
                  height: tinggi * 0.15,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: CarouselSlider(
                    options: CarouselOptions(
                        height: 400.0,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3)),
                    items: [
                      "assets/banner/03.png",
                      "assets/banner/02.png",
                      "assets/banner/01.png"
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: lebar,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              child: Image.asset(i),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  )),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    custom(icon: "assets/menu/m2.png", text: "Promo Hari Ini"),
                    custom(icon: "assets/menu/m5.png", text: "Toserba"),
                    custom(icon: "assets/menu/m8.png", text: "Elektronik"),
                    custom(
                        icon: "assets/menu/m10.png", text: "Top-up & Tagihan"),
                    custom(icon: "assets/menu/m6.png", text: "Lihat Semua"),
                    custom(icon: "assets/menu/m9.png", text: "Official Store"),
                    custom(icon: "assets/menu/m1.png", text: "Live Shopping"),
                    custom(icon: "assets/menu/m4.png", text: "Tokopedia Seru"),
                    custom(icon: "assets/menu/m3.png", text: "Bayar di Tempat"),
                    custom(icon: "assets/menu/m7.png", text: "Bangga Lokal"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Kejar Diskon Spesial",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: tam),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Text(
                                "Berakhir dalam",
                                style: TextStyle(
                                    color: abu2, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              margin: EdgeInsets.only(left: 10),
                              width: 125,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: bgRed,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text(
                                      "00 : 15 : 12",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: TextButton(
                              onPressed: () => Get.toNamed(Routes.DETAIL),
                              child: Text(
                                "Lihat Semua",
                                style: TextStyle(
                                    color: navbwar,
                                    fontWeight: FontWeight.w600),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: lebar,
                height: 310,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff01A0C6),
                    Color(0xff01AA6C),
                  ],
                )),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 32),
                        child:
                            Image.asset('assets/diskonan/keranjangDiskon.png'),
                      ),
                      Row(
                        children: [
                          KejarDiskonCard(
                              gambar: 'assets/diskonan/masker.png',
                              daerah: 'Kab. Bandung',
                              diskon: '92%',
                              harga: 'Rp 1.000',
                              totalPersen: 100,
                              currentPersen: 80,
                              potongan: 'Rp 12.546',
                              status: 'Segera Habis'),
                          KejarDiskonCard(
                              gambar: 'assets/produk/port.png',
                              daerah: 'Jakarta Timur',
                              diskon: '6%',
                              harga: 'Rp 103.000',
                              totalPersen: 100,
                              currentPersen: 35,
                              potongan: 'Rp 109.900',
                              status: 'Tersedia')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 10, 25, 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Pilihan Promo Hari Ini',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            child: Text('Lihat Semua',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: navbwar)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              PilihanPromoCard(gambar: 'assets/promo/01.png'),
                              PilihanPromoCard(gambar: 'assets/promo/02.png'),
                              PilihanPromoCard(gambar: 'assets/promo/01.png'),
                              PilihanPromoCard(gambar: 'assets/promo/02.png'),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
                width: lebar,
                height: 2,
                color: Color(0xffeeeeee),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Produk Pilihan Untukmu',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            child: Text('Lihat Semua',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: navbwar)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
                              ProdukCard(
                                  gambar: 'assets/produk/logi2.png',
                                  daerah: 'Kab. Bandung',
                                  diskon: '44%',
                                  nama: "Logitech G603 Lightspeed ...",
                                  harga: 'Rp 609.000',
                                  potongan: 'Rp 1.090.000',
                                  rating: '4.8 | Terjual 312'),
                              ProdukCard(
                                  gambar: 'assets/produk/logi1.png',
                                  daerah: 'Kab. Bandung',
                                  diskon: '46%',
                                  nama: "Logitech G203 Mouse Gaming",
                                  harga: 'Rp 204.000',
                                  potongan: 'Rp 379.000',
                                  rating: '4.9 | Terjual 6rb'),
                              ProdukCard(
                                  gambar: 'assets/produk/logi3.png',
                                  daerah: 'Kab. Bandung',
                                  diskon: '44%',
                                  nama: "Logitech G PRO X SUPERLIGHT ...",
                                  harga: 'Rp 609.000',
                                  potongan: 'Rp 1.090.000',
                                  rating: '5.0 | Terjual 312'),
                              ProdukCard(
                                  gambar: 'assets/produk/logi2.png',
                                  daerah: 'Kab. Bandung',
                                  diskon: '44%',
                                  nama: "Logitech G603 Lightspeed ...",
                                  harga: 'Rp 609.000',
                                  potongan: 'Rp 1.090.000',
                                  rating: '4.8 | Terjual 312'),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
                width: lebar,
                height: 10,
                color: Color(0xffeeeeee),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      pilihan(
                          lebar, pilihan1, pilihan2, 'For rizqi', Colors.white),
                      pilihan(lebar, pilihan3, pilihan4, 'Special Discount',
                          Colors.transparent),
                      pilihan(lebar, pilihan5, pilihan6, 'Aktivitasmu',
                          Colors.transparent),
                      pilihan(lebar, pilihan7, pilihan8, 'Kesukaanmu',
                          Colors.transparent),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: tinggi * 0.04,
              ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  child: Wrap(spacing: 15, runSpacing: 20, children: [
                    ProdukCard2(
                        gambar: 'assets/produk/rival1.png',
                        daerah: 'Jakarta Pusat',
                        diskon: '12%',
                        harga: 'Rp 699.000',
                        potongan: 'Rp 790.000',
                        produk: 'SteelSeries Rival 3 Wireless - Gaming ...',
                        rating: '5.0',
                        tinggi: 340,
                        lebar: 165,
                        tinggiGambar: 165,
                        lebarGambar: 165,
                        marginKanan: 0,
                        terjual: '124'),
                    ProdukCard2(
                        gambar: 'assets/produk/monitor1.png',
                        daerah: 'Kota Depok',
                        diskon: '44%',
                        harga: 'Rp 5.949.900',
                        potongan: 'Rp 1.000.000',
                        produk: 'Monitor Lenovo G34W-30 34" ...',
                        rating: '5.0',
                        tinggi: 340,
                        lebar: 165,
                        tinggiGambar: 165,
                        lebarGambar: 165,
                        marginKanan: 0,
                        terjual: '23'),
                    ProdukCard2(
                        gambar: 'assets/produk/port.png',
                        daerah: 'Kab. Tangerang',
                        diskon: '44%',
                        harga: 'Rp 3.750',
                        potongan: 'Rp 1.000.000',
                        produk: 'Myvo Steker T Multi Lampu Colokan ...',
                        rating: '5.0',
                        tinggi: 340,
                        lebar: 165,
                        tinggiGambar: 165,
                        lebarGambar: 165,
                        marginKanan: 0,
                        terjual: '76'),
                    ProdukCard2(
                        gambar: 'assets/produk/logi3.png',
                        daerah: 'Kab. Bandung',
                        diskon: '44%',
                        harga: 'Rp 609.000',
                        potongan: 'Rp 1.000.000',
                        produk: 'Logitech G PRO X SUPERLIGHT ...',
                        rating: '5.0',
                        tinggi: 340,
                        lebar: 165,
                        tinggiGambar: 165,
                        lebarGambar: 165,
                        marginKanan: 0,
                        terjual: '1rb'),
                  ]),
                ),
              SizedBox(
                height: tinggi * 0.02,
              ),
              Container(
                width: lebar,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 1, color: abu)),
                child: Text(
                  'Lihat Selebihnya',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: tinggi * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget custom({icon, text}) {
  return Container(
    width: 65,
    child: Column(
      children: [
        Container(
          child: Image.asset(icon),
        ),
        Container(
          margin: EdgeInsets.only(top: 7),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: tam),
          ),
        ),
      ],
    ),
  );
}

Widget PilihanPromoCard({gambar}) {
  return Container(
    margin: EdgeInsets.only(right: 12),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    width: 150,
    height: 262.5,
    child: Image.asset(
      gambar,
    ),
  );
}

Widget KejarDiskonCard(
    {gambar,
    harga,
    diskon,
    potongan,
    daerah,
    status,
    totalPersen,
    currentPersen}) {
  return Container(
    margin: EdgeInsets.only(right: 15),
    width: 146,
    height: 276,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Colors.white),
    child: Column(
      children: [
        Container(
          width: 146,
          height: 146,
          child: Image.asset(gambar),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(bottom: 6),
                alignment: Alignment.centerLeft,
                child: Text(
                  harga,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 6, top: 6),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(2),
                          color: bgRed2),
                      child: Center(
                        child: Text(
                          diskon,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: bgRed),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        potongan,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                            color: abu),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      child: Image.asset('assets/diskonan/os.png'),
                    ),
                    Container(
                      child: Text(
                        daerah,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: abu),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 6),
                child: StepProgressIndicator(
                  totalSteps: totalPersen,
                  currentStep: currentPersen,
                  size: 4,
                  padding: 0,
                  selectedColor: bgRed,
                  unselectedColor: Color(0xffeeeeee),
                  roundedEdges: Radius.circular(2),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(status,
                    style: TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w500, color: abu)),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget pilihan(lebar, warna, warna2, judul, warna3) {
  return Container(
    width: lebar * 0.3,
    height: 66,
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topRight,
        colors: [warna, warna2],
      ),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: 25,
        height: 3,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2), color: warna3),
      ),
      Text(
        judul,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      )
    ]),
  );
}

Widget ProdukCard({
  gambar,
  nama,
  harga,
  diskon,
  potongan,
  daerah,
  rating,
}) {
  return Container(
    margin: EdgeInsets.only(right: 15),
    width: 146,
    height: 316,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: abu2,
        blurRadius: 8,
        offset: Offset(1, 1),
      )
    ], borderRadius: BorderRadius.circular(8), color: Colors.white),
    child: Column(
      children: [
        Container(
          width: 146,
          height: 146,
          child: Image.asset(gambar),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(bottom: 6),
                alignment: Alignment.centerLeft,
                child: Text(
                  nama,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  harga,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 6, top: 6),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(2),
                          color: bgRed2),
                      child: Center(
                        child: Text(
                          diskon,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: bgRed),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        potongan,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                            color: tamts),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      child: Image.asset('assets/produk/u.png'),
                    ),
                    Container(
                      child: Text(
                        daerah,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: tamts),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      child: Icon(
                        Icons.star,
                        color: yellow,
                        size: 15,
                      ),
                    ),
                    Container(
                      child: Text(
                        rating,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: abu),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget ProdukCard2(
    {gambar,
    harga,
    diskon,
    potongan,
    daerah,
    terjual,
    rating,
    produk,
    double lebar = 146,
    double tinggi = 316,
    double lebarGambar = 146,
    double tinggiGambar = 146,
    double marginKanan = 15}) {
  String truncate(String text, {length = 7, omission = '...'}) {
    if (length >= text.length) {
      return text;
    }
    return text.replaceRange(length, text.length, omission);
  }

// void main() {
//   print(truncate('Hello, World!', length: 4));
// }
  return Container(
    margin: EdgeInsets.only(right: marginKanan),
    // padding: EdgeInsets.symmetric(vertical: 10),
    width: lebar,
    height: tinggi,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 0), // changes position of shadow
      ),
    ], borderRadius: BorderRadius.circular(8), color: Colors.white),
    child: Column(
      children: [
        Container(
          width: lebarGambar,
          height: tinggiGambar,
          child: Image.asset(gambar),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(truncate(produk, length: 25),
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  harga,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 6, top: 6),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      width: 36,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(2),
                          color: bgRed2),
                      child: Center(
                        child: Text(
                          diskon,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: bgRed),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        potongan,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                            color: abu),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      child: Image.asset('assets/produk/u.png'),
                    ),
                    Container(
                      child: Text(
                        daerah,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: abu),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 4),
                        child: Icon(
                          CupertinoIcons.star_fill,
                          color: Color(0xffffc400),
                          size: 13,
                        )),
                    Container(
                      child: Text('$rating | Terjual $terjual',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: abu)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}