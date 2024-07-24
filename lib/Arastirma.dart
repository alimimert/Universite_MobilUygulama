import 'package:flutter/material.dart';

class Arastirma extends StatefulWidget {
  const Arastirma({Key? key}) : super(key: key);

  @override
  State<Arastirma> createState() => _ArastirmaState();
}

class _ArastirmaState extends State<Arastirma> {
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
                  title: 'Kütüphane',
                  children: [
                    'Şehit Astsubay Ömer Halisdemir Kütüphanesi',
                    'Uzaktan Erişim',
                    'Kurumsal Akademik Arşiv',
                    'Abone Veri Tabanları',
                    'Açık Erişim Kaynaklar',
                    'E-Kitaplar',
                    'Deneme Veritabanları',
                    'Çevrim İçi Eğitimler',
                  ],
                ),
                _buildCategory(
                  title: 'Merkezler',
                  children: [
                    'DPÜ Araştırma Merkezleri',
                  ],
                ),
                _buildCategory(
                  title: 'Teknokent',
                  children: [
                    'Kütahya Tasarım Teknokent',
                    'Teknoloji Transfer Ofisi',
                  ],
                ),
                _buildCategory(
                  title: 'Dergiler',
                  children: [
                    'Bilimsel Dergiler',
                    'Süreli Yayınlar',
                  ],
                ),
                _buildCategory(
                  title: 'Sürekli Eğitim',
                  children: [
                    'DPÜSEM',
                    'DPÜ DİLMER',
                  ],
                ),
                _buildCategory(
                  title: 'Bilimsel Araştırma Projeleri',
                  children: [
                    'BAP Komisyonu',
                    'Bilimsel Araştırma ve Yayın Etiği Kurulu',
                    'Akademik Teşvik Komisyonu',
                  ],
                ),
                _buildCategory(
                  title: 'Müze',
                  children: [
                    'DPÜ Müzesi',
                    'Özel Ahmet Yakupoğlu Müzesi',
                    'Ahmet Yakupoğlu Sanal Galerisi',
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
