import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/waiting_room_card.dart';
 

void main() {
  testWidgets('WaitingRoomCard displays the name correctly', (WidgetTester tester) async {
    
    await tester.pumpWidget(
      const MaterialApp(
        home: WaitingRoomCard(name: 'Alice'),
      ),
    );

   
    expect(find.text('Hello,'), findsOneWidget);
    expect(find.text('Alice'), findsOneWidget);
  });
}
