import 'package:test/test.dart';
import 'package:app/app.dart';

void main() {
  group('Freezed Core Models', () {
    test('Person serialization, deserialization, and copyWith', () {
      const person = Person(
        name: 'Jane Doe',
        email: 'jane@example.com',
        address: PostalAddress(
          streetAddress: '123 Main St',
          addressLocality: 'Tech City',
          addressCountry: 'US',
        ),
      );

      final jsonLd = JsonLdEngine.toJsonLd(person);
      expect(jsonLd['@context'], equals('https://schema.org'));
      expect(jsonLd['@type'], equals('Person'));
      expect(jsonLd['name'], equals('Jane Doe'));
      expect((jsonLd['address'] as Map<String, dynamic>)['streetAddress'], equals('123 Main St'));

      final reconstructed = Person.fromJson(jsonLd);
      expect(reconstructed, equals(person));

      final updated = person.copyWith(email: 'janedoe@example.com');
      expect(updated.email, equals('janedoe@example.com'));
      expect(updated.name, equals('Jane Doe'));
    });

    test('Organization and Product nested model roundtrips', () {
      const product = Product(
        name: 'Smartphone',
        sku: 'SP-100',
        offers: Offer(price: 599.99, priceCurrency: 'USD'),
      );

      final jsonLd = JsonLdEngine.toJsonLd(product);
      expect(jsonLd['@type'], equals('Product'));
      expect(jsonLd['sku'], equals('SP-100'));
      expect((jsonLd['offers'] as Map<String, dynamic>)['price'], equals(599.99));

      final deserialized = Product.fromJson(jsonLd);
      expect(deserialized, equals(product));
    });
  });
}
