import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TestScreen extends StatefulWidget {
  TestScreen({Key key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  static const URL_PHONE = 'tel://512985478';
  static const URL_MAIL = 'mailto:<test@test.com>';
  static const URL_GEO = 'geo:47,-122';
  static const URL_FACEBOOK = 'https://facebook.com';
  static const URL_TWITTER = 'https://twitter.com';
  static const URL_WEBSITE = 'https://ecosia.org';

  static const SIZE_TEXT_BUTTON = 150.0;
  static const MARGIN = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: IntrinsicHeight(
            child: Column(
              children: [
                Image.asset(
                  'res/image/img_kopik_logo.png',
                  width: 200,
                ),
                Container(
                  height: 50,
                ),
                Text('Este botón te tiene que abrir el dial para llamar'),
                _getFixedWidthTextButton('res/icon/ic_contact.png', '608 851 147 ',
                        () async => _launchUrl(URL_PHONE)),
                Container(
                  height: MARGIN,
                ),
                Text('Este te tendría que abrir el mail'),
                _getFixedWidthTextButton('res/icon/ic_email.png', 'test@test.com',
                        () async => _launchUrl(URL_MAIL)),
                Container(
                  height: MARGIN,
                ),
                Text('Este va a una web'),
                _getFixedWidthTextButton('res/icon/ic_web.png', 'https://appblaze.io',
                        () async => _launchUrl(URL_WEBSITE)),
                Container(
                  height: MARGIN,
                ),
                Text('Este te abre Facebook'),
                _getFixedWidthTextButton('res/icon/ic_facebook.png', 'Facebook',
                        () async => _launchUrl(URL_FACEBOOK)),
                Container(
                  height: MARGIN,
                ),
                Text('Te abre Twitter'),
                _getFixedWidthTextButton('res/icon/ic_twitter.png', 'Twitter',
                        () async => _launchUrl(URL_TWITTER)),
                Container(
                  height: MARGIN,
                ),
                Text('Y finalmente este te tiene que abrir el maps'),
                ElevatedButton(
                  child: Text('815  Pine Garden Lane, Stone Mountain, 30083, GA'),
                  onPressed: () async => _launchUrl(URL_GEO),
                ),
              ],
            ),
          ),
        ));
  }

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  Widget _getFixedWidthTextButton(
      String resId, String text, VoidCallback callback) {
    return ElevatedButton(
      child: Container(
        width: SIZE_TEXT_BUTTON,
        child: Center(child: Text(text)),
      ),
      onPressed: callback,
    );
  }
}