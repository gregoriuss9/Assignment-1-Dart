void main() {
  num suhu1 = 30;
  num suhu2 = -16.43636;

  print(
      'Suhu dalam Celcius= ${suhu1} ===> Suhu dalam Fahrenheit= ${toCelcius(suhu1)}');
  print(
      'Suhu dalam Celcius= ${suhu2} ===> Suhu dalam Fahrenheit= ${toCelcius(suhu2)}');
}

num toCelcius(suhuCelcius) {
  num suhuFahrenheit = 9 / 5 * suhuCelcius + 32;
  return suhuFahrenheit;
}
