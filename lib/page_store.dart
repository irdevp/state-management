import 'package:exemplon1/carro_mobx.dart';
import 'package:mobx/mobx.dart';

part 'page_store.g.dart';

class PageStore = PageStoreBase with _$PageStore;

abstract class PageStoreBase with Store {
  @observable
  CarroMobx carroMobx = CarroMobx(cor: 'VERMELHO');
}
