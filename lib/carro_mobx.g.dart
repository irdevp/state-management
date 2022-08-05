// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carro_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarroMobx on CarroMobxBase, Store {
  late final _$corAtom = Atom(name: 'CarroMobxBase.cor', context: context);

  @override
  String get cor {
    _$corAtom.reportRead();
    return super.cor;
  }

  @override
  set cor(String value) {
    _$corAtom.reportWrite(value, super.cor, () {
      super.cor = value;
    });
  }

  late final _$CarroMobxBaseActionController =
      ActionController(name: 'CarroMobxBase', context: context);

  @override
  void increment(String novaCor) {
    final _$actionInfo = _$CarroMobxBaseActionController.startAction(
        name: 'CarroMobxBase.increment');
    try {
      return super.increment(novaCor);
    } finally {
      _$CarroMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cor: ${cor}
    ''';
  }
}
