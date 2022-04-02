

import 'package:get/get.dart';
import 'package:my_app/Languages/ban.dart';
import 'package:my_app/Languages/eng.dart';

class Languages extends Translations{
  @override
  // ignore: todo
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
  'en_US': eng,
  'bn_BD': ban
};
}