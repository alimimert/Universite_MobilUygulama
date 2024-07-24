import 'package:flutter/material.dart';

class Universitemiz extends StatefulWidget {
  const Universitemiz({Key? key}) : super(key: key);

  @override
  State<Universitemiz> createState() => _UniversitemizState();
}

class _UniversitemizState extends State<Universitemiz> {
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
                  title: 'Genel',
                  children: [
                    'Tarihçe',
                    'Genel Tanıtım',
                    'Tanıtım Videoları',
                  ],
                ),
                _buildCategory(
                  title: 'Kurumsal Kimlik',
                  children: [
                    'Logomuz',
                    'Misyon ve Vizyon',
                    'Stratejik Amaç ve Hedefler',
                    'Temel Değerlerimiz ve Kalite Politikamız',
                    'Slogan',
                  ],
                ),
                _buildCategory(
                  title: 'Yönetim',
                  children: [
                    'Rektör',
                    'Rektör Yardımcıları',
                    'Rektör Danışmanları',
                    'Senato Üyeleri',
                    'Yönetim Kurulu Üyeleri',
                    'Genel Sekreter',
                  ],
                ),
                _buildCategory(
                  title: 'Koordinatörlükler',
                  children: [
                    'Bilimsel Araştırma Projeleri',
                    'Kariyer ve Mezun Merkezi',
                    'Kurumsal İletişim',
                    'Meslek Yüksekokulları (MEYOK)',
                    'Proje Yönetim Ofisi',
                    'Teknoloji Yarışmaları',
                    'YLSY Burs Programı',
                  ],
                ),
                _buildCategory(
                  title: 'Birimler',
                  children: [
                    'Engelsiz Öğrenci',
                    'Pedagojik Formasyon',
                    'Sosyal Sorumluluk Projeleri',
                  ],
                ),
                _buildCategory(
                  title: 'Komisyonlar',
                  children: [
                    'Kalite',
                    'Bologna Eş Güdüm',
                    'Akademik Teşvik Düzenleme Denetleme',
                  ],
                ),
                _buildCategory(
                  title: 'Kurullar',
                  children: [
                    'Bilimsel Araştırma ve Yayın Etiği',
                  ],
                ),
                _buildCategory(
                  title: 'İç Denetim',
                  children: [
                    'İç Denetim Birim Başkanlığı',
                  ],
                ),
                _buildCategory(
                  title: 'Disiplin İşleri',
                  children: [
                    'Disiplin İşleri / CİMER',
                  ],
                ),
                _buildCategory(
                  title: 'Kalite',
                  children: [
                    'Birim Tanıtımı',
                    'Komisyon Üyeleri',
                    'Danışma Kurulu',
                    'Organizasyon Şeması',
                    'GreenMetric',
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
