import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/app_widget.dart';
import 'app/services/seo_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

  SeoService().initialize();

  runApp(const AppWidget());
}
