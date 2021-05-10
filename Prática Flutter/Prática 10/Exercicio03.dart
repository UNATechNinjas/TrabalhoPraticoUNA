import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController comprimentoController = TextEditingController();
  TextEditingController larguraController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String volume = "";
  calcularVolume() {
    double comprimento = double.parse(this.comprimentoController.text);
    double largura = double.parse(this.larguraController.text);
    double altura = double.parse(this.alturaController.text);

    double valorvolume = comprimento * largura * altura;
    this.volume = '$comprimento X $largura X $altura = $valorvolume';
    return this.volume;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular volume de um paralelepípedo'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: comprimentoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => comprimentoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Comprimento',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: larguraController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => comprimentoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Largura',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Altura',
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
                    print(calcularVolume());
                    setState(calcularVolume);
                  },
                  child: Text(
                    'Volume',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            this.volume,
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
