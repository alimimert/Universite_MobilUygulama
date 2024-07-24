import 'package:flutter/material.dart';

class Akademik extends StatefulWidget {
  const Akademik({Key? key}) : super(key: key);

  @override
  State<Akademik> createState() => _AkademikState();
}

class _AkademikState extends State<Akademik> {
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
                  fontWeight: FontWeight.bold
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
                  title: 'Fakülteler',
                  children: [
                    'Eğitim Fakültesi',
                    'Fen Edebiyat Fakültesi',
                    'Güzel Sanatlar Fakültesi',
                    'İktisadi ve İdari Bilimler Fakültesi',
                    'İslami İlimler Fakültesi',
                    'Kütahya Uygulamalı Bilimler Fakültesi',
                    'Mimarlık Fakültesi',
                    'Mühendislik Fakültesi',
                    'Simav Teknoloji Fakültesi',
                    'Spor Bilimleri Fakültesi',
                    'Tavşanlı Uygulamalı Bilimler Fakültesi',
                  ],
                ),
                _buildCategory(
                  title: 'Yüksekokul',
                  children: [
                    'Yabancı Diller Yüksekokulu',
                  ],
                ),
                _buildCategory(
                  title: 'Meslek Yüksekokulları',
                  children: [
                    'Altıntaş Meslek Yüksekokulu',
                    'Çavdarhisar Meslek Yüksekokulu',
                    'Domaniç Hayme Ana MYO',
                    'Dumlupınar Meslek Yüksekokulu',
                    'Emet Meslek Yüksekokulu',
                    'Gediz Meslek Yüksekokulu',
                    'Hisarcık Meslek Yüksekokulu',
                    'Kütahya Güzel Sanatlar MYO',
                    'Kütahya Sosyal Bilimler MYO',
                    'Kütahya Teknik Bilimler MYO',
                    'Pazarlar Meslek Yüksekokulu',
                    'Simav Meslek Yüksekokulu',
                    'Şaphane Meslek Yüksekokulu',
                    'Tavşanlı Meslek Yüksekokulu',
                  ],
                ),
                _buildCategory(
                  title: 'Enstitü',
                  children: [
                    'Lisansüstü Eğitim Enstitüsü',
                  ],
                ),
                _buildCategory(
                  title: 'Bölümler',
                  children: [
                    'Atatürk İlkeleri ve İnkılap Tarihi',
                    'Enformatik',
                    'Türk Dili',
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
