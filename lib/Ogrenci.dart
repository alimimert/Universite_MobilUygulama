import 'package:flutter/material.dart';

class Ogrenci extends StatefulWidget {
  const Ogrenci({Key? key}) : super(key: key);

  @override
  State<Ogrenci> createState() => _OgrenciState();
}

class _OgrenciState extends State<Ogrenci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF571717),
                Color(0xFFBD1616),
              ],
            ),
          ),
        ),
        title: Row(
          children: [
            Image.asset(
              'images/logo.png',
              height: 50,
            ),
            SizedBox(width: 8),
            Text(
              'Dumlupınar Üniversitesi',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/home.png",
            ),
            ListView(
              padding: EdgeInsets.all(16),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildCategory(
                  title: 'Genel',
                  children: [
                    'Akademik Takvim',
                    'Uzaktan Eğitim Sistemi',
                    'Öğrenci İşleri Daire Başkanlığı',
                    'Yönetmelikler',
                    'Yönergeler',
                    'Öğrenci Bilgi Paketi',
                  ],
                ),
                _buildCategory(
                  title: 'Topluluklar',
                  children: [
                    'Öğrenci Konseyi',
                    'Öğrenci Toplulukları',
                  ],
                ),
                _buildCategory(
                  title: 'Dış İlişkiler',
                  children: [
                    'Erasmus Programı',
                    'Farabi Programı',
                    'Mevlana Programı',
                    'Bologna Süreci',
                  ],
                ),
                _buildCategory(
                  title: 'Yabancı Uyruklu Öğrenciler',
                  children: [
                    'Uluslararası Öğrenci Merkezi',
                    'DPÜ TÖMER',
                  ],
                ),
                _buildCategory(
                  title: 'Aday Öğrencilerimiz',
                  children: [
                    '#TercihimDPÜ',
                    'Kayıt Merkezleri',
                    'Kütahya Hakkında',
                    'YKS Aday Öğrenci Programları',
                  ],
                ),
                _buildCategory(
                  title: 'Mezun Öğrenciler',
                  children: [
                    'Mezun Öğrenci Portalı',
                    'DPÜ Kariyer Merkezi',
                  ],
                ),
                _buildCategory(
                  title: 'Hizmetler',
                  children: [
                    'Olimpik Havuz',
                    'Yurtlar',
                    'Konukevleri',
                    'Fitness Salonu',
                    'Sosyopark',
                  ],
                ),
                _buildCategory(
                  title: 'Bedesten',
                  children: [
                    'DPÜ Dükkan',
                    'Yemekhane',
                    'Mediko',
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory({required String title, required List<String> children}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children
              .map((child) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Text(
                  '» ', // çift büyüktür işareti
                  style: TextStyle(fontSize: 16),
                ),
                Expanded(
                  child: Text(
                    child,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ))
              .toList(),
        ),
        Divider(), // Kategoriler arası ayırıcı
      ],
    );
  }
}
