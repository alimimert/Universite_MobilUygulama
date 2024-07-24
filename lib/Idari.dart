import 'package:flutter/material.dart';

class Idari extends StatefulWidget {
  const Idari({Key? key}) : super(key: key);

  @override
  State<Idari> createState() => _IdariState();
}

class _IdariState extends State<Idari> {
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
                  title: 'Genel Sekreterlik',
                  children: [
                    'Genel Sekreterlik',
                    'Rektörlük Özel Kalem',
                  ],
                ),
                _buildCategory(
                  title: 'Daire Başkanlıkları',
                  children: [
                    'Bilgi İşlem',
                    'İdari ve Mali İşler',
                    'Kütüphane ve Dokümantasyon',
                    'Öğrenci İşleri',
                    'Personel',
                    'Sağlık Kültür ve Spor',
                    'Strateji Geliştirme',
                    'Yapı İşleri ve Teknik',
                  ],
                ),
                _buildCategory(
                  title: 'Müşavirlikler',
                  children: [
                    'Hukuk',
                  ],
                ),
                _buildCategory(
                  title: 'Müdürlükler',
                  children: [
                    'Döner Sermaye',
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
