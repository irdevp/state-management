import 'package:exemplon1/app.dart';
import 'package:mobx/mobx.dart';

part 'carro_mobx.g.dart';

class CarroMobx = CarroMobxBase with _$CarroMobx;

abstract class CarroMobxBase with Store {
  CarroMobxBase({required this.cor});

  @observable
  String cor;

  @action
  void increment(String novaCor) {
    cor = novaCor;
  }
}
