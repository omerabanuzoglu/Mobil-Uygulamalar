class Burc {
  String _burcAdi;
  String _burcTarihi;
  String _burcDetayi;
  String _burcKucukresim;
  String _burcBuyukresim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukresim,
      this._burcBuyukresim);

  String get burcBuyukResim => _burcBuyukresim;

  set burcBuyukResim(String value) {
    _burcBuyukresim = value;
  }

  String get burcDetayi => _burcDetayi;

  set burcDetayi(String value) {
    _burcDetayi = value;
  }

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }

  String get burcKucukResim => _burcKucukresim;

  set burcKucukResim(String value) {
    _burcKucukresim = value;
  }

  String get burcTarihi => _burcTarihi;

  set burcTarihi(String value) {
    _burcTarihi = value;
  }
}
