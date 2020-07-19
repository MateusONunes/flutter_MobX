import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store{

  @observable
  int count = 0;

  @action
  void increment(){
    count++;
  }
}

/*
::O Comando abaixo vai gerar o arquivo "counter.g.dart"
flutter packages pub run build_runner build

::O Comando abaixo vai Monitorar o arquivo "counter.dart" para gerar (quando houver modificações) o arquivo "counter.g.dart"
flutter packages pub run build_runner watch
*/