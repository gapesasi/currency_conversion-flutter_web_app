class CurrencyModel{
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcon;

  CurrencyModel({
    required this.name, 
    required this.real, 
    required this.dolar, 
    required this.euro, 
    required this.bitcon
    });

static List<CurrencyModel> getCurrencies(){
  return <CurrencyModel>[
    CurrencyModel(
      name: 'Real', 
      real: 1, 
      dolar: 0.19, 
      euro: 0.18, 
      bitcon: 0.0000081
      ),
    CurrencyModel(
      name: 'Dolar', 
      real: 5.21, 
      dolar: 1, 
      euro: 0.94, 
      bitcon: 0.000042
      ),
    CurrencyModel(
      name: 'Euro', 
      real: 5.55, 
      dolar: 1.06, 
      euro: 1, 
      bitcon: 0.000045
      ),
    CurrencyModel(
      name: 'Bitcoin', 
      real: 123972.81, 
      dolar: 23813.56, 
      euro: 22357.00, 
      bitcon: 1
      )
  ];
}

}