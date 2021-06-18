import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xender/core/app_images.dart';
import 'package:xender/core/core.dart';
import 'package:xender/provider/contas_data/contas_data.dart';
import 'package:xender/rotas/arguments_rotas/arguments_dicas.dart';
import 'package:xender/rotas/rotas.dart';

class ListHistorico extends StatelessWidget {
  const ListHistorico({
    @required this.largura,
  });

  final double largura;

  @override
  Widget build(BuildContext context) {
    final ContasData contas = Provider.of(context, listen: false);
    final Contas contas1 = Provider.of(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        height: 70,
        width: largura * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(contas.data),
            Text(contas.litros.toStringAsFixed(3)),
            Text(contas.preco.toStringAsFixed(3)),
            Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RotasApp.AlterarConta,
                          arguments: ArgumentosConta(
                              id: contas.id,
                              date: contas.data,
                              litros: contas.litros,
                              preco: contas.preco));
                    },
                    child: Image.asset(AppImages.editar),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Container(
                    height: 28,
                    width: 28,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => Container(
                            color: Colors.white12,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white),
                                  height: 190,
                                  width: largura * 0.8,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Remover conta',
                                          style: AppTextStyles.textBlacktitle,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                        child: Material(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () => Navigator.of(context)
                                                .pop(false),
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: largura * 0.4,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12))),
                                              child: Text('cancelar'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () =>
                                                Navigator.of(context).pop(true),
                                            child: Container(
                                              height: 50,
                                              alignment: Alignment.center,
                                              width: largura * 0.4,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12))),
                                              child: Text(
                                                'remover',
                                                style: AppTextStyles.textWhite,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ).then((value) async {
                          if (value) {
                            try {
                              contas1.removerconta(contas.id);
                              Navigator.of(context).pop();
                            } catch (error) {
                              await showDialog<Null>(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text('Ocorreu um erro!'),
                                  content: Text(
                                      'Ocorreu um erro ao Remover a conta!'),
                                  actions: [
                                    FlatButton(
                                      child: Text('Fechar'),
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                              );
                            }
                          }
                        });
                      },
                      child: Image.asset(AppImages.lixeira),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
