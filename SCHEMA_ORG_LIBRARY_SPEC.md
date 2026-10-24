# Universal Schema.org Library — Architecture and Implementation Specification

## 1. Mission
Build a comprehensive, reusable Dart library that models the official Schema.org vocabulary and integrates it with JSON Schema, JSON-LD, Schemantic, and Google Genkit.

## 2. Mandatory Technology Stack
- `freezed_annotation` / `freezed`
- `json_annotation` / `json_serializable`
- `schemantic` / `schemantic_builder`
- `path`
- `build_runner`
- `lints`
- `test`

## 3. Core Architectural Principles
1. **Schema.org fidelity**: Machine-readable official definitions are the source of truth.
2. **Freezed first**: Prefer Freezed for immutable Dart data models, value equality, and `copyWith`.
3. **Generated serialization**: Use `json_serializable` for `fromJson`/`toJson` and JSON Schema generation.
4. **Schemantic interoperability**: Bridge compatible models into `SchemanticType<T>`.
5. **Genkit interoperability**: Provide schema objects usable by Genkit's input schemas, output schemas, and structured generation APIs.
6. **JSON-LD Support**: Support `@context`, `@type`, `@id`, `@value`, `@language`, `@graph`, and preserve semantic metadata.
7. **Multiple Inheritance**: Schema.org supports multiple inheritance (e.g. `LocalBusiness` inherits from both `Organization` and `Place`).
