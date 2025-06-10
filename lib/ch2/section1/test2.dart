// import 'outer.dart';
// import 'outer.dart' as A;
import 'outer.dart' as A show no1, sayHello1;

void main() {
  A.no1 = 20;
  A.sayHello1();

}