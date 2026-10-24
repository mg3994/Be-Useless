import 'package:test/test.dart';
import 'package:app/app.dart';

void main() {
  group('SchemaRegistry Vocabulary Tests', () {
    final registry = SchemaRegistry.instance;

    test('Loads official Schema.org types, properties, and enum members', () {
      expect(registry.hasType('Person'), isTrue);
      expect(registry.hasType('Organization'), isTrue);
      expect(registry.hasType('Thing'), isTrue);
      expect(registry.hasType('Event'), isTrue);
      expect(registry.hasType('Product'), isTrue);

      final person = registry.getType('Person');
      expect(person, isNotNull);
      expect(person!.name, equals('Person'));
      expect(person.parents, contains('Thing'));
    });

    test('Supports multiple inheritance', () {
      final parents = registry.getParents('LocalBusiness');
      expect(parents, isNotEmpty);
      final parentNames = parents.map((p) => p.name).toList();
      expect(parentNames, contains('Organization'));
      expect(parentNames, contains('Place'));
    });

    test('Resolves properties and ancestor hierarchy correctly', () {
      final ancestors = registry.getAncestors('Person');
      expect(ancestors.map((a) => a.name), contains('Thing'));

      final personProps = registry.getPropertiesForType('Person');
      final propNames = personProps.map((p) => p.name).toList();
      expect(propNames, contains('givenName'));
      expect(propNames, contains('name')); // inherited from Thing
    });

    test('Subtype relationship checks', () {
      expect(registry.isSubtypeOf('Person', 'Thing'), isTrue);
      expect(registry.isSubtypeOf('LocalBusiness', 'Organization'), isTrue);
      expect(registry.isSubtypeOf('LocalBusiness', 'Place'), isTrue);
    });
  });
}
