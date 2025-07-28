<!--
Published in IPFS space: blueprint-paper
Root CID: bafybeibc3ygvkddgiiyey4xgfji4hxknvccbzn5dhcqq5624o63kor74ke
DID: did:key:z6MkocLbny2mgyCSoqTNMLv3tPcS3HqNQwuJhJrXSDHFddXQ
-->
# RFC: Blueprint Paper Specification — Appendix A

**Document ID:** SPEC-000-001-001-APP-A  
**Title:** Blueprint Paper Standard — JSON Taxonomic Schema for Entity Representation  
**Version:** 1.0  
**Status:** Active  
**Author:** Roberto Bertó  
**Last Updated:** 2025-07-28

---

## A.1 Scope

This appendix defines the mandatory JSON format for representing the taxonomic structure of entities in a Blueprint Paper. The JSON must be included at the end of every Blueprint Paper to enable machine-readable importation into technology systems for epistemological registration, taxonomic analysis, and graph-based querying. It captures all entities, their attributes, and relationships without reliance on inference, ensuring complete and unambiguous data for processing.

The JSON format is required in Section 3.12 of the main specification (Taxonomic Structure) and must be embedded as a code block or attached file. It serves as a self-contained representation derived from the textual table in Section 3.12.

---

## A.2 Terminology

| Term              | Definition                                                                 |
|-------------------|----------------------------------------------------------------------------|
| **Taxonomic JSON**| A JSON object that encodes the entities, metadata, and relationships from the Blueprint Paper's taxonomic structure. |
| **Entity Object** | A JSON object representing a single module (e.g., ONTO, THEO) with required fields. |
| **Relation Object** | A JSON object defining a directed relationship between two entities.     |
| **Graph Edges**   | An array of relation objects for graph-based representation.               |
| **Tree Structure**| An optional nested array for hierarchical representation, derived from relations. |
| **Integrity Fields** | Fields for self-validation, such as counts and checksums.               |

---

## A.3 Required Structure

The JSON must be a single object with the following top-level fields. All fields are required unless marked as optional. The structure must conform exactly to the definitions below to avoid interpretation errors during importation.

### A.3.1 Top-Level Fields

- `paperId` (string, required): Unique identifier for the Blueprint Paper (e.g., `"BP-000-001-001"`).  
- `version` (string, required): Semantic version (e.g., `"v1.0.3"`).  
- `title` (string, required): Full title of the paper.  
- `lastUpdated` (string, required): ISO 8601 timestamp (e.g., `"2025-07-28T12:00:00Z"`).  
- `status` (string, required): One of `"DRAFT"`, `"PENDING"`, `"CONFIRMED"`.  
- `authors` (array, required): List of authors with `name` and optional `affiliation`.  
- `doi` (string, optional): DOI if available.  
- `entities` (array, required): Ordered list of all entity objects in ascending ID order.

Each entity must include:
- `id` (string, required): Regex `^[A-Z]+-[0-9]{3}-[0-9]{3}-[0-9]{3}$`  
- `type` (string, required): One of `["ONTO", "THEO", "EQUA", "MATH", "FATE", "EXPM", "EXPP", "CONS", "EMER", "AHOC"]`  
- `name` (string, required): Human-readable entity name.  
- `description` (string, required): Entity description and function.  
- `variables` (array, optional): If applicable (e.g., for EQUA/ONTO). Each must include `name`, `domain`, `description`.  
- `relations` (array, required): Directed relations. Each must include:
  - `targetId` (string)
  - `relationType`: One of `["1:n", "n:m", "1:1", "depends_on", "integrates", "validates"]`
  - `description` (string)
- `status` (string, required):  
  - `FATE`: `"CONFIRMED"`, `"REFUTED"`, `"NOT DISTINCT"`, `"OPEN"`  
  - `CONS`: `"DERIVED"`, `"OPEN"`  
  - Others: `"ACTIVE"`, `"PENDING"`, `"REFUTED"`  
- `content` (string, optional): Specific textual content (e.g., expression or hypothesis).  
- `links` (array, optional): List of URLs.  
- `figures` (array, optional): Must include `figureId`, `description`, `refersTo`.

Additional fields:

- `graphEdges` (array, optional): Edges with `sourceId`, `targetId`, `relationType`, `description`.
- `treeStructure` (array, optional): Hierarchical layout based on 1:n/integrates relations.
- `integrity` (object, required):  
  - `entityCount`: total number  
  - `relationCount`: total number  
  - `checksum`: optional SHA-256 hash  
  - `errors`: list of unresolved issues
- `customFields` (object, optional): Key-value store for extensions.

---

## A.4 Rules for Compliance

- JSON must be syntactically valid.  
- All required fields must be present.  
- Entities must be ordered by ID.  
- All `targetId` values must match existing entity IDs.  
- `status` fields must follow allowed values per type.  
- `graphEdges` and `treeStructure` must align with `relations`.  
- `figures` must refer to real entities.  
- No inferred data allowed — must match Blueprint Paper content exactly.

---

## A.5 Guidelines for Implementation

- Always generate JSON from the taxonomic table in Section 3.12.  
- Parse `entities` first, then generate graphs if needed.  
- Validate structure before submission.  
- If `customFields` is used, document keys in the paper.

---

**End of Appendix A**