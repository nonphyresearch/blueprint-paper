<!--
Published in IPFS space: blueprint-paper
Root CID: bafybeibc3ygvkddgiiyey4xgfji4hxknvccbzn5dhcqq5624o63kor74ke
DID: did:key:z6MkocLbny2mgyCSoqTNMLv3tPcS3HqNQwuJhJrXSDHFddXQ
-->
# RFC: Blueprint Paper Specification

**Document ID:** SPEC-000-001-001  
**Title:** Blueprint Paper Standard — Structured Theories in Non Phy  
**Version:** 1.4  
**Status:** Active  
**Author:** Roberto Bertó  
**Last Updated:** 2025-07-28

---

## 0. Introduction

This document specifies the format for a Blueprint Paper, which is a structured document type designed to support the analysis of falsifiability, ontological bases, theoretical structures, epistemological registration, and taxonomic organization within the Non Phy framework. The format provides a set of required sections and entity modules to ensure that theories are presented in a modular manner, with explicit definitions, relationships, and rules for validation paths. This specification defines the components, their contents, and the rules for compliance to facilitate consistent implementation.

---

## 1. Scope

This specification defines the structure, components, and required fields for a Blueprint Paper. A Blueprint Paper is a document format that organizes theoretical content into modular entities, each with unique identifiers, descriptions, and relationships. It includes mechanisms for falsifiability testing, ontological definitions, and taxonomic mapping to support epistemological and theoretical analysis.

---

## 2. Terminology

The following terms are used in this specification. Each term is defined with its meaning and, where applicable, its role in the Blueprint Paper structure.

| Term                | Definition                                                                 |
|---------------------|----------------------------------------------------------------------------|
| **Blueprint Paper** | A document that structures theoretical content using modular entities, including ontological bases, equations, and falsifiability paths. |
| **Entity ID**       | A unique identifier for a module, in the form TYPE-XXX-XXX-XXX, where TYPE is the entity type (e.g., ONTO), and XXX-XXX-XXX is a numeric sequence. |
| **ONTO**            | Ontological base module that defines foundational entities, their types, descriptions, variables, causal roles, and connections. |
| **THEO**            | Theory structure module that integrates ONTO and EQUA modules into a coherent system, including causal flow narratives. |
| **EQUA**            | Equation module that provides symbolic expressions of dynamics, with variables, domains, and relations to other modules. |
| **MATH**            | Derivation module that includes logical steps, assumptions, and proofs supporting EQUA or CONS modules. |
| **FATE**            | Falsifiability module that specifies predictions, test methods, and results for validating or rejecting theoretical components. |
| **EXPM**            | Experimental measured module that validates using existing data, with sources, metrics, and relations to FATE. |
| **EXPP**            | Experimental proposed module that outlines future experiments, with designs and relations to FATE. |
| **CONS**            | Constants module that lists derived or open constants, with links to MATH or EQUA. |
| **EMER**            | Emergent cluster module that groups related theories or equations sharing causal frontiers. |
| **Taxonomic Structure** | A required table and JSON representation that lists all entities with IDs, descriptions, relations, and statuses. |
| **Validation Status** | A designation for the document's state, such as DRAFT (initial), PENDING (after initial review and FATE execution), or CONFIRMED (after verification). |
| **Versioning**      | The process of assigning semantic versions (e.g., v1.0.3) to track changes in the Blueprint Paper. |
| **DOI**             | Digital Object Identifier optionally assigned to versions for public reference. |

---

## 3. Required Sections

Each Blueprint Paper must include the sections listed below in the specified order. No section may be omitted; if a section has no applicable content, it must be included with the declaration "N/A" followed by an explanation of why it is not applicable. Each section must specify its content requirements, including any modular entities.

The Blueprint Paper must begin with a YAML front-matter block defining metadata. The required YAML schema is as follows:

```yaml
---
paperId: [Unique Paper ID, e.g., BP-000-001-001]
version: [Semantic Version, e.g., v1.0.3]
title: [Full Title of the Blueprint Paper]
authors:
  - name: [Author Name]
    affiliation: [Optional Affiliation]
lastUpdated: [ISO 8601 Timestamp, e.g., 2025-07-28T12:00:00Z]
status: [Validation Status, e.g., PENDING]
doi: [Optional DOI]
---
```

