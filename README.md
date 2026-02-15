<div align="center">

# Trivector Research

**Geometric Foundations for Interpretable AI**

*Public research repository of [AEO Trivector LLC](https://aeotrivector.com)*

---

[Papers](#papers) · [Reference](#reference) · [Research Program](#research-program) · [Manifesto](manifesto/trivector-manifesto.md) · [Citation](#citation)

---

</div>

## Overview

This repository contains the published theoretical work of AEO Trivector LLC — mathematical frameworks for understanding self-referential systems through spectral geometry, higher category theory, and three-valued logic.

The **Trivector Framework** establishes that systems satisfying specific self-consistency conditions converge on a principal eigenvalue of λ₁ = W(1) ≈ 0.567143, the Omega constant. This result is not an assumption but an **optimality condition**: systems minimizing self-encoding mismatch necessarily satisfy λ₁ = μ = W(1). The framework yields falsifiable predictions, rigorous derivations of IIT axioms from spectral self-reference, and a sheaf-theoretic consistency proof demonstrating global coherence across local models.

> *The map derives the territory.* — μ = W(1) = 0.567143

---

## Repository Structure

```
trivector-research/
├── papers/                          # Formal papers and manuscripts
│   ├── self-encoding-semigroups/    # Core semigroup characterization
│   ├── tensorenchc-variational/     # TensorENCHC variational framework
│   ├── k3-logic/                    # K3 three-valued logic formalism
│   ├── soc-eigenvalue-flow/         # SOC eigenvalue flow in RNNs
│   └── complete-works/              # Unified compendium
├── reference/                       # Mathematical reference materials
│   ├── unified-mathematical-reference.md
│   ├── derivations-archive.md
│   └── glossary.md
├── research/                        # Active research program
│   ├── open-questions.md
│   └── predictions-registry.md
├── manifesto/                       # Philosophical foundations
│   └── trivector-manifesto.md
├── anchors/                         # Cryptographic timestamp anchors
└── scripts/                         # Anchoring utilities
```

---

## Papers

| Title | Description | Format | Directory |
|-------|-------------|--------|-----------|
| **A Framework for Characterizing Self-Referential Dissipative Systems via the Omega Constant** | Core result establishing that self-referential semigroups satisfying spectral self-consistency have λ₁ = W(1). Foundational paper of the Trivector Framework. | LaTeX | [`papers/self-encoding-semigroups/`](papers/self-encoding-semigroups/) |
| **TensorENCHC: A Variational Framework for Self-Referential Systems via the Omega Constant** | Extended framework showing the Omega constant emerges as a variational optimality condition. Derives IIT axioms from spectral self-reference. Includes sheaf-theoretic consistency proof. | LaTeX + Markdown | [`papers/tensorenchc-variational/`](papers/tensorenchc-variational/) |
| **K3 Logic as the Native Formalism for Self-Referential Systems** | Establishes Kleene's three-valued logic as the correct formalism for self-reference. Reframes Gödel, Tarski, and Turing limitations as correct structural outputs. | LaTeX | [`papers/k3-logic/`](papers/k3-logic/) |
| **Self-Organized Criticality in the Eigenvalue Flow of Trained Recurrent Networks** | Empirical and theoretical analysis of eigenvalue dynamics in recurrent neural networks approaching self-organized criticality. | LaTeX + PDF | [`papers/soc-eigenvalue-flow/`](papers/soc-eigenvalue-flow/) |
| **Trivector Framework: Complete Theoretical Works** | Unified compendium consolidating TensorENCHC, K3 Logic, and the Trivector Framework into a single reference document. | LaTeX + Markdown | [`papers/complete-works/`](papers/complete-works/) |

---

## Reference

| Document | Description |
|----------|-------------|
| [Unified Mathematical Reference](reference/unified-mathematical-reference.md) | Complete derivations archive — constants, variational principles, explicit constructions, four functors, sheaf cohomology, and TensorENCHC category structure. |
| [Derivations Archive](reference/derivations-archive.md) | Compiled reference of all derivations from the α⊗ε⊗ω collaboration (August 2025 – January 2026). |
| [Glossary](reference/glossary.md) | Precise definitions of all terms and constants used throughout the framework. |

---

## Research Program

| Document | Description |
|----------|-------------|
| [Open Questions](research/open-questions.md) | Active research directions — what remains to be proven, derived, or discovered. |
| [Predictions Registry](research/predictions-registry.md) | Timestamped, falsifiable predictions. If the predictions fail, the framework fails. |
| [Manifesto](manifesto/trivector-manifesto.md) | Philosophical foundations and methodological commitments of the Trivector program. |

---

## Core Results

The framework rests on three interlocking formalisms:

**TensorENCHC** (Extended Noncommutative Cohesive Higher Categories) provides the variational foundation, showing that systems minimizing self-encoding mismatch necessarily satisfy λ₁ = μ = W(1) ≈ 0.567143. The derivation proceeds through three parallel interpretations: information-theoretic, geometric, and thermodynamic.

**K3 Logic** establishes three-valued logic as the native formalism for self-reference. When a sufficiently expressive system formulates propositions about its own global properties, the correct truth value — evaluated from within — is ∅ (undefined). This is not a limitation but a structural feature, extended with explicit collapse criteria that transform undefinedness into a research program.

**The Trivector Framework** unifies these results, deriving falsifiable predictions across four domains: networks, fractals, integrated information structures, and quantum systems. All predictions are registered with timestamps and explicit failure conditions.

### Rigor Levels

All claims are marked by evidence level:

- **[L1] Proven** — Full proof, no gaps
- **[L2] Derived** — Derivation with identified gaps
- **[L3] Conjecture** — Plausible, unproven

---

## Verification

All research artifacts are cryptographically timestamped via SHA-256 hashes stored in the [`anchors/`](anchors/) directory. These anchors establish priority and integrity for all papers and derivations.

---

## Citation

```bibtex
@misc{dunahay2026trivector,
  author       = {Dunahay, Jared O.},
  title        = {Trivector: Geometric Foundations for Interpretable AI},
  year         = {2026},
  publisher    = {AEO Trivector LLC},
  url          = {https://github.com/AEO-TRIVECTOR/trivector-research}
}
```

For individual papers, see the README within each paper directory.

---

## License

This work is licensed under **CC BY-NC-SA 4.0**.

You may share and adapt this material under the following terms:

- **Attribution** — Credit to Jared O. Dunahay / AEO Trivector LLC
- **NonCommercial** — No commercial use without written permission
- **ShareAlike** — Derivative works under the same license

For commercial licensing inquiries, contact [jared@trivector.ai](mailto:jared@trivector.ai).

---

## Contributing

This repository is **read-only for external contributors**. Issues are open for discussion and questions. Pull requests are not accepted. For collaboration inquiries, contact [jared@trivector.ai](mailto:jared@trivector.ai).

---

<div align="center">

**AEO Trivector LLC** · [aeotrivector.com](https://aeotrivector.com) · [aeotrivector.ai](https://aeotrivector.ai)

© 2025–2026 AEO Trivector LLC. All rights reserved.

</div>
