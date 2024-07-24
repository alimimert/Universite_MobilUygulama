import 'package:flutter/material.dart';

class HizliErisim extends StatefulWidget {
  const HizliErisim({Key? key}) : super(key: key);

  @override
  State<HizliErisim> createState() => _HizliErisimState();
}

class _HizliErisimState extends State<HizliErisim> {
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
                  title: 'Personel',
                  children: [
                    'EBYS Giriş',
                    'Servis Güzergâhları',
                    'Personel Giriş - Çıkış Sistemi',
                    'Personel Yoklama Sistemi',
                    'Mevzuat',
                    'Resmî İlanlar',
                    'Lojman',
                  ],
                ),
                _buildCategory(
                  title: 'Akademik',
                  children: [
                    'Kütahya Tasarım Teknokent',
                    'Teknoloji Transfer Ofisi',
                    'E-Yoklama',
                  ],
                ),
                _buildCategory(
                  title: 'Öğrenci',
                  children: [
                    'Öğrenci Bilgi Sistemi',
                    'Öğrenci Bilgi Paketi',
                    'Uzaktan Eğitim Uygulaması',
                    'Akademik Takvim',
                    'Sıkça Sorulan Sorular',
                    'Mezun Sistemi',
                    'Yurt Hizmetleri',
                    'Giysi Bank',
                  ],
                ),
                _buildCategory(
                  title: 'Hizmetler',
                  children: [
                    'Randevu Sistemi (Kuaför - Psikolog)',
                    'DPÜ Portal',
                    'Sağlık Hizmeti',
                    'Konukevleri',
                    'DPÜ Vakıf Cami',
                  ],
                ),
                _buildCategory(
                  title: 'İnternet',
                  children: [
                    'DPÜ İnternet Giriş',
                    'DPÜ İnternet Çıkış',
                    'Misafir İnternet Girişi',
                    'İnternet Erişimi Hakkında',
                    'Eduroam Ayarları',
                    'DPÜ - KVKK Aydınlatma Metni',
                  ],
                ),
                _buildCategory(
                  title: 'E-Posta',
                  children: [
                    'E-Posta Girişi Personel',
                    'E-Posta Girişi Öğrenci',
                    'E-Posta Öğrenci İşlemleri',
                    'Kullanıcı Adı Öğrenme',
                    'Parola Değiştirme',
                    'Parola Sıfırlama',
                  ],
                ),
                _buildCategory(
                  title: 'Yardım',
                  children: [
                    'Uzaktan Yardım',
                    'Antivirüs Kurulumu',
                    'E-İmza Kurulumu',
                    'BİDB Arıza Bildirimi',
                    'Yapı İşleri Arıza Bildirimi',
                  ],
                ),
                _buildCategory(
                  title: 'Koordinatörlükler',
                  children: [
                    'ÖSYM Koordinatörlüğü',
                    'AÖF Koordinatörlüğü',
                    'AUZEF Koordinatörlüğü',
                    'ATA-AÖF Koordinatörlüğü',
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
