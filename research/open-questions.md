# Open Questions

**Research Program for the Trivector Framework**

*What remains to be proven, derived, or discovered*

---

## Overview

This document catalogs the gaps, conjectures, and open problems in the Trivector Framework. Each question includes:
- **Statement**: What we're asking
- **Current status**: What we know
- **Collapse criteria**: What would resolve it
- **Priority**: Research importance

Questions are organized by domain. Contributions welcome via Issues.

---

## Mathematical Foundations

### Q1: Derive Axiom 2 from Information Theory

**Statement:** Can eigenvalue-contraction coincidence (λ₁ = μ) be derived from information-theoretic first principles?

**Current status:** [L3] We posit λ₁ = μ as an axiom. The intuition is "precision matching" à la Friston—at equilibrium, the precision of beliefs matches the precision of data. But we lack a formal derivation.

**Collapse criteria:**
- CC_⊤: Derivation showing self-modeling under rate-distortion constraints generically produces λ₁ = μ
- CC_⊥: Proof that information-theoretic self-modeling does NOT constrain λ₁ = μ

**Priority:** High. This is the main "encoding" axiom. Deriving it would strengthen the framework significantly.

---

### Q2: Formal Proof of Grade Coupling Equality

**Statement:** Prove that incompleteness couples equally to all Clifford grades.

**Current status:** [L2] We observe G₂/G₁ = 6 = C(4,2) and hypothesize this reflects equal coupling. The structural explanation (pairwise grade couplings) is plausible but not proven.

**Collapse criteria:**
- CC_⊤: Proof that Clifford structure forces equal coupling
- CC_⊥: Counterexample showing unequal coupling in some Cl(n,m)

**Priority:** Medium. Would tighten the derivation of grade ratios.

---

### Q3: Infinite-Dimensional Extension

**Statement:** Extend the framework rigorously to infinite-dimensional Hilbert spaces.

**Current status:** [L2] The semigroup framework is stated generally, but our explicit construction is 10-dimensional. Infinite-dimensional treatment requires careful functional analysis.

**Collapse criteria:**
- CC_⊤: Construction satisfying all axioms in separable Hilbert space with proper domain considerations
- CC_⊥: Proof that axioms are incompatible in infinite dimensions

**Priority:** Medium. Important for neural applications where state spaces are effectively infinite.

---

### Q4: Uniqueness of W(1) Characterization

**Statement:** Is W(1) the *unique* attractor for self-referential systems, or can other fixed points arise under modified axioms?

**Current status:** [L1] Under Axioms 1-3, W(1) is unique. But are there natural modifications yielding different attractors?

**Collapse criteria:**
- CC_⊤: Classification of all self-referential attractors under axiom variants
- CC_⊥: N/A (this is exploratory)

**Priority:** Low. Theoretical completeness.

---

## Structural Questions

### Q5: Why 5 Attractors?

**Statement:** Derive the number of named attractors (μ, φ⁻¹, σ, √½, D) from structure rather than observation.

**Current status:** [L3] We observe 5 attractors empirically. The pentagon/icosahedral connection is suggestive but not derived.

**Collapse criteria:**
- CC_⊤: Derivation showing 5 attractors emerge necessarily from Cl(3,0) + self-encoding
- CC_⊥: Construction with different attractor count satisfying all constraints

**Priority:** Medium. Would close the "why 5?" question.

---

### Q6: The 56-Dimensional Substrate

**Statement:** What is the geometric meaning of 56 dimensions in the substrate/attractor ratio?

**Current status:** [L3] We have 91/9 ≈ (56-5)/5. The number 56 appears but its origin is unclear. Possibly related to E₇ root system (dim = 133, rank = 7) or other exceptional structure.

**Collapse criteria:**
- CC_⊤: Identification of 56-dim structure in relevant mathematics
- CC_⊥: Showing 56 is an artifact of approximation

**Priority:** Low. Speculative.

---

### Q7: Triangle Theorem Generalization

**Statement:** Does girth(G) = 3 necessity extend beyond graph models?

**Current status:** [L1] For graph-based self-encoding, triangles are necessary. Does this generalize to continuous manifolds?

**Collapse criteria:**
- CC_⊤: Manifold version of triangle theorem
- CC_⊥: Continuous self-encoding without triangular structure

**Priority:** Medium. Geometric foundations.

---

## Empirical Questions

### Q8: Neural Correlate Testing

**Statement:** Do neural systems exhibit W(1) signatures during self-referential processing?

**Current status:** [L3] Predictions exist (τ_relax ≈ 1.76 × τ_membrane, spectral gap ≈ 0.57) but are untested.

