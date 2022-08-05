import 'package:exemplon1/page_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart' as mobx;

class Carro {
  ValueNotifier<String> cor;
  Carro(this.cor);
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Carro counter = Carro(ValueNotifier('RED'));

    void _incrementCounter() {
      counter.cor.value = 'BLUE';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('VALUE Notifier'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Implementação com ValueNotifier',
            ),
            ValueListenableBuilder(
                valueListenable: counter.cor,
                builder: (context, value, child) {
                  return Text(
                    counter.cor.value,
                    style: Theme.of(context).textTheme.headline4,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();

          print('Voltei pro primeiro');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyHomePageMobx extends StatelessWidget {
  const MyHomePageMobx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counter = mobx.Observable(0);

    void _incrementCounter() {
      _counter.value++;
    }

    final incremento = mobx.Action(_incrementCounter);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MOBX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'MOBX IN CODE',
            ),
            Observer(builder: (_) {
              return Text(
                _counter.value.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incremento();

          print('Voltei pro primeiro');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyHomePageMobxCodeGen extends StatelessWidget {
  const MyHomePageMobxCodeGen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageStore pageStore = PageStore();

    return Scaffold(
      appBar: AppBar(
        title: const Text('MOBX CODEGEN'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'MOBX CODEGEN',
            ),
            Observer(builder: (_) {
              return Text(
                pageStore.carroMobx.cor.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pageStore.carroMobx.increment(
              pageStore.carroMobx.cor == 'AZUL' ? 'VERMELHO' : 'AZUL');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
