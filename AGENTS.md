# Agentic AI Development Instructions

## Required Dependencies
The agent MUST use the following dependencies as defined in `pubspec.yaml`. Do not replace, remove, or upgrade them without explicit permission.

```yaml
dependencies:
  freezed_annotation: ^3.1.0
  json_annotation: ^4.12.0
  path: ^1.9.0
  schemantic: ^1.0.0

dev_dependencies:
  build_runner: ^2.16.2
  freezed: ^4.0.2
  json_serializable: ^6.14.1
  lints: ^6.0.0
  schemantic_builder: ^1.0.0
  test: ^1.25.6
```

## Mandatory Rules

1. **Schemantic**
   - Use `schemantic` for its supported schema definition and related functionality.
   - Use `schemantic_builder` for the code-generation functionality it provides.
   - Follow the package's documented API, annotations, configuration, and generated-file conventions.

2. **Freezed**
   - Use `freezed_annotation` and `freezed` to create immutable data models and union/sealed types where appropriate.
   - Prefer generated equality, copyWith, and other supported Freezed functionality.

3. **JSON Serialization**
   - Use `json_annotation` and `json_serializable` for JSON serialization and deserialization.
   - Generate `fromJson` and `toJson` implementations instead of writing them manually.

4. **Build Runner**
   - Use `build_runner` to execute the applicable code generators: `dart run build_runner build --delete-conflicting-outputs`.

5. **Path**
   - Use the `path` package for portable filesystem path operations when needed.

6. **Code Generation Rules**
   - Treat annotated source files as the source of truth.
   - Never manually edit generated files (`.freezed.dart`, `.g.dart`).

7. **Quality Checks**
   - Run `dart analyze` and `dart test` after implementing changes.
