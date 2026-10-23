You're right. You need a proper Markdown instruction file that explicitly tells the agentic AI to use your exact packages and versions, especially schemantic and schemantic_builder, rather than substituting other tools.

Writing

Agentic AI Development Instructions

Required Dependencies

The agent MUST use the following dependencies and versions as defined in pubspec.yaml. Do not replace, remove, or upgrade them without explicit permission.

dependencies: freezed_annotation: ^3.1.0 json_annotation: ^4.12.0 path: ^1.9.0 schemantic: ^1.0.0 dev_dependencies: build_runner: ^2.16.2 freezed: ^4.0.2 json_serializable: ^6.14.1 lints: ^6.0.0 schemantic_builder: ^1.0.0 test: ^1.25.6 

Mandatory Rules

1. Schemantic

Use schemantic for its supported schema definition and related functionality.

Use schemantic_builder for the code-generation functionality it provides.

Follow the package's documented API, annotations, configuration, and generated-file conventions.

Inspect the installed package documentation and existing project examples before implementing schema definitions.

Do not substitute another schema-generation package or invent APIs, annotations, or CLI commands.

Integrate Schemantic with the existing code-generation workflow wherever supported.

2. Freezed

Use freezed_annotation and freezed to create immutable data models and union/sealed types where appropriate.

Prefer generated equality, copyWith, and other supported Freezed functionality instead of manually implementing boilerplate.

Use the Freezed JSON integration when a model requires serialization.

Follow the API and syntax supported by the installed Freezed version.

3. JSON Serialization

Use json_annotation and json_serializable for JSON serialization and deserialization.

Generate fromJson and toJson implementations instead of writing them manually when supported.

Use @JsonKey and other documented annotations for field mappings, defaults, nullability, and custom serialization behavior.

Ensure JSON models match the actual API or data schema.

4. Build Runner

Use build_runner to execute the applicable code generators.

When annotated source files change, regenerate the corresponding generated code.

Use the following command when supported by the configured builders:

dart run build_runner build --delete-conflicting-outputs 

Verify that Freezed, JSON Serializable, and Schemantic builders are discovered and execute correctly.

If a builder fails or is incompatible, investigate and report the actual error rather than silently skipping generation.

5. Path

Use the path package for portable filesystem path operations when needed.

Prefer its documented utilities over manual path concatenation.

Do not introduce unnecessary path operations when Dart or Flutter APIs already provide the required functionality.

6. Code Generation Rules

Treat annotated source files as the source of truth.

Never manually edit generated files.

Preserve the project's established naming conventions and generated-file structure.

Do not assume that all builders use the same annotations or output conventions.

Inspect package documentation and the existing project before creating new abstractions or generator configurations.

Avoid duplicate implementations when a generator already provides the required functionality.

7. Quality Checks

After implementing changes:

Resolve dependencies when necessary.

Run the configured code-generation command.

Review generator output and resolve errors.

Run static analysis:

dart analyze 

Run tests:

dart test 

Verify that all generated files are consistent with their source files.

Report commands executed, results, and any unresolved issues.

Final Requirement

Always prefer the project's specified packages and their supported code-generation capabilities over manually written boilerplate or alternative libraries.

Before implementing any feature, inspect the repository, pubspec.yaml, package APIs, builder configuration, and existing conventions. Use the exact dependency constraints provided above, generate code through the configured builders, and never claim that generation or tests succeeded unless they were actually executed successfully.

Save it as AGENTS.md or AGENT_INSTRUCTIONS.md in your project root.

One important detail: the instructions deliberately require the agent to verify the schemantic API instead of guessing how it works. That ensures it uses your actual package rather than accidentally substituting a similarly named library.

The next file should define the architecture and implementation requirements for a universal Schema.org library, using Freezed as the preferred model layer, json_serializable to generate JSON Schema, and schemantic to bridge those models into Genkit-compatible schemas.

The key design principle is that Schema.org is the source of semantic definitions—not merely a collection of Dart classes. The library should cover the vocabulary, type hierarchy, properties, enumerations, and relationships while preserving compatibility with JSON-LD and Genkit.

Writing

Universal Schema.org Library — Architecture and Implementation Specification

1. Mission

Build a comprehensive, reusable Dart library that models the official Schema.org vocabulary and integrates it with JSON Schema, JSON-LD, Schemantic, and Google Genkit.

