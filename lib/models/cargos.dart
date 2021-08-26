import 'dart:convert';

class CargosModel {
  //classe cargos
  String id; //id
  String cargo; //nome dos cargos

  //método construtor da classe
  CargosModel({
    this.id,
    this.cargo,
  });

  //método mapeador
  Map<String, dynamic> toMap() {
    return {'id': id, 'cargo': cargo};
  }

  //método ler json e atribuir a modelo
  static CargosModel fromMap(Map<String, dynamic> map) {
    if (map == null) {}

    return CargosModel(
      id: map['id'],
      cargo: map['cargo'],
    );
  }

  //método converter em json
  String toJson() => json.encode(toMap());

  static CargosModel fromJson(String source) => fromMap(json.decode(source));
}
