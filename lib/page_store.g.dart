// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PageStore on PageStoreBase, Store {
  late final _$carroMobxAtom =
      Atom(name: 'PageStoreBase.carroMobx', context: context);

  @override
  CarroMobx get carroMobx {
    _$carroMobxAtom.reportRead();
    return super.carroMobx;
  }

  @override
  set carroMobx(CarroMobx value) {
    _$carroMobxAtom.reportWrite(value, super.carroMobx, () {
      super.carroMobx = value;
    });
  }

  @override
  String toString() {
    return '''
carroMobx: ${carroMobx}
    ''';
  }
}
