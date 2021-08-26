import 'package:flutter/material.dart';
import 'package:lerjson/controller/cargosController.dart';
import 'package:lerjson/models/cargos.dart';

class ExibirCargos extends StatefulWidget {
  @override
  _ExibirCargosStage createState() => _ExibirCargosStage();
}

class _ExibirCargosStage extends State<ExibirCargos> {
  var controller = CargosController();
  @override
  void initState() {
    super.initState();
    controller.findCargos(); //devolver lista de itens do json
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListCombo<CargosModel>(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(controller.positionsSelected?.cargo ??
                    'Selecione um Cargo'),
              ),
              getList: () => controller.findCargos(),
              onItemTapped: (CargosModel value) {
                setState(() {
                  controller.selectCargos(value);
                });
              },
              itemBuilder: (_, parameters, item) {
                return ListTile(title: Text(item.cargo));
              },
            ),
          ],
        ),
      ),
    );
  }
}
