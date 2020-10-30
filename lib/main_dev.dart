import 'package:flavors_ci_cd/main_common.dart';
import 'environment.dart';

Future<void> main() async {
  await mainCommon(Environment.develop);
}