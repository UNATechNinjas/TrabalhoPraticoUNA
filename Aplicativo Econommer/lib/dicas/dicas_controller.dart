import 'package:flutter/foundation.dart';
import 'package:xender/dicas/dicas_state.dart';
import 'package:xender/shared/models/dicas_model.dart';

import 'dicas_repositorio.dart';

class DicasController {
  final stateNotifierw = ValueNotifier<DicasState>(DicasState.empty);
  set state(DicasState state) => stateNotifierw.value = state;
  DicasState get state => stateNotifierw.value;

  List<DicasModel> dicas;

  final repository = DicasRepositorio();

  

  void getDicas() async{
    state = DicasState.loading;  
    dicas = await repository.getDicas();
    state = DicasState.success;
  }
  
}