Guidelines for Implementation: Place this YAML at the top of the Markdown file. Ensure all fields are populated except optional ones.

### 3.1 Abstract
- Provide a concise summary of the theory, including the central equation, ontological base, and significance for falsifiability or epistemological analysis.
- Guidelines for Implementation: Limit to 150-250 words. Include references to key entity IDs (e.g., EQUA-000-001-001).

### 3.2 Introduction
- Describe the contextual background and scope of the model, including the theoretical domain and objectives for ontological or taxonomic registration.
- Guidelines for Implementation: Explain the purpose in relation to falsifiability and epistemological needs. Include any preliminary assumptions with references to ONTO modules.

### 3.3 Motivation
- Identify the theoretical or empirical gap addressed, specifying how the Blueprint Paper supports analysis of falsifiability, ontology, or taxonomy.
- Guidelines for Implementation: Provide specific examples of limitations in existing approaches that necessitate this structure.

### 3.4 Related Work
- Summarize existing theories or models relevant to the topic, detailing how the proposed structure differs in terms of ontological definitions, falsifiability paths, or taxonomic organization.
- Guidelines for Implementation: Use citations in a standard format (e.g., [Author Year]). Include a table if more than five references are listed, with columns for Reference, Key Concept, and Relation to This Work.

### 3.5 Ontological Base (ONTO)
- Define one or more ONTO modules as foundational entities.
- Each ONTO module must include:
  - ID (e.g., ONTO-000-001-001)
  - Name
  - Type (e.g., primitive, derived)
  - Description
  - Variables
  - Causal role
  - Connections to other entities
- Guidelines for Implementation: List modules in a table with the above fields. Ensure all ONTOs are causally grounded without external postulates.

### 3.6 Theory Structure (THEO)
- Define the main model integrating ONTO and EQUA modules.
- Each THEO module must include:
  - ID (e.g., THEO-000-001-001)
  - List of used ONTO and EQUA modules (strong and auxiliary)
  - Causal flow narrative
- Guidelines for Implementation: Provide a diagram or list of relationships. Specify how the structure supports epistemological registration.

### 3.7 Equations (EQUA)
- Provide symbolic definitions of relationships or dynamics.
- Each EQUA module must include:
  - ID (e.g., EQUA-000-001-001)
  - Mathematical form
  - Variables and domains
  - Relation to ONTO, THEO, FATE
- Guidelines for Implementation: Ensure at least one FATE per EQUA. Use LaTeX or plain text for expressions.

### 3.8 Derivations (MATH)
- Provide logical or symbolic derivations supporting EQUA or CONS.
- Each MATH module must include:
  - ID (e.g., MATH-000-001-001)
  - Step-by-step proof
  - Assumptions or simplifications
- Guidelines for Implementation: Number steps sequentially. Link to related EQUA or CONS.

### 3.9 Falsifiability (FATE)
- Provide at least one FATE module per EQUA or THEO.
- Each FATE module must include:
  - ID (e.g., FATE-000-001-001)
  - Prediction
  - Method of test (logical, simulation, experimental)
  - Result/status (CONFIRMED, REFUTED, NOT DISTINCT, OPEN)
- Guidelines for Implementation: List in a table with columns for ID, Prediction, Method, Result/Status. Specify criteria for each status: "Deve incluir ao menos um teste por EQUA, com método simulatório se experimental for inacessível."

### 3.10 Experimental Modules
- Include EXPM for validations using known data and EXPP for proposals.
- Each EXPM or EXPP module must include:
  - ID (e.g., EXPM-000-001-001)
  - Description
  - Source or design
  - Metrics
  - Relation to FATE
- Guidelines for Implementation: Separate EXPM and EXPP subsections. For EXPM, cite data sources; for EXPP, detail protocols.

### 3.11 Constants (CONS)
- List constants that are derived, required, or open.
- Each CONS module must include:
  - ID (e.g., CONS-000-001-001)
  - Value (if derived)
  - Link to MATH or EQUA
