import 'package:get/get.dart';
class Messages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'title': 'Hello World',
    },
    'de_DE': {
      'title': 'Hallo Welt',
    },
    'vi_VN': {
      'title': 'Chào thế giới',
    }
  };

}