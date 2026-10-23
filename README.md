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

