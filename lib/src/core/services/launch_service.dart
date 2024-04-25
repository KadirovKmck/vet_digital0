import 'package:url_launcher/url_launcher.dart';

class UrlService {
  const UrlService._();

  static Future<void> launchWhatsApp(String whatsapp) async {
    // final uri = Uri.parse('https://api.whatsapp.com/send?phone=$whatsapp');
    final uri = Uri.parse('https://wa.me/$whatsapp');
    if (!await launchUrl(uri)) throw Exception('Could not launch $uri');
  }

  static Future<void> launchTelegram(String name) async {
    final uri = Uri.parse('https://t.me/$name');
    if (!await launchUrl(uri)) throw Exception('Could not launch $uri');
  }

  static Future<void> launchCaller(String tel) async {
    final uri = Uri.parse('tel:$tel');
    if (!await launchUrl(uri)) throw Exception('Could not launch $uri');
  }

  static Future<void> launchEmail(String email) async {
    final uri = Uri.parse(email);
    if (!await launchUrl(uri)) throw Exception('Could not launch $uri');
  }

  static Future<void> launchURL(String web) async {
    final uri = Uri.parse(web);
    if (!await launchUrl(uri)) throw Exception('Could not launch $uri');
  }
}