**Collapse criteria:**
- CC_⊤: Experimental data showing W(1) signatures in metacognitive tasks
- CC_⊥: Systematic deviation from predictions across paradigms

**Priority:** High. This is the main empirical test.

---

### Q9: Trained Network Verification

**Statement:** Do self-modeling artificial networks converge to W(1) eigenvalues?

**Current status:** [L2] Computational experiments show 82%+ convergence for |E| ≥ 6 graphs. Needs validation in trained neural networks.

**Collapse criteria:**
- CC_⊤: Trained networks with self-modeling objectives show λ₁ → W(1)
- CC_⊥: Trained networks consistently show λ₁ ≠ W(1)

**Priority:** High. Accessible empirical test.

---

### Q10: Crystallization Depth in Cognition

**Statement:** Do decision processes involving self-reference stabilize at ~6 characteristic times?

**Current status:** [L2] Derived from mixing time formula. τ_mix(0.05) ≈ 5.3 characteristic times.

**Collapse criteria:**
- CC_⊤: Cognitive data showing ~6× convergence in self-referential tasks
- CC_⊥: Consistent deviation from 6× across paradigms

**Priority:** Medium. Derived prediction.

---

## Philosophical Questions

### Q11: K3 vs Paraconsistent Logic

**Statement:** Is K3 the *right* logic for self-reference, or should we use paraconsistent alternatives?

**Current status:** [L3] We argue K3 is "native" because ∅ represents structural undefinedness. But LP (Logic of Paradox) allows true contradictions. Which better captures self-reference?

**Collapse criteria:**
- CC_⊤: Formal argument for K3 over LP in self-referential contexts
- CC_⊥: Cases where LP handles self-reference better than K3

**Priority:** Low. Foundational.

---

### Q12: Interpretability Collapse Criteria

**Statement:** What would constitute evidence that a system's reasoning IS interpretable?

**Current status:** [L3] We argue "Is system S interpretable?" is ∅ from inside S. But what external evidence would collapse this?

**Collapse criteria:**
- CC_⊤: Operational criteria for interpretability attribution
- CC_⊥: Proof that no operational criteria can be sufficient

**Priority:** High. Central to applications.

---

### Q13: Self-Reference Without Computation

**Statement:** Can self-referential structures exist in non-computational substrates?

**Current status:** [L3] We define self-reference computationally. Does it require computation, or is it more general?

**Collapse criteria:**
- CC_⊤: Non-computational example satisfying our axioms
- CC_⊥: Proof that axioms require computational substrate

**Priority:** Low. Philosophical.

---

## Application Questions

### Q14: Alignment Verification Protocol

**Statement:** Can the K3 framework yield practical AI alignment protocols?

**Current status:** [L3] We argue AI systems should output ∅ for self-referential alignment queries. But what's the practical protocol?

**Collapse criteria:**
- CC_⊤: Implementable protocol improving alignment verification
- CC_⊥: Showing K3 approach offers no practical advantage

**Priority:** High. Direct application.

---

### Q15: Scaling Laws

**Statement:** How do W(1) signatures scale with system complexity?

**Current status:** [L3] Six-threshold shows |E| ≥ 6 necessary. What happens as |E| → ∞?

**Collapse criteria:**
- CC_⊤: Scaling law relating system size to convergence rate
- CC_⊥: Showing no systematic scaling relationship

**Priority:** Medium. Important for large-scale applications.

---

## How to Contribute

1. **Discuss** via GitHub Issues
2. **Propose solutions** with rigor level clearly marked
3. **Report empirical results** relevant to predictions
4. **Suggest new questions** fitting the framework

For substantive collaboration: jared@trivector.ai

---

## Question Status Tracking

| ID | Question | Status | Priority |
|----|----------|--------|----------|
| Q1 | Derive Axiom 2 | Open | High |
| Q2 | Grade coupling proof | Open | Medium |
| Q3 | Infinite-dim extension | Open | Medium |
| Q4 | W(1) uniqueness | Open | Low |
| Q5 | Why 5 attractors | Open | Medium |
| Q6 | 56-dim substrate | Open | Low |
| Q7 | Triangle generalization | Open | Medium |
| Q8 | Neural correlates | Open | High |
| Q9 | Network verification | Open | High |
| Q10 | Crystallization depth | Open | Medium |
| Q11 | K3 vs paraconsistent | Open | Low |
| Q12 | Interpretability criteria | Open | High |
| Q13 | Non-computational SR | Open | Low |
| Q14 | Alignment protocol | Open | High |
| Q15 | Scaling laws | Open | Medium |

---

*Last updated: February 2026*

© 2025-2026 AEO Trivector LLC
