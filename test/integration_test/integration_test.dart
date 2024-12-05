import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter_example/view/first_screen.dart';

void main() {
  testWidgets('Integration Test - İkinci Sayfaya Yönlendirme', (WidgetTester tester) async {
    //Yönlendirmeyi yapacağımız sayfa
    await tester.pumpWidget(const MaterialApp(
      home: FirstScreen(),
    ));

    //Ui'da Fluttera Hoş Geldiniz! yazısı var mı onun kontrolü
    expect(find.text('Fluttera Hoş Geldiniz!'), findsOneWidget);

    //Elevated buttonun tıklanması var mı kontrol ediyoruz.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle(); // Yönlendirme sonrası sayfanın yüklenmesini bekliyoruz

    // Arttık tıkladık gitti buradad ikinci sayfadaki text kontrol ediyoruz .İkinci sayfada "Bu ikinci ekran!" yazısının olup olmadığını kontrol ediyoruz
    expect(find.text('Bu ikinci ekran!'), findsOneWidget);
  });

  testWidgets('Integration Test - İkinci Sayfadan Birinci Sayfaya Yönlendirme', (WidgetTester tester) async {
    //Yönlendirmeyi yapacağımız sayfa
    await tester.pumpWidget(const MaterialApp(
      home: FirstScreen(),
    ));

    //Ui'da Fluttera Hoş Geldiniz! yazısı var mı onun kontrolü
    expect(find.text('Fluttera Hoş Geldiniz!'), findsOneWidget);

    //Elevated buttonun tıklanması var mı kontrol ediyoruz.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle(); // Yönlendirme sonrası sayfanın yüklenmesini bekliyoruz
    
    // Arttık tıkladık gitti buradad ikinci sayfadaki text kontrol ediyoruz .İkinci sayfada "Bu ikinci ekran!" yazısının olup olmadığını kontrol ediyoruz
    expect(find.text('Bu ikinci ekran!'), findsOneWidget);

    //2. sayfadan birinci sayfaya geçme fonksiyonu
    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    //İlk sayfaya döndüğünü kontrol etmek için ilk sayfadaki text ui'da var mı onu test ediyoruz.
    expect(find.text('Fluttera Hoş Geldiniz!'), findsOneWidget);
  });
  
}