The library must provide a strongly typed, immutable, extensible representation of Schema.org definitions while supporting serialization, validation, schema generation, structured AI output, and Genkit flows.

This must be designed as a universal Schema.org library, not merely a collection of hand-written models for common types such as Person, Organization, and Product.

The implementation must prioritize correctness against the official Schema.org vocabulary and preserve its semantic meaning across every supported representation.

2. Mandatory Technology Stack

Use the following existing dependencies and respect the project's configured versions.

Runtime dependencies

freezed_annotation — annotations for immutable models and union types.

json_annotation — JSON serialization and JSON Schema generation annotations.

schemantic — runtime schema abstractions, typed parsing, serialization, and integration with Genkit.

path — portable filesystem path manipulation when required.

Development dependencies

freezed — generates immutable model implementations.

json_serializable — generates serialization code and JSON Schema definitions.

schemantic_builder — generates Schemantic models and schemas according to its supported API.

build_runner — orchestrates code generation.

lints — enforces Dart coding conventions.

test — provides automated testing.

Do not replace these packages with alternatives without explicit approval. Do not add unnecessary dependencies or change the existing dependency constraints without justification.

3. Architectural Principles

Follow these principles throughout the implementation:

Schema.org fidelity: Official Schema.org definitions are the source of truth for vocabulary metadata and semantics.

Freezed first: Prefer Freezed for immutable Dart data models, value equality, copyWith, and supported union types.

Generated serialization: Use json_serializable rather than manually implementing repetitive JSON serialization.

Generated JSON Schema: Enable createJsonSchema: true wherever supported by the model and generator combination.

Schemantic interoperability: Bridge compatible generated JSON Schemas into SchemanticType<T> using documented APIs.

Genkit interoperability: Provide schema objects usable by Genkit's input schemas, output schemas, and structured generation APIs.

Standards separation: Do not confuse Schema.org vocabulary definitions, JSON Schema validation definitions, and JSON-LD serialization.

Generated vocabulary: Generate the large vocabulary from official machine-readable definitions rather than manually maintaining hundreds of unrelated classes.

Extensibility: Support new Schema.org releases and custom vocabulary extensions without redesigning the core.

No invented APIs: Inspect the installed package APIs and actual generated output before implementing integrations.

4. Schema.org Vocabulary Coverage

Aim to cover the complete current Schema.org vocabulary, including official extensions and relevant enumeration members.

The exact coverage must be determined from the official vocabulary release used by the project. Do not hard-code counts or assume that the vocabulary is static.

4.1 Types

Represent every supported Schema.org type, including all those stuffs that are defined in schema org fetch the latest definations.

Other types and subtypes present in the official vocabulary.

These are examples, not a complete list.

Preserve each type's:

Canonical Schema.org identifier.

Human-readable name.

Definition and description.

Parent types and inherited properties.

Applicable properties and their metadata.

Source vocabulary or extension.

Deprecation or supersession information, when provided.

4.2 Properties

Represent official properties and preserve:

Canonical property identifier.

Description.

Declared domain types.

Declared range types.

Inverse property relationships, where defined.

Super-property relationships, where defined.

Expected value types and applicable constraints.

Source and status metadata when available.

Do not assume a property belongs to only one domain or has only one range.

Do not treat every Schema.org property as mandatory. Schema.org does not generally define properties as required in the way a conventional application DTO might.

4.3 Enumerations

Cover official enumeration types and their members.

Preserve canonical identifiers, descriptions, and vocabulary relationships. Do not discard unknown enumeration values when interoperability with newer vocabulary releases is required.

4.4 Multiple Inheritance

Schema.org supports multiple inheritance.

The implementation must not assume that every type has exactly one parent. Model parent relationships as collections and preserve the original vocabulary hierarchy.

Property inheritance and applicability must account for all relevant parent types.

5. Source of Truth and Vocabulary Generation

Use official machine-readable Schema.org vocabulary files as the source for the generated vocabulary.

Reference:

Schema.org developer resources

Schema.org data model

Schema.org schemas and type hierarchy

Implementation requirements:

Identify the authoritative vocabulary release and supported extensions.

Prefer the official machine-readable RDF/Turtle definitions or other suitable official release artifacts.

Parse type, property, enumeration, hierarchy, and relationship metadata.