- Guidelines for Implementation: Use a table with columns for ID, Value, Origin, Status (derived/open).

### 3.12 Taxonomic Structure
- Provide a table listing all entities (ONTO, THEO, EQUA, FATE, etc.) with:
  - ID
  - Name
  - Description
  - Relations (e.g., 1:n → THEO)
  - Status
- Guidelines for Implementation: Use the following template table:

| ID                  | Name                  | Description                          | Relations                  | Status     |
|---------------------|-----------------------|--------------------------------------|----------------------------|------------|
| [Entity ID]         | [Entity Name]         | [Brief Description]                  | [Relations List]           | [Status]   |

Ensure all entities are included.

#### 3.12.1 JSON Representation (Mandatory for Import)
- Include a JSON object representing the taxonomic structure for machine-readable importation.
- Guidelines for Implementation: Embed the JSON as a code block. Refer to Appendix A for the full schema definition.

### 3.13 Discussion
- Compare with existing models and discuss implications for ontological, theoretical, or taxonomic aspects.
- Guidelines for Implementation: Reference EMER clusters if applicable. Include limitations and potential extensions.

### 3.14 Conclusion
- Summarize outcomes, epistemological insights, and remaining questions.
- Guidelines for Implementation: Reference key entities and suggest future work.

### 3.15 References
- List sources, simulations, or literature used.
- Guidelines for Implementation: Use a consistent format (e.g., Author. (Year). Title. Source. DOI/URL). Number entries sequentially. For digital citations, prefix with "doi:" for DOIs (e.g., doi:10.1234/example) or "id:" for internal identifiers (e.g., id:BP-REF-001).

### 3.16 Acknowledgments
- Optionally list contributors or resources.
- Guidelines for Implementation: Keep concise; omit if not applicable.

---

## 4. Format
- Write in Markdown (.md) format.
- Use YAML front-matter for metadata (as defined in Section 3).
- Export to machine-readable formats (e.g., JSON) as specified in appendices.
- Embed figures, tables, or code snippets in relevant sections, with captions including entity IDs (e.g., "Figure 1: Causal Flow for THEO-000-001-001").
- Guidelines for Implementation: Ensure indentation and formatting are consistent. For equations, use inline or display math syntax.

---

## 5. Validation
- Submit each Blueprint Paper for validation.
- States:
  - DRAFT: Initial submission.
  - PENDING: After review and execution of at least one FATE with status CONFIRMED or NOT DISTINCT.
  - CONFIRMED: After verification through consistent EXPM or simulations aligning with predictions, requiring at least one FATE with status CONFIRMED.
- Guidelines for Implementation: If REFUTED, update the version while maintaining ontological coherence. Track changes in versioning. Validation may involve a repository system for endpoint submission and standardized checks.

---

## 6. Versioning and DOI
- Assign semantic versions (e.g., v1.0.3: major.minor.patch).
- Optionally assign a DOI to each version for reference.
- Guidelines for Implementation: Increment major for structural changes, minor for additions, patch for corrections.

---

## 7. Exceptions
- No section may be omitted. If content is not applicable, declare "N/A" and provide an explanation (e.g., "N/A: No constants derived in this model").

---

## 8. Compliance
- A document claiming Blueprint Paper status must fulfill all sections and guidelines. Non-compliance invalidates the document under this specification.

---

## 9. Conformance and Extensions
- Conformance requires adherence to all required sections, entity formats, and guidelines.
- Extensions for specific domains must maintain mandatory elements (e.g., FATE) and document additions.
- Guidelines for Implementation: For extensions, add a subsection in Discussion detailing modifications. Ensure compatibility with taxonomic structures.

Appendix A: JSON Taxonomic Schema [To Be Defined]

---

**Change Log**  
- v1.4: Added explicit reference to mandatory JSON in Section 3.12 with subsection 3.12.1; reinforced CONFIRMED status requirements in Section 5; added mention of digital citation prefixes in Section 3.15; defined YAML front-matter schema in Section 3 introduction; generalized validation system reference.

**End of Specification**

