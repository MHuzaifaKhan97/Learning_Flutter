import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'title':'Internationalization',
        },
        'de_DE': {
          'hello': 'Hallo Welt',
          'title':'Internationalisierung',
        },
        'fr_FR': {
          'hello': 'Bonjour',
          'title':'Internationalisation',  
        },
        'hi_IN': {
          'hello': 'नमस्ते',
          'title':'अंतर्राष्ट्रीयकरण',
        },
        'ur_PK': {
          'hello': 'ہیلو',
          'title':'عالمگیریت',
        },
        'ar_SA': {
          'hello': 'مرحبا',
          'title':'تدويل',
        },
      };
}
