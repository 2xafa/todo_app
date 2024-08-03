enum Flavor {
  dev,
  stage,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Todo App Dev';
      case Flavor.stage:
        return 'Todo App Stage';
      case Flavor.prod:
        return 'Todo App Prod';
      default:
        return 'title';
    }
  }

}
