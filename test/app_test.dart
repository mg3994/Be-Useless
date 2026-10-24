import 'package:test/test.dart';
import 'package:app/app.dart';

void main() {
  group('Schema.org Universal Library End-to-End', () {
    test('SchemaRegistry and Person model work together', () {
      final registry = SchemaRegistry.instance;
      expect(registry.hasType('Person'), isTrue);

      const person = Person(name: 'John Doe', email: 'john@example.com');
      final jsonLd = JsonLdEngine.toJsonLd(person);
      expect(jsonLd['@type'], equals('Person'));
      expect(jsonLd['name'], equals('John Doe'));
    });
  });
}