Normalize the definitions into a deterministic intermediate representation.

Generate the required Dart models, metadata registries, and supported schema artifacts.

Preserve canonical identifiers and source definitions.

Record the vocabulary version or release used to generate the library.

Make regeneration reproducible and reviewable.

Add consistency checks to detect missing types, properties, and relationships.

Support future vocabulary updates without manually rewriting the entire library.

Do not derive the entire vocabulary solely from JSON Schema. JSON Schema does not contain all the semantic information expressed by Schema.org.

Do not copy incomplete lists of types from examples or documentation and claim full coverage.

6. Freezed Model Design

Freezed is the preferred model layer for immutable Dart objects.

Use it for models that represent vocabulary definitions, schema metadata, structured data entities, and other appropriate domain objects.

Prefer:

Immutable fields.

Generated value equality.

Generated copyWith.

Supported union types for genuinely distinct variants.

Generated JSON serialization where appropriate.

Explicit conversion between domain models and wire formats.

Avoid manually implementing repetitive equality, copying, serialization, or model boilerplate.

6.1 Model responsibilities

Keep these concepts separate:

Vocabulary definition models: describe Schema.org types, properties, enumerations, and their metadata.

Structured data models: represent instances such as a person, product, or event.

JSON Schema models: describe structural validation constraints.

JSON-LD representations: encode semantic data using JSON-LD conventions.

Genkit/Schemantic adapters: bridge typed Dart models and supported runtime schema abstractions.

Do not collapse all these responsibilities into one universal class.

6.2 Freezed and JSON Schema generation

Use the following pattern as the architectural target, adapting the implementation to the actual capabilities of the installed package versions:
for example 
import 'package:freezed_annotation/freezed_annotation.dart'; import 'package:json_annotation/json_annotation.dart'; import 'package:schemantic/schemantic.dart'; part 'person.freezed.dart'; part 'person.g.dart'; @freezed @JsonSerializable(createJsonSchema: true) abstract class Person with _$Person { const factory Person({ required String firstName, required String lastName, }) = _Person; factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json); } 

This snippet expresses the desired architecture; it is not a guarantee that the combined annotations and generated members work unchanged with every package version.

Before adopting it:

Verify the supported Freezed syntax.

Verify whether createJsonSchema: true can be applied to the chosen Freezed declaration.

Verify the actual generated JSON Schema symbol and its type.

Resolve any generator compatibility issues using documented APIs.

Add a compiling, tested example to the repository.

If the combination cannot generate the desired JSON Schema directly, use a documented, maintainable adapter or a separate serialization model. Keep Freezed as the preferred domain-model approach.

Never invent generated symbol names or manually maintain generated output.

7. JSON Schema and Schemantic Integration

The library should expose a consistent integration layer for compatible Dart models.

Use json_serializable to generate JSON Schema where supported and schemantic to bridge that schema into a typed runtime abstraction.

The intended pattern is:

static final schema = SchemanticType.from<Person>( jsonSchema: Person.jsonSchema, parse: (json) => Person.fromJson( json as Map<String, dynamic>, ), serialize: (person) => person.toJson(), ); 

Treat this as a conceptual integration pattern. Adapt the actual declarations and types to the generated code and installed package APIs.

Requirements:

Preserve typed parsing and serialization.

Avoid duplicating JSON Schema definitions unnecessarily.

Ensure parsing and serialization round-trip correctly.

Handle nested objects and collections.

Preserve nullability and supported defaults.

Verify validation behavior against the generated JSON Schema.

Document any differences between JSON Schema validation and Schema.org semantics.

Keep schema generation deterministic.

Do not claim full standards compliance merely because a JSON Schema was generated.

The schema integration layer must remain reusable across different Schema.org types rather than being implemented independently for every model.

8. JSON-LD Support

JSON-LD is essential to the library's Schema.org interoperability.

Support canonical Schema.org identifiers and the JSON-LD keywords required by the chosen serialization features, including:

@context

@type

@id

@value

@language

@list

@graph and many more ....

Support other applicable JSON-LD constructs when needed by the supported data model and conformance requirements.

Do not force every JSON-LD keyword into every entity model. Represent applicable metadata at the correct abstraction level.

Requirements:

Use https://schema.org as the canonical context for standard Schema.org data.

Preserve identifiers and type IRIs.

