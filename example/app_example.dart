import 'package:app/app.dart';

void main() {
  final registry = SchemaRegistry.instance;
  final personType = registry.getType('Person');
  print('Loaded Schema.org type: ${personType?.name}');

  const person = Person(
    name: 'Jane Doe',
    email: 'jane@example.com',
    address: PostalAddress(
      streetAddress: '123 Main St',
      addressLocality: 'Tech City',
    ),
  );

  final jsonLd = JsonLdEngine.toJsonLd(person);
  print('JSON-LD output: $jsonLd');
}
