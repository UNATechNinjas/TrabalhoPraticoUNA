import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xender/componentes/appBarMenor.dart';
import 'package:xender/componentes/bottomsheet.dart';
import 'package:xender/core/app_colors.dart';
import 'package:xender/core/app_gradients.dart';
import 'package:xender/core/app_images.dart';
import 'package:xender/core/app_text_styles.dart';
import 'package:xender/dicas/dicas_controller.dart';
import 'package:xender/dicas/lista/lista_dicas.dart';
import 'package:xender/rotas/arguments_rotas/arguments_dicas.dart';
import 'package:xender/rotas/rotas.dart';
import 'package:xender/shared/models/dicas_model.dart';

class Dicas extends StatefulWidget {
  const Dicas();

  @override
  _DicasState createState() => _DicasState();
}

class _DicasState extends State<Dicas> {
  int botaoSelecionado = 1;
  final controller = DicasController();
  List<DicasModel> _dicas = [];
  List<DicasModel> _dicasalternatia = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getDicas();
    controller.stateNotifierw.addListener(() {
      setState(() {
        _dicas = controller.dicas;
        _dicas = _dicas.where((p) {
          String newDescription = p.categoria.toString();
          print(newDescription);
          return newDescription == 'agua';
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBarMenor(title: "DICAS"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: altura * 0.07,
            ),
            Container(
              alignment: Alignment.center,
              width: largura * 0.8,
              height: 50,
              decoration: BoxDecoration(
                  gradient: AppGradients.linearAppBar,
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          botaoSelecionado = 1;
                          _dicas = controller.dicas;
                          _dicas = _dicas.where((p) {
                            String newDescription = p.categoria.toString();
                            print(newDescription);
                            return newDescription == 'agua';
                          }).toList();
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: largura * 0.38,
                        height: 40,
                        decoration: BoxDecoration(
                          color: botaoSelecionado == 1
                              ? AppColors.blueBackground
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Água",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.textAppBarWhite,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          botaoSelecionado = 2;
                          _dicas = controller.dicas;
                          _dicas = _dicas.where((p) {
                            String newDescription = p.categoria.toString();
                            return newDescription == 'reciclagem';
                          }).toList();
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: largura * 0.38,
                        height: 40,
                        decoration: BoxDecoration(
                          color: botaoSelecionado == 2
                              ? AppColors.blueBackground
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Reciclagem",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.textAppBarWhite,
                        ),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: altura * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Recomendado",
                  textAlign: TextAlign.start,
                  style: AppTextStyles.textBlack,
                ),
              ],
            ),
            SizedBox(
              height: altura * 0.01,
            ),
            Stack(
              children: [
                Container(
                  width: largura * 1.2,
                  height: 210,
                  child: Image.asset(AppImages.recomendado),
                ),
                Positioned(
                  bottom: 15,
                  left: 5,
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: largura * 0.6,
                    decoration: BoxDecoration(
                        color: AppColors.transparente,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text("Como controlar o consumo no banho?",
                        style: AppTextStyles.textBlack),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: altura * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Todas",
                  textAlign: TextAlign.start,
                  style: AppTextStyles.textBlack,
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    new SizedBox(
                      height: altura * 0.5,
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          color: Colors.transparent,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: _dicas
                                .map(
                                  (e) => GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          RotasApp.DicasDetails,
                                          arguments: ArgumentosDicas(
                                              imagem: e.imagemSecundaria,
                                              text: e.textSecundario,
                                              title: e.title));
                                    },
                                    child: ChangeNotifierProvider.value(
                                      value: e,
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        color: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: ListaDicas(),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: largura,
              height: altura * 0.1,
            )
          ],
        ),
      ),
      bottomSheet: BarraInferior(4),
    );
  }
}