Distinguish ordinary text values from URLs and references.

Support nested Schema.org entities.

Support multiple values for properties.

Preserve ordered collections where order is semantically significant.

Provide explicit serialization and parsing boundaries.

Avoid converting all entity relationships into untyped strings.

Preserve unknown properties when forward compatibility is required.

Do not confuse a generated JSON Schema document with a JSON-LD document. They serve different purposes.

9. Schema.org Semantics Versus JSON Validation

The library must preserve the distinction between vocabulary semantics and structural validation.

Schema.org defines types, properties, relationships, and expected value ranges. It generally allows flexible, incomplete data and does not impose a universal set of mandatory properties.

JSON Schema describes structural constraints such as types, required fields, formats, and allowed values.

Therefore:

Do not automatically mark every Schema.org property as required.

Do not turn every declared range into an exclusive JSON Schema restriction.

Account for multiple declared ranges and domain types.

Allow supported text and URL representations where Schema.org's data model permits them.

Treat stricter application validation as an explicit, separate policy.

Preserve vocabulary metadata even when it cannot be expressed directly in JSON Schema.

Do not assume that a valid JSON Schema instance is necessarily semantically complete or correct according to Schema.org.

Provide separate mechanisms for structural validation and optional semantic checks.

10. Genkit Integration

The library must support Google Genkit's Dart ecosystem through Schemantic and other documented integration points.

Reference: Genkit Dart flows and schemas.

Provide a consistent way to use compatible model schemas for:

Flow input schemas.

Flow output schemas.

Structured model generation.

Typed parsing of generated responses.

Serialization of model output.

Reusable schema definitions across application boundaries.

Prefer defining the data model once and reusing the generated schema and adapters rather than maintaining separate definitions for every consumer.

Integration requirements

Use the documented Genkit and Schemantic APIs.

Verify compatibility with Genkit's supported schema type.

Keep Genkit-specific code in a dedicated integration layer.

Avoid coupling core Schema.org models directly to Genkit internals.

Preserve a path to use the library without Genkit.

Clearly document when a Schema.org model is too broad or recursive for a particular model provider's structured-output constraints.

Support purpose-specific output schemas when necessary, without corrupting the canonical Schema.org definition.

The library must not assume that every Schema.org type can be passed directly to every AI model provider as an unrestricted JSON Schema. Provider constraints may require a derived, narrower output schema.

11. Canonical Vocabulary Versus Application Models

Do not assume that a canonical Schema.org definition and an AI response model have identical requirements.

For example, the canonical Person vocabulary supports a broad set of properties and relationships. A particular Genkit operation may need only a person's name and email address.

Support a distinction between:

Canonical Schema.org vocabulary definitions.

Reusable typed entity representations.

Task-specific AI input and output schemas.

Serialization and validation policies.

Do not mutate canonical definitions to satisfy a particular model provider.

When a restricted AI schema is required, create an explicit derived schema or projection and document the restrictions.

12. Architecture and Project Organization

Use a modular structure similar to the following, adapting it to the existing repository:

lib/ src/ vocabulary/ models/ registry/ metadata/ extensions/ entities/ models/ serialization/ json_schema/ models/ generation/ validation/ json_ld/ models/ serialization/ parsing/ schemantic/ adapters/ genkit/ adapters/ integrations/ generation/ intermediate_representation/ generators/ utilities/ schema_org.dart 

This is a suggested logical layout, not a requirement to create empty directories. Use actual files and modules as functionality is implemented.

Keep generated vocabulary artifacts separate from handwritten runtime infrastructure where practical.

Avoid circular dependencies between the core vocabulary, serialization layers, and Genkit integration.

13. Code Generation Workflow

Use build_runner for the configured generators.

After modifying annotated source files, run:

dart run build_runner build --delete-conflicting-outputs 

Then run:

dart analyze dart test 

For vocabulary generation, provide a separate documented command or task if the official vocabulary import and Dart code generation require a dedicated pipeline.

Requirements:

Confirm that all expected builders are discovered.

Verify that the expected generated files exist.

Do not assume a successful build means the complete Schema.org vocabulary was generated.

Never manually edit .freezed.dart, .g.dart, or other generated artifacts.

Check in generated artifacts according to the repository's established policy.

Report failures instead of silently skipping generation.

14. Testing and Conformance

Testing must cover both implementation correctness and vocabulary completeness.

