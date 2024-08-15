import 'package:flutter/foundation.dart';
import 'package:meta_seo/meta_seo.dart';

class SeoService {
  final String author;
  final String description;
  final String keywords;

  static SeoService? _instance;
  static MetaSEO? _metaSEO;

  SeoService._({
    required this.author,
    required this.description,
    required this.keywords,
  });

  factory SeoService() {
    _instance ??= SeoService._(
      author: 'Adriano R. Sousa & Rodolfo Goulart',
      description: 'Aletheia Bible é um aplicativo de estudo bíblico'
          ' que tem como objetivo ajudar você a estudar a Bíblia de forma mais'
          ' eficiente e prática. Com ele, você pode fazer anotações, marcar'
          ' versículos, ter acesso a um dicionário bíblico e muito mais.',
      keywords: 'Bíblia, '
          'Estudo Bíblico, '
          'Anotações, '
          'Dicionário Bíblico, '
          'Versículos, '
          'Aletheia Bible, '
          'Aplicativo Bíblico, '
          'Estudo da Bíblia ',
    );
    return _instance!;
  }

  void initialize() {
    if (kIsWeb) {
      _metaSEO = MetaSEO()..config();
      _metaSEO!.author(author: author);
      _metaSEO!.description(description: description);
      _metaSEO!.keywords(keywords: keywords);
    }
  }

  set title(String title) {
    if (kIsWeb) {
      _metaSEO!.ogTitle(ogTitle: title);
    }
  }
}
