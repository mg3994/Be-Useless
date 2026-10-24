import 'package:test/test.dart';
import 'package:app/app.dart';

void main() {
  group('JSON-LD Engine Tests', () {
    test('Serializes and parses JSON-LD entities', () {
      final entity = SchemaEntity(
        type: 'Person',
        id: 'https://example.com/person/1',
        properties: {
          'name': 'Alice',
          'jobTitle': 'Engineer',
        },
      );

      final jsonLdMap = JsonLdEngine.toJsonLd(entity);
      expect(jsonLdMap['@context'], equals('https://schema.org'));
      expect(jsonLdMap['@type'], equals('Person'));
      expect(jsonLdMap['@id'], equals('https://example.com/person/1'));
      expect(jsonLdMap['name'], equals('Alice'));

      final parsed = JsonLdEngine.parseJsonLd(jsonLdMap);
      expect(parsed.type, equals('Person'));
      expect(parsed.properties['name'], equals('Alice'));
    });

    test('Parses JSON-LD @graph structures', () {
      final graphJson = {
        '@context': 'https://schema.org',
        '@graph': [
          {
            '@type': 'Person',
            '@id': 'p1',
            'name': 'Bob',
          },
          {
            '@type': 'Organization',
            '@id': 'o1',
            'name': 'Acme Corp',
          }
        ]
      };

      final entities = JsonLdEngine.parseGraph(graphJson);
      expect(entities.length, equals(2));
      expect(entities[0].type, equals('Person'));
      expect(entities[0].properties['name'], equals('Bob'));
      expect(entities[1].type, equals('Organization'));
      expect(entities[1].properties['name'], equals('Acme Corp'));
    });
  });
}
