import 'package:flutter/material.dart';
import 'package:universiteuygulamasi/Akademik.dart';
import 'package:universiteuygulamasi/Arastirma.dart';
import 'package:universiteuygulamasi/HizliErisim.dart';
import 'package:universiteuygulamasi/Idari.dart';
import 'package:universiteuygulamasi/Iletisim.dart';
import 'package:universiteuygulamasi/Ogrenci.dart';
import 'package:universiteuygulamasi/Universitemiz.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Color(0xFF6C1D1D),
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Image.asset(
                      'images/logo.png',
                      height: 80,
                    ),
                    SizedBox(height: 18),
                    Text(
                      'Dumlupınar Üniversitesi',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded( // Siyah arkaplanın altındaki boş alanı kaldırmak için Expanded widget ekledik
              child: Container(
                color: Color(0xFF261B1B),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    ListTile(
                      title: Text('Üniversitemiz', style: TextStyle(color: Colors.white),),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Universitemiz()
                        ));
                      },
                    ),
                    ListTile(
                      title: Text('Akademik', style: TextStyle(color: Colors.white),),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Akademik()
                        ));
                      },
                    ),
                    ListTile(
                      title: Text('Öğrenci', style: TextStyle(color: Colors.white),),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Ogrenci()
                        ));
                      },
                    ),
                    ListTile(
                      title: Text('Araştırma', style: TextStyle(color: Colors.white),),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Arastirma()
                        ));
                      },
                    ),
                    ListTile(
                      title: Text('İdari', style: TextStyle(color: Colors.white),),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Idari()
                        ));
                      },
                    ),
                    ListTile(
                      title: Text('Hızlı Erişim', style: TextStyle(color: Colors.white),),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HizliErisim()
                        ));
                      },
                    ),
                    ListTile(
                      title: Text('İletişim', style: TextStyle(color: Colors.white),),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Iletisim()
                        ));
                      },
                    ),
                  ],
                ),
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
            SizedBox(height: 10,),
            Container(
              color: Color(0xFF6C1D1D),
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Text(
                'DPU Haberler',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildNewsCard(
                  title: 'DPÜ’de Fatih ve Osmanlı Estetik Dünyası Konferansı',
                  text:
                  'Kütahya Dumlupınar Üniversitesinde Yazar Beşir Ayvazoğlu’nun konuşmacı olarak yer aldığı Fatih ve Osmanlı Estetik Dünyası başlıklı konferans düzenlendi.',
                  date: '28 Mayıs 2024, Salı',
                  imagePath: 'images/haber1.png',
                ),
                _buildNewsCard(
                  title: 'DPÜ’de Çocuklar Bilimle Eğlendi',
                  text:
                  'Kütahya Dumlupınar Üniversitesi Eğitim Fakültesi, yaklaşık 5 bin çocuğun katılımıyla düzenlenen 1. Çocuk Şenliği etkinliğine ev sahipliği yaptı.',
                  date: '28 Mayıs 2024, Salı',
                  imagePath: 'images/haber2.png',
                ),
                _buildNewsCard(
                  title: 'DPÜ GSF’den Mezuniyet Sergisi',
                  text:
                  'Kütahya Dumlupınar Üniversitesinde Güzel Sanatlar Fakültesi Görsel İletişim Tasarımı öğrencilerinin mezuniyet çalışmalarının yer aldığı Mezuniyet adlı sergi açıldı.',
                  date: '28 Mayıs 2024, Salı',
                  imagePath: 'images/haber3.png',
                ),
                _buildNewsCard(
                  title: 'DPÜ Emet MYO’da Afet Farkındalık Eğitimi',
                  text:
                  'Kütahya Dumlupınar Üniversitesi Emet Meslek Yüksekokulunda AFAD çalışanlarının katılımıyla Afet Farkındalık Eğitimi başlıklı etkinlik gerçekleşti.',
                  date: '28 Mayıs 2024, Salı',
                  imagePath: 'images/haber4.png',
                ),
              ],
            ),
            SizedBox(height: 20),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsCard({
    required String title,
    required String text,
    required String date,
    required String imagePath,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    text,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'İletişim',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Telefon: +90 (274) 443 43 43',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            'Telefon: +90 (274) 265 20 31 - 32 - 33 (10 hat)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            'Faks: +90 (274) 265 20 13 - 14 (2 hat)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            'E-Posta: kurumsaliletisim@dpu.edu.tr',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            'Adres: Evliya Çelebi Yerleşkesi Tavşanlı Yolu 10.km Kütahya / Türkiye',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            'KEP Adresi: dumlupinaruniversitesi@hs01.kep.tr',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
