import 'package:flutter/material.dart';

import '../models/hp_model.dart';

class HPInformation extends StatelessWidget {
  HPInformation({required this.hpCharacters, Key? key}) : super(key: key);

  List<HPCharacters> hpCharacters;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return Container(
              child: Text(hpCharacters.runtimeType.toString()),
            );
          },
      ),]
    );
  }
}
