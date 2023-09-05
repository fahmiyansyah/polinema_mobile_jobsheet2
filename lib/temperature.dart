import 'dart:io';

void main(List<String> args) {
  var temperature;
  var unit;
  var celcius;
  var farenheit;
  var reamur;
  var kelvin;
  print('Menu \n 1. C \n 2. F \n 3. R \n 4. K');
  stdout.write('Enter your choice: ');
  var choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      stdout.write("Celcius : ");
      temperature = int.parse(stdin.readLineSync()!);
      unit = "Celcius";
      celcius = temperature;
      farenheit = (9 / 5 * celcius) + 32;
      reamur = celcius * 4 / 5;
      kelvin = celcius + 273.15;
      break;
    case '2':
      stdout.write("Farenheit : ");
      temperature = int.parse(stdin.readLineSync()!);
      unit = "Farenheit";
      celcius = (temperature - 32) * 5 / 9;
      farenheit = temperature;
      reamur = celcius * 4 / 5;
      kelvin = celcius + 273.15;
      break;
    case '3':
      stdout.write("Reamur : ");
      temperature = int.parse(stdin.readLineSync()!);
      unit = "Reamur";
      farenheit = (9 / 4 * unit) + 32;
      celcius = (farenheit - 32) * 5 / 9;
      reamur = temperature;
      kelvin = celcius + 273.15;
      break;
    case '4':
      stdout.write("Kelvin : ");
      temperature = int.parse(stdin.readLineSync()!);
      unit = "Kelvin";
      celcius = temperature - 273.15;
      farenheit = (9 / 4 * unit) + 32;
      reamur = celcius * 4 / 5;
      kelvin = temperature;
      break;
    default:
      print('Invalid choice. Please select a valid option.');
      break;
  }

  print("$temperature $unit = $celcius Celcius");
  print("$temperature $unit = $farenheit Farenheit");
  print("$temperature $unit = $reamur Reamur");
  print("$temperature $unit = $kelvin Kelvin");
  
}
