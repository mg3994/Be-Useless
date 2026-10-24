# Universal Schema.org Library for Dart

A comprehensive, strongly typed, immutable Dart library that models the official Schema.org vocabulary and seamlessly integrates with JSON-LD, JSON Schema, Schemantic, and Google Genkit.

## Features

- **Full Vocabulary Support**: Loaded from official machine-readable Schema.org definitions (Types, Properties, Enumerations).
- **Multiple Inheritance & Hierarchy Navigation**: Built-in support for multiple parent inheritance, direct/inherited property resolution, and subtype checking.
- **Freezed First**: Immutable models with generated value equality and `copyWith`.
- **JSON-LD Engine**: Full support for `@context`, `@type`, `@id`, `@graph`, language tags, and nested structures.
- **Schemantic Integration**: Adapts Schema.org models into `SchemanticType<T>`.
- **Genkit Integration**: Generates Google Genkit flow input/output schemas and task-specific response projections for structured LLM output.

## Getting Started

```dart
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
  print('JSON-LD: $jsonLd');
}
```
