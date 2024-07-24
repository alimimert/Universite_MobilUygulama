import 'package:flutter/material.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
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
                  title: 'Koordinatörlük',
                  children: [
                    'Kurumsal İletişim',
                  ],
                ),
                _buildCategory(
                  title: 'Ulaşım',
                  children: [
                    'Konumlar',
                    'Şehir İçi Ulaşım',
                    'Şehre Ulaşım',
                  ],
                ),
                _buildCategory(
                  title: 'Birimler',
                  children: [
                    'Telefon Rehberi',
                    'Birim İletişim Bilgileri',
                  ],
                ),
                _buildCategory(
                  title: 'Kurumsal İletişim',
                  children: [
                    'Bilgi Edinme',
                    'Görüş Öneri Şikayet',
                    'Yerleşke Gezisi',
                  ],
                ),
                _buildCategory(
                  title: 'Sosyal Medya',
                  children: [
                    'Facebook',
                    'Instagram',
                    'LinkedIn',
                    'TikTok',
                    'X',
                    'YouTube',
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
