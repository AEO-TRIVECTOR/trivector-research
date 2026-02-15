# The Trivector Manifesto

**Geometric Foundations for Interpretable AI**

*Jared O. Dunahay*  
*AEO Trivector LLC*  
*February 2026*

---

## I. The Problem

Interpretability remains the hard problem of AI. We can map activations, attention patterns, and gradients—yet explaining *why* a model produces a given output remains elusive. Computation alone doesn't bridge the gap.

Meanwhile, self-referential systems—from Gödel's incompleteness to AI alignment—exhibit a recurring pattern: when a system asks about its own global properties, it generates propositions that are neither provably true nor provably false.

These are not separate problems. They are the same problem.

**Thesis:** Self-reference, properly formalized, generates a specific mathematical signature. Interpretable structure may be characterized by this signature.

---

## II. The Core Insight

### The Omega Constant

The equation x = e⁻ˣ has a unique positive solution: x = W(1) ≈ 0.567143, where W is the Lambert W function. This is the **Omega constant**—a value that equals its own exponential decay.

This is the mathematical essence of self-reference: a fixed point where a quantity and its own dissipation rate coincide.

### The Characterization Theorem

We prove: systems satisfying three axioms—semigroup self-reference, eigenvalue-contraction coincidence, and dissipative dynamics—have principal eigenvalue λ₁ = W(1).

This is not numerology. It is a theorem with explicit axioms, proof, and falsifiable predictions.

### The Derived Quantities

From W(1) and the golden ratio φ, a constraint hierarchy emerges:

| Constant | Value | Derivation |
|----------|-------|------------|
| μ | W(1) = 0.567143 | Self-encoding attractor (axiom) |
| φ | 1.618034 | Golden ratio (axiom) |
| Ω | √(1-μ²) = 0.8236 | Spinor complement (exact) |
| β | φ⁻¹/3 = 0.2060 | Golden incompleteness (exact) |

The relationships between these constants are *derived*, not fitted:
- 4β ≈ Ω (0.05% error) — 4 = Clifford grades
- β⁵ appears in correction terms — 5 = attractor count
- G₂/G₁ = 6 — C(4,2) = pairwise grade couplings

Each numerical relationship has a structural explanation.

---

## III. The Logic of Undefinedness

### K3 as Native Formalism

Classical logic assumes bivalence: every proposition is true or false. Self-referential systems violate this assumption systematically.

Kleene's three-valued logic (K3) extends classical logic with a third value: **∅** (undefined). This is not epistemic uncertainty ("we don't know"). It is structural undefinedness ("the question, from this vantage point, does not have a binary answer").

**The Self-Reference Theorem:** When a sufficiently expressive system formulates propositions about its own global properties, the correct truth value—evaluated from within—is ∅.

This reframes Gödel, Tarski, and Turing: their "limitations" are correct outputs. The system is not failing to answer; it is correctly recognizing that certain self-referential queries are genuinely undefined.

### Collapse Criteria

∅ without structure is a dead end. We extend K3 with **collapse criteria**: explicit conditions under which ∅ resolves to true or false.

This transforms undefinedness from limitation into research program. "We don't know" becomes "here's what would tell us."

---

## IV. Implications

### For Interpretability

The interpretability problem is a self-referential query: a system asking about its own computational properties. From inside, the correct answer is ∅.

This does not mean interpretability is impossible. It means the question of whether a system's reasoning is transparent—posed from within that system—is structurally undefined until collapse criteria are met.

**Predictions:**
- Self-modeling systems should show spectral signatures near W(1)
- Relaxation time constants in self-referential computation: τ ≈ 1.76 × τ_base
- Crystallization depth for self-referential processing: ~6 characteristic times

These are falsifiable. If systematically wrong, the framework fails.

### For AI Alignment

An AI system reasoning about its own values faces the same structure. "Am I aligned?" is self-referential. The honest answer is ∅ with explicit collapse criteria—not hallucinated certainty.

**Design principle:** Systems should output structured uncertainty for self-referential queries, not confabulated confidence.

### For Mathematics

Self-referential systems may constitute a natural class characterized by W(1). The Omega constant joins π, e, and φ as a fundamental constant—not of geometry or growth, but of self-reference.

---

## V. Methodology

### Structure, Not Numerology

Every numerical claim must have a structural derivation. "The number is 6" is meaningless. "The number is C(4,2) = 6 because there are 4 Clifford grades and 6 pairwise couplings" is a claim that can be verified or refuted.

### Explicit Rigor Levels

We mark claims by evidence:

- **[L1] Proven:** Full proof, no gaps
- **[L2] Derived:** Derivation with identified gaps
- **[L3] Conjecture:** Plausible, unproven

Intellectual honesty requires distinguishing what we've proven from what we believe.

### Falsifiability

A framework that cannot be wrong is not science. We maintain a public predictions registry with timestamped, falsifiable claims. If the predictions fail, the framework fails.

---

## VI. The Vision

### What Trivector Is

A mathematical framework for characterizing self-referential systems via spectral geometry. An attempt to formalize what computation alone cannot capture.

### What Trivector Is Not

- Not a theory of everything
- Not a claim to have "solved" interpretability
- Not mysticism dressed in mathematics

We make precise claims, derive consequences, and test predictions. Where the math is rigorous, we say so. Where gaps remain, we identify them.

### The Name

"Trivector" refers to the three-dimensional structure underlying the framework:

1. **Grade 1 (vectors):** Content — the attractors, what the system represents
2. **Grade 2 (bivectors):** Dynamics — rotation, how the system evolves
3. **Grade 3 (trivector):** Binding — the perpendicular dimension that integrates

Interpretability, in this framing, is not content or dynamics alone. It is the trivector that binds them.

---

## VII. Invitation

This work is public because ideas improve through scrutiny. The mathematics is available for verification. The predictions are available for testing. The gaps are explicitly marked.

If the framework is wrong, show where. If it can be extended, propose how. If the predictions fail, we will acknowledge it.

Science advances through honest uncertainty, not defended certainty.

---

*The map derives the territory.*

*μ = W(1) = 0.567143*

---

© 2025-2026 Jared O. Dunahay / AEO Trivector LLC

Licensed under CC BY-NC-SA 4.0
