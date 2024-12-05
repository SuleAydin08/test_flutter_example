import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter_example/view/counter.dart';

void main(){

  //Value'i arttırma fonksiyonunun testi.
  test('Unit Test - Değer Arttırma', (){
    final counter = Counter();

    counter.increment();

    expect(counter.value,1);
  });

  //Value'i azaltma fonksiyonu testi.
  test('Unit Test - Değer Azaltma', (){
    final counter = Counter();

//Value değeri başlangıçta 0 olduğu için önce arttırma fonksiyonu ile arttırıyoruz sonrasında azaltma işlemi yaptırıyoruz.
    counter.increment();
    counter.decrement();

    expect(counter.value, 0);
  });
}