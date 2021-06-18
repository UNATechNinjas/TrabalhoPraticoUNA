import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xender/componentes/appBarmenorVoltar.dart';
import 'package:xender/componentes/buttonDegrade.dart';
import 'package:xender/core/core.dart';
import 'package:xender/provider/contas_data/contas_data.dart';
import 'package:xender/rotas/arguments_rotas/arguments_dicas.dart';

class AlterarConta extends StatefulWidget {
  @override
  _AlterarContaState createState() => _AlterarContaState();
}

class _AlterarContaState extends State<AlterarConta> {
  final _data = TextEditingController();
  final _litros = TextEditingController();
  final _reais = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final contaSelecionada =
        ModalRoute.of(context).settings.arguments as ArgumentosConta;
    final Contas contas = Provider.of<Contas>(context);
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBarMenorVoltar(
        title: 'ADICIONAR CONTA',
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qual a data?',
                      style: AppTextStyles.textBlacktitle,
                    ),
                    SizedBox(
                      height: altura * 0.01,
                    ),
                    Container(
                      width: largura * 0.9,
                      decoration: BoxDecoration(
                          gradient: AppGradients.linearTextForm,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2.0, vertical: 1.5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: contaSelecionada.date),
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            controller: _data,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: altura * 0.06,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qual o consumo?(Em litros)',
                      style: AppTextStyles.textBlacktitle,
                    ),
                    SizedBox(
                      height: altura * 0.01,
                    ),
                    Container(
                      width: largura * 0.9,
                      decoration: BoxDecoration(
                          gradient: AppGradients.linearTextForm,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2.0, vertical: 1.5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: contaSelecionada.litros.toString()),
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            controller: _litros,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: altura * 0.06,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Qual o valor final?(Em reais)',
                      style: AppTextStyles.textBlacktitle,
                    ),
                    SizedBox(
                      height: altura * 0.01,
                    ),
                    Container(
                      width: largura * 0.9,
                      decoration: BoxDecoration(
                          gradient: AppGradients.linearTextForm,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2.0, vertical: 1.5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            decoration: InputDecoration(hintText: contaSelecionada.preco.toString()),
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            controller: _reais,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                contas.addItem(
                    contaSelecionada.id,
                    _data.text,
                    double.tryParse(_reais.text),
                    double.tryParse(_litros.text));
                print(_data.text);
                Navigator.of(context).pop();
              },
              child: ButtonDegrade(
                largura: largura,
                text: 'ALTERAR',
              ),
            ),
            SizedBox(
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
