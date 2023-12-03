import 'app/app.dart';
import 'bootstrap.dart';

void main() async {
  await bootstrap((serviceLocator) async => Application(serviceLocator: serviceLocator,));
}
