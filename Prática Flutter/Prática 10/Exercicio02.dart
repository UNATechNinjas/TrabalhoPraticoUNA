import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String imc = "";
  calcularIMC() {
    double peso = double.parse(this.pesoController.text);
    double altura = double.parse(this.alturaController.text);
    double valorimc = peso / (altura * altura);

    setState(() {
      if (valorimc < 16)
        this.imc = 'IMC: $valorimc \nImc menor que 16 \nMagreza grave.';
      else if (valorimc < 17)
        this.imc = 'IMC: $valorimc \nImc entre 16 e 17 \nMagreza moderada.';
      else if (valorimc < 18.5)
        this.imc = 'IMC: $valorimc \nImc entre 17 e 18,5 \nMagreza Leve.';
      else if (valorimc < 25)
        this.imc = 'IMC: $valorimc \nImc entre 18,5 e 25 \nSaudavel.';
      else if (valorimc < 30.0)
        this.imc = 'IMC: $valorimc \nImc entre 25 e 30 \nSobrepeso.';
      else if (valorimc < 35.0)
        this.imc = 'IMC: $valorimc \nImc entre 30 e 35 \nObesidade Grau I.';
      else if (valorimc < 40.0)
        this.imc = 'IMC: $valorimc \nImc entre 35 e 40 \nObesidade Grau II.';
      else
        this.imc = 'IMC: $valorimc \nImc maior que 40 \nObesidade Grau III.';
    });

    return this.imc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: pesoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => pesoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe seu peso',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => pesoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe sua altura',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print(calcularIMC());
                    setState(calcularIMC);
                  },
                  child: Text(
                    'IMC',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            this.imc,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
