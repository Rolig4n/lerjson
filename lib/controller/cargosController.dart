import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:lerjson/models/cargos.dart';

class CargosController {
  //metodo assincrono -> "ler e devolve"
  Future<List<CargosModel>> findCargos() async {
    var jsonFile = await rootBundle.loadString('assets/cargos.json');
    List<dynamic> positions = json.decode(jsonFile) as List;
    return positions.map((c) => CargosModel.fromMap(c)).toList();
  }

  CargosModel positionsSelected;

  void selectCargos(CargosModel positionsSelected) {
    this.positionsSelected = positionsSelected;
  }
}