Unit tests

Freezed model equality and copying.

JSON serialization and deserialization.

JSON Schema generation.

Schemantic parsing and serialization.

Nested entity handling.

Nullability and default values.

JSON-LD keyword preservation.

Multiple values and collections.

Unknown properties and enumeration values where supported.

Vocabulary tests

Every imported type has a canonical identifier.

Parent type relationships are preserved.

Multiple inheritance is represented correctly.

Properties retain their domain and range declarations.

Enumeration members are retained.

Official vocabulary metadata is not silently discarded.

Regeneration produces stable, reviewable output.

Integration tests

Model-to-JSON-to-model round trips.

Model-to-Schemantic parsing and serialization.

JSON Schema validation.

Genkit flow input and output integration.

Supported structured-generation workflows.

Use official vocabulary fixtures and carefully chosen reference examples.

Do not claim complete Schema.org conformance without automated checks against the selected official vocabulary release and the declared support scope.

15. Versioning and Extensibility

The library must support future Schema.org vocabulary releases.

Record the imported vocabulary version.

Make vocabulary updates reproducible.

Preserve canonical identifiers when definitions change.

Track deprecations and superseded terms when available.

Support official extensions and custom vocabularies through explicit extension mechanisms.

Preserve unknown data where forward compatibility is required.

Avoid breaking changes to public Dart APIs without a deliberate migration plan.

Keep Schema.org release versioning separate from Dart package versioning.

16. Implementation Strategy

Implement incrementally in the following order:

Inspect the repository, dependencies, generated code, and existing conventions.

Establish the canonical vocabulary import and intermediate representation.

Design Freezed-based metadata models.

Verify JSON Schema generation and Schemantic integration with a minimal compiling example.

Implement JSON-LD representation and serialization boundaries.

Build the vocabulary registry and code-generation pipeline.

Integrate Genkit through documented schema APIs.

Expand vocabulary coverage to all terms in the selected official release and supported extensions.

Add automated conformance, round-trip, and integration tests.

Document supported features, limitations, regeneration commands, and release updates.

Do not begin by hand-writing hundreds of models. Prove the generation pipeline and integration architecture first, then scale the vocabulary coverage.

17. Definition of Done

The library is not complete merely because a few example classes compile.

A release must provide:

A documented official Schema.org vocabulary source and version.

Reproducible vocabulary generation.

Coverage reporting for types, properties, and enumeration members.

Freezed-based immutable models where appropriate.

Generated JSON serialization.

JSON Schema generation where supported.

Schemantic adapters with tested round-trip behavior.

JSON-LD interoperability for the declared support scope.

Genkit integration examples and automated tests.

Correct handling of multiple inheritance and property domains/ranges.

A clear distinction between canonical vocabulary semantics and strict validation.

Successful static analysis and relevant tests.

Documentation of limitations and unsupported constructs.

Final Non-Negotiable Rule

Build a standards-driven, generated, universal Schema.org library—not a manually maintained collection of AI schemas.

Use Freezed as the preferred immutable model layer, json_serializable for supported generated serialization and JSON Schema, schemantic for runtime schema integration, and Genkit adapters for AI workflows.

Keep Schema.org vocabulary semantics canonical, JSON-LD interoperable, JSON Schema structurally accurate, and AI-specific restrictions explicit. Verify every package integration against its real API, and never sacrifice standards fidelity for a convenient but incorrect model.

Why this design matters

Three requirements are especially important:

Complete vocabulary, not just popular entities. Schema.org has a large, evolving vocabulary with multiple inheritance and properties that can apply to multiple types. Generate the definitions from official source data rather than manually creating classes. 

￼

schema.org

+2

Freezed and JSON Schema must work together in practice. Your desired SchemanticType.from<T> bridge is supported by Schemantic, and json_serializable supports generated JSON Schema. The agent must still verify that your exact Freezed and generator versions work together before adopting the combined annotation pattern. 

￼

Dart package

+1

Genkit should be an integration layer, not the foundation of the vocabulary. That lets your library retain its value for JSON-LD, validation, and other consumers even when a particular AI provider imposes stricter schema constraints. 

￼

Genkit

+1

Save this as SCHEMA_ORG_LIBRARY_SPEC.md in your repository. It is intended to be the main architectural specification that your agent follows while implementing the library.


