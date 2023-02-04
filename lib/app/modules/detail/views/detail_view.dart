import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(children: [
          Container(
              height: tinggi * 0.13,
              decoration: BoxDecoration(color: puthlid),
              padding: EdgeInsets.fromLTRB(5, 50, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: TextButton(
                      child: Icon(Icons.arrow_back, color: tam),
                      onPressed: () => Get.toNamed(Routes.HOME),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: lebar * 0.43,
                    height: tinggi * 0.6,
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
                    width: lebar * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.black,
                          size: 30,
                        ),
                        Icon(
                          CupertinoIcons.cart,
                          color: Colors.black,
                          size: 30,
                        ),
                        Icon(
                          CupertinoIcons.line_horizontal_3,
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            child: Image.asset("/detail/prod.png"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 16, 25, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rp370.000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24, color: tam),
                ),
                Icon(CupertinoIcons.heart)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 25, 20, 0),
            child: Text(
              "Mine. Perfumery ETHEREAL - 50ml Eau De Parfum",
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 18, color: tam2),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 26, 25, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text(
                      "Terjual 250+",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: tam2),
                    ),
                  ),
                  kotak(
                      text: "4.9 (320)",
                      widget: Container(
                        child: Icon(
                          CupertinoIcons.star_fill,
                          color: yellow,
                          size: 15,
                        ),
                      )),
                  kotak(text: "Foto Pembeli (50)", widget: Container()),
                  kotak(text: "Diskusi (10)", widget: Container())
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
            width: lebar,
            height: 8,
            color: Color(0xffeeeeee),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            alignment: Alignment.topLeft,
            child: Text(
              "Detail Produk",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: tam),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 30, 145, 0),
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Berat satuan",
                  style: TextStyle(color: tam3, fontSize: 15),
                ),
                Text(
                  "200 g",
                  style: TextStyle(color: tam3, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 5, 45, 0),
            width: lebar,
            child: Divider(
              color: abu,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 30, 0),
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Etalase",
                  style: TextStyle(color: tam3, fontSize: 15),
                ),
                Text(
                  "Mine Private Collection",
                  style: TextStyle(
                      color: navbwar,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 5, 45, 0),
            width: lebar,
            child: Divider(
              color: abu,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
            alignment: Alignment.topLeft,
            child: Text(
              "Deskripsi Produk",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: tam),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 30, 25, 10),
            alignment: Alignment.topLeft,
            child: Text(
              "Mine. ETHEREAL Eau De Parfum 50mi glass perfume bottle in hard box packaging • ETHEREAL • With facets that highlight a side ...",
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 14, color: tam),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            alignment: Alignment.topLeft,
            child: Text(
              "Baca Selengkapnya",
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 16, color: navbwar),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
            width: lebar,
            height: 2,
            color: Color(0xffeeeeee),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              alignment: Alignment.topLeft,
              child: Row(children: [
                Row(
                  children: [
                    Image.asset("/detail/p1.png"),
                    SizedBox(
                      width: lebar * 0.015,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('detail/os.png', width: 18),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text(
                                ' Mine. Parfumery',
                                style: TextStyle(
                                    color: tam,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Text("Online",
                                  style: TextStyle(
                                      color: tamts,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15)),
                            ),
                            Text("23 jam lalu",
                                style: TextStyle(
                                    color: tamts,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15))
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text("Kota Tangerang",
                              style: TextStyle(
                                  color: tamts,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15)),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 20),
                      width: lebar * 0.2,
                      height: 37,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: navbwar)),
                      child: Text(
                        'Follow',
                        style: TextStyle(
                            color: navbwar,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ])),
          Container(
            margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
            width: lebar,
            height: 8,
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
                          'Lainnya di toko ini',
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
                              gambar: '/detail/pink.png',
                              daerah: 'Kota Tangerang',
                              nama: "Mine. Perfumery FLORAISON ...",
                              harga: 'Rp 370.000',
                              rating: '4.8 | Terjual 312'),
                          ProdukCard(
                              gambar: '/detail/bambu.png',
                              daerah: 'Kota Tangerang',
                              nama: "Mine. Perfumery TATMI - 50ml ...",
                              harga: 'Rp 370.000',
                              rating: '4.8 | Terjual 312'),
                          ProdukCard(
                              gambar: '/detail/pink.png',
                              daerah: 'Kota Tangerang',
                              nama: "Mine. Perfumery FLORAISON ...",
                              harga: 'Rp 370.000',
                              rating: '4.8 | Terjual 312'),
                          ProdukCard(
                              gambar: '/detail/bambu.png',
                              daerah: 'Kota Tangerang',
                              nama: "Mine. Perfumery TATMI - 50ml ...",
                              harga: 'Rp 370.000',
                              rating: '4.8 | Terjual 312'),
                        ],
                      ),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
                  width: lebar,
                  height: 8,
                  color: Color(0xffeeeeee),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Ulasan pembeli',
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
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 16),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 40,
                        color: yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(
                            color: tam,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "320 rating∙102 ulasan",
                        style:
                            TextStyle(color: tam3, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset('/detail/1.png'),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset('/detail/2.png'),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset('/detail/3.png'),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset('/detail/4.png'),
                      ),
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('/detail/5.png'))),
                        child: Center(
                          child: Text(
                            '+61',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 5, 0, 0),
                  width: lebar,
                  child: Divider(
                    color: abu,
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    alignment: Alignment.topLeft,
                    child: Row(children: [
                      Row(
                        children: [
                          Image.asset("/detail/b1.png"),
                          SizedBox(
                            width: lebar * 0.015,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        'Zain Ekstrom Bothman',
                                        style: TextStyle(
                                            color: tam,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text("31 ulasan lengkap ∙ 17 terbantu",
                                      style: TextStyle(
                                          color: tamts,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ])),
                Container(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: yellow,
                        size: 15,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: yellow,
                        size: 15,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: yellow,
                        size: 15,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: yellow,
                        size: 15,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: yellow,
                        size: 15,
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "10 bulan lalu",
                            style: TextStyle(color: tamts),
                          ))
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                            'saya selalu tertarik dengan produk lokal, buat saya aroma nomor 2 karena subyektif, Kemasan nomorselanjutnya, tapi yang perlu di',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25, top: 10),
                        alignment: Alignment.topLeft,
                        child: Text('Baca Selengkapnya',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: navbwar)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24, bottom: 22),
                  width: lebar,
                  height: 8,
                  decoration: BoxDecoration(color: Color(0xffeeeeee)),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                'Diskusi',
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
                        padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
                        child: Column(
                          children: [
                            DiskusiUser(
                                marginBawah: 12,
                                marginKiri: 0,
                                bgProfile: 'detail/b2.png',
                                comment:
                                    'hai! kira-kira kapan restock lagi? thanks in advance',
                                widgetNama: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Rayna Stanton ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text: '∙ Apr 2022',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: abu),
                                      ),
                                    ],
                                  ),
                                )),
                            DiskusiUser(
                                marginBawah: 0,
                                bgProfile: '/detail/p2.png',
                                comment:
                                    'Halo kak, maaf banget yak karena kamu jadi nunggu, saat ini kita masih out of stock ya ...',
                                marginKiri: 32,
                                widgetNama: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 6),
                                      width: 70,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: ijo2),
                                      child: Center(
                                        child: Text('Penjual',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: ijo)),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '∙ Apr 2022',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: abu),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24, bottom: 24),
                  width: lebar,
                  height: 8,
                  decoration: BoxDecoration(color: Color(0xffeeeeee)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 12),
                        child: Icon(
                          CupertinoIcons.info_circle,
                          size: 24,
                        ),
                      ),
                      Container(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Produk bermasalah? ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Laporkan',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: ijo),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 1, color: Color(0xffeeeeee)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 1.5, color: abu)),
                        child: Center(
                          child: Icon(
                            CupertinoIcons.chat_bubble_text,
                            size: 26,
                          ),
                        ),
                      ),
                      Container(
                        width: lebar * 0.35,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 1.5, color: navbwar)),
                        child: Center(
                            child: Text(
                          'Beli Langsung',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ijo),
                        )),
                      ),
                      Container(
                        width: lebar * 0.35,
                        height: 50,
                        decoration: BoxDecoration(
                            color: ijo,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 1.5, color: ijo)),
                        child: Center(
                            child: Text(
                          '+Keranjang',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}

Widget DiskusiUser(
    {widgetNama,
    bgProfile,
    comment,
    required double marginKiri,
    required double marginBawah}) {
  return Container(
    margin: EdgeInsets.only(left: marginKiri, bottom: marginBawah),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 12),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: 12,
                ),
                width: 35,
                height: 35,
                child: Image.asset(bgProfile),
              ),
              Container(
                child: widgetNama,
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            comment,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        )
      ],
    ),
  );
}

Widget kotak({widget, text}) {
  return Container(
    margin: EdgeInsets.only(right: 6),
    padding: EdgeInsets.fromLTRB(10, 7, 10, 7),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: abu)),
    child: Row(
      children: [
        widget,
        Container(
          child: Text(text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
        )
      ],
    ),
  );
}

Widget ProdukCard({
  gambar,
  nama,
  harga,
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
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(2),
                          color: ijo2),
                      child: Center(
                        child: Text(
                          "Cashback",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: ijo),
                        ),
                      ),
                    ),
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
