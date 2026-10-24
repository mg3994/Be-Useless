import 'package:test/test.dart';
import 'package:app/app.dart';

void main() {
  group('Schemantic & Genkit Integration Tests', () {
    test('SchemanticAdapter wraps SchemaEntity', () {
      final adapter = SchemanticAdapter.schemaEntitySchema();

      final entity = SchemaEntity(
        type: 'Event',
        properties: {'name': 'Tech Conference 2026'},
      );

      final serialized = adapter.serialize(entity) as Map<String, dynamic>;
      expect(serialized['@type'], equals('Event'));
      expect(serialized['name'], equals('Tech Conference 2026'));

      final parsed = adapter.parse(serialized);
      expect(parsed.type, equals('Event'));
      expect(parsed.properties['name'], equals('Tech Conference 2026'));
    });

    test('GenkitAdapter produces flow and projection schemas', () {
      final adapter = SchemanticAdapter.schemaEntitySchema();
      final genkitSchema = GenkitAdapter.toGenkitSchema(adapter);

      expect(genkitSchema['type'], equals('object'));

      final projectionSchema = GenkitAdapter.createProjectionSchema(
        typeName: 'Person',
        propertyTypes: {'name': 'string', 'email': 'string'},
        requiredProperties: ['name'],
        description: 'Target schema for extracting person contact details.',
      );

      expect(projectionSchema['type'], equals('object'));
      expect(projectionSchema['required'], contains('name'));

      final props = projectionSchema['properties'] as Map<String, dynamic>;
      final emailProp = props['email'] as Map<String, dynamic>;
      expect(emailProp['type'], equals('string'));
    });
  });
}
