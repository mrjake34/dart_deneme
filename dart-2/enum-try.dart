enum PageStatus {
  loading,
  loaded,
  failed,
}

enum CurrencyEnum {
  usd(r'$', 'USD'),
  eur('€', 'EUR'),
  gbp('£', 'GBP'),
  tl('₺', 'TL'),
  ;

  const CurrencyEnum(this.symbol, this.name);
  final String symbol;
  final String name;
}

enum PagePaths {
  splash(path: '/'),
  home(path: '/home'),
  ;

  final String path;
  const PagePaths({required this.path});

  static final pathList = PagePaths.values.map((e) => e.path).toList();
}

void main(List<String> args) {
  print(PagePaths.pathList);
}
