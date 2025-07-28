# Blueprint Paper Standard — Specification and Examples

This repository defines and exemplifies the **Blueprint Paper** format, an epistemic and ontological standard for structuring scientific theories.

Developed as part of the **Non Phy** research initiative, this format introduces modular, falsifiable, and machine-readable theory blueprints.

📘 Maintained by: **Roberto Bertó**  
🔗 Project site: [https://nonphy.org](https://nonphy.org)  
📬 Contact: info@nonphy.org

---

## 📄 RFC Specification

**RFC ID:** `SPEC-000-001-001`  
**Version:** `v1.4`  
**Status:** `ACTIVE`

The RFC defines a structured document format to register theories using modular epistemic entities:

- `ONTO`: Ontological bases
- `THEO`: Theories
- `EQUA`: Equations
- `MATH`: Derivations
- `FATE`: Falsifiability tests
- `EXPM` / `EXPP`: Experimental modules
- `CONS`: Constants (derived or open)
- `EMER`: Emergent clusters
- `JSON`: Taxonomic structure for automated import

This standard ensures each theory is self-contained, falsifiable, and integrable into epistemological databases or validation pipelines.

---

## 📦 Repository Structure

```
blueprint-paper/
├── LICENSE.md
├── README.md
├── rfc/
│ ├── rfc-blueprint-paper.md # Full specification in Markdown
│ └── rfc-blueprint-paper.json # JSON schema representation
├── examples/
│ ├── BP-000-000-000.md # Example Blueprint Paper (placeholder content)
│ └── BP-000-000-000.json # Example entity graph in JSON
```


---

## 🔧 Tools (planned)

Planned utilities include:

- `rfc_validator.py`: structural checker for blueprint papers
- DOMUS integration for YAML/JSON ingestion
- Future `SPEC-000-001-002`: blueprint standard for applied theories (experimental or computational)

---

## 📦 IPFS Manifest: Blueprint Paper Space

This repository is linked to a public IPFS space, which represents the curated and immutable snapshot of its contents:

```json
{
  "space": "blueprint-paper",
  "did": "did:key:z6MkocLbny2mgyCSoqTNMLv3tPcS3HqNQwuJhJrXSDHFddXQ",
  "root_cid": "bafybeibc3ygvkddgiiyey4xgfji4hxknvccbzn5dhcqq5624o63kor74ke",
  "ipfs_url": "https://bafybeibc3ygvkddgiiyey4xgfji4hxknvccbzn5dhcqq5624o63kor74ke.ipfs.w3s.link/"
}```

--- 

## 🔖 License

This RFC is released under the [Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).  
Use and remix are allowed with attribution.

---

## 🌐 Use Cases

- Publishing falsifiable scientific theories
- Structuring ontological/mathematical models for open science
- Building reproducible pipelines (e.g., RAG or scientific agents)
- Generating versioned knowledge artifacts

---

## 📬 Contributions

Blueprint Papers are authored by Roberto Bertó as part of an independent research initiative.  
Third-party use is welcome. Contributions may be opened post initial public release.
