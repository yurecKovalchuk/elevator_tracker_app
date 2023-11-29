class RouteData {
  final String name;
  final String path;

  const RouteData({
    required this.name,
    required this.path,
  });
}

abstract class AppRoutInfo {
  static const startScreen = RouteData(
    name: 'start_screen',
    path: '/',
  );
  static const housesScreen = RouteData(
    name: 'houses_screen',
    path: '/houses',
  );
  static const liftScreen = RouteData(
    name: 'lift_screen',
    path: '/lift',
  );
}
