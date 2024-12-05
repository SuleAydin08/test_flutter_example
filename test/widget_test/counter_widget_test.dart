import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter_example/view/widget/counter_widget.dart';

void main() {
  testWidgets('Widget Test - CounterWidget Arttırma Button Testi', (WidgetTester tester) async {
    // PumpWidget widgetları test edilebilir hale getirir.
    await tester.pumpWidget(const MaterialApp(
      home: CounterWidget(),
    ));

    // UI'da Sayaç: 0 texti var mı onu kontrol ediyoruz.
    expect(find.text('Sayaç: 0'), findsOneWidget);

    // Artırma butonuna tıklıyoruz (increment_button Key ile)
    await tester.tap(find.byKey(const Key('increment_button')));
    
    // UI'nin güncellenmesi için biraz bekliyoruz
    await tester.pump();  // Bu, UI'nin tamamen güncellenmesini bekler

    // UI'da Sayaç: 1 texti var mı onu kontrol ediyoruz.
    expect(find.text('Sayaç: 1'), findsOneWidget);
  });

  testWidgets('Widget Test - CounterWidget Azaltma Button Testi', (WidgetTester tester) async {
    // PumpWidget widgetları test edilebilir hale getirir.
    await tester.pumpWidget(const MaterialApp(
      home: CounterWidget(),
    ));

    // Artırma butonuna tıklıyoruz
    await tester.tap(find.byKey(const Key('increment_button')));
    await tester.pumpAndSettle();  // UI'yi güncelle

    // UI'da Sayaç: 1 metni var mı?
    expect(find.text('Sayaç: 1'), findsOneWidget);

    // Azaltma butonuna tıklıyoruz (decrement_button Key ile)
    await tester.tap(find.byKey(const Key('decrement_button')));
    //.pumpAndSettle uı'ın güncellenmesi için işlemin bitmesini bekler.
    await tester.pumpAndSettle();  // UI'yi güncelle

    // UI'da Sayaç: 0 texti var mı?
    expect(find.text('Sayaç: 0'), findsOneWidget);
  });
}
