/*
* Este exemplo exige que a linguagem Dart trate o código como
* "null safe". Para que o SDK suporte "null safety", o arquivo
* "pubspec.yaml" deve ter a seguinte instrução:
environment:
 sdk: ">=2.12.0 <3.0.0"
 
*
* OBS 1: quando você quer especificar que uma variável pode
* armazenar um valor ou null, seu tipo deve ser declarado
* explicitamente como nullable. Isso é feito colocando um
* sinal de interrogação (?) após o nome do tipo.
*
* OBS 2: o sinal de exclamação (!) converte um tipo anulável
* (nullable) em um tipo não anulável (non-nullable).
*/
import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        RotaGenerica.caminhoDaRota: (context) => RotaGenerica(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController temperaturaCelsiusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graus Celsius'),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            controller: this.temperaturaCelsiusController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () => this.temperaturaCelsiusController.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
              labelText: 'temperatura em graus Celsius',
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: ElevatedButton(
              child: Text('Converter Temperatura'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RotaGenerica.caminhoDaRota,
                  arguments: ArgumentosDaRota('Graus Fahrenheit', double.parse(this.temperaturaCelsiusController.text)),
                );
              }),
        ),
      ]),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';

  converter(double celsius) => celsius * 1.8 + 32;

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos = ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 100, 10, 100),
              child: Text(
                'Graus Celsius: ${argumentos.celsius.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 100, 10, 100),
              child: Text(
                'Graus Fahrenheit: ${converter(argumentos.celsius).toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  double celsius;
  ArgumentosDaRota(this.titulo, this.celsius);
}

