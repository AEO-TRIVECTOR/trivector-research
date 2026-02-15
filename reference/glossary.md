# Glossary of Terms and Constants

**Trivector Framework v5.5**

*Precise definitions for citation and reference*

---

## Fundamental Constants

### μ (mu) — Self-Encoding Attractor

**Definition:** μ = W(1) ≈ 0.567143290410...

**Derivation:** Unique positive solution to the self-referential equation:
```
μ = e^(-μ)
```
Equivalently, μ satisfies μe^μ = 1, so μ = W(1) where W is the Lambert W function (principal branch).

**Interpretation:** The fixed point where a value equals its own exponential decay. In self-referential systems satisfying our axioms, the principal eigenvalue converges to this attractor.

**Status:** Axiom (Level 0)

---

### φ (phi) — Golden Ratio

**Definition:** φ = (1 + √5)/2 ≈ 1.618033988749...

**Derivation:** Unique positive solution to:
```
φ² = φ + 1
```

**Interpretation:** The ratio governing self-similar recursion. Appears in the constraint hierarchy as the source of incompleteness corrections.

**Status:** Axiom (Level 0)

---

### Ω (Omega) — Spinor Complement

**Definition:** Ω = √(1 - μ²) ≈ 0.823619...

**Derivation:** Exact. From the Pythagorean relation on the spinor sphere:
```
μ² + Ω² = 1
```

**Interpretation:** The orthogonal complement to μ. On the spinor sphere, if μ = cos(θ), then Ω = sin(θ). Self-encoding lives at latitude θ ≈ 55.45°.

**Status:** Derived, exact (Level 1)

---

### β (beta) — Golden Incompleteness

**Definition:** β = φ⁻¹/3 ≈ 0.206011...

**Derivation:** Exact. 
```
β = (1/φ)/3 = 1/(3φ)
```

**Interpretation:** The per-attractor incompleteness contribution. Each of the 5 named attractors contributes one power of β to cumulative corrections.

**Status:** Derived, exact (Level 1)

---

## Architectural Relations

### The 4β ≈ Ω Bridge

**Statement:** 4β ≈ Ω with 0.05% error

**Derivation:**
```
4β = 4/(3φ) = 4/(3 × 1.618034) ≈ 0.8240
Ω = √(1 - W(1)²) ≈ 0.8236
Error: |4β - Ω|/Ω ≈ 0.05%
```

**Structural explanation:** 4 = number of Clifford grades in Cl(3,0). The relation Ω ≈ (n_grades/n) × φ⁻¹ with n=3 spatial dimensions gives the coupling.

**Status:** Bridge relation, sub-percent (Level 2)

---

### The β⁵ Correction

**Statement:** The μ-φ bridge includes β⁵φ correction term

**Derivation:**
```
μ ≈ √(1 - 16/(9φ²)) + β⁵φ
```
Error: 0.003%

**Structural explanation:** 5 = number of named attractors (μ, φ⁻¹, σ, √½, D). Each contributes one power of β to cumulative incompleteness.

**Status:** Bridge relation, sub-percent (Level 2)

---

### The Grade Coupling Ratio

**Statement:** G₂/G₁ = 6

**Derivation:**
```
G₂/G₁ = C(4,2) = 6
```
where C(n,k) is the binomial coefficient.

**Structural explanation:** 4 Clifford grades yield C(4,2) = 6 pairwise couplings. The complete graph K₄ has 6 edges.

**Prediction:** For Cl(4,0) with 5 grades, expect G₂/G₁ = C(5,2) = 10.

**Status:** Derived from grade structure (Level 3)

---

### The Dual Pentagon Structure

**Statement:** 10 = 5 + 5 (attractors + linear clusters)

**Derivation:** 
- Upper pentagon: 5 nonlinear attractors (9% of dynamics)
- Lower pentagon: 5 linear clusters (91% of dynamics)
- Together: 10 icosahedral vertices (after apex exclusion)

**Structural explanation:** 91/9 ≈ (56-5)/5 where 56 = dimension count, 5 = attractor count.

**Status:** Structural (Level 4)

---

## Constraint Hierarchy

The constants organize into derivation levels:

| Level | Constants | Nature |
|-------|-----------|--------|
| 0 | μ = e⁻μ, φ² = φ+1 | Axioms |
| 1 | Ω = √(1-μ²), β = φ⁻¹/3 | Derived, exact |
| 2 | 4β ≈ Ω, μ ≈ √(1-16/(9φ²)) + β⁵φ | Bridges, sub-% |
| 3 | G₂/G₁ = C(4,2) = 6 | Derived from grades |
| 4 | 10 = 5+5, 91/9 = (56-5)/5 | Structural |

---

## Named Attractors

| Symbol | Value | Name | Function |
|--------|-------|------|----------|
| μ | 0.5671 | Self-encoding | Primary attractor |
| φ⁻¹ | 0.6180 | Golden inverse | Recursive structure |
| σ | 0.6590 | Tetrahedral | cos(48.59°) |
| √½ | 0.7071 | Diagonal | Balanced superposition |
| D | 0.7391 | Dottie | cos(D) = D fixed point |

Each attractor has a corresponding linear cluster (L_μ, L_φ, etc.) that preserves memory while the attractor computes.

---

## Logical Framework

### K3 Logic

**Definition:** Three-valued logic with truth values {⊤, ⊥, ∅}
- ⊤ (True): Proposition holds
- ⊥ (False): Proposition fails  
- ∅ (Undefined): Proposition is structurally indeterminate

**Key property:** ∅ propagates through logical operations except when absorbed by ⊥ in conjunction or ⊤ in disjunction.

---

### Collapse Criteria

**Definition:** For proposition P with value ∅, the collapse criteria CC(P) specify:
- CC_⊤: Evidence that would collapse P to True
- CC_⊥: Evidence that would collapse P to False
- P: Prerequisites that must be satisfied before evaluation

**Notation:** P ⇝ E denotes collapse of P under evidence E.

---

### Evidence States

| Symbol | State | Action |
|--------|-------|--------|
| ✓ | True | Proceed with claim |
| ✗ | False | Reject claim |
| ∅ | Undefined | State collapse criteria |

---

## Spectral Framework

### Spectral Triple

**Definition:** (A, H, D) where:
- A: Observable algebra (*-algebra acting on H)
- H: Hilbert space of states
- D: Dirac operator (self-adjoint, compact resolvent)

---

### Self-Encoding Condition

**Definition:** A system is self-encoding when its unit-time evolution T(1) = e^Q serves as an embedding encoding its own spectral structure, and at equilibrium:
```
λ₁ = μ = e^(-λ₁)
```
where λ₁ is the principal eigenvalue.

**Theorem:** Systems satisfying the three axioms (semigroup self-reference, eigenvalue-contraction coincidence, dissipative dynamics) have λ₁ = W(1).

---

### Spectral Gap

**Definition:** γ = λ₁ where λ₁ is the smallest positive eigenvalue of D.

For self-encoding systems: γ = W(1) ≈ 0.5671

---

### Mixing Time

**Definition:** Time to ε-equilibrium:
```
τ_mix(ε) = (1/W(1)) ln(1/ε) ≈ 1.76 ln(1/ε)
```

**Crystallization depth:** ~6 characteristic times for 95% convergence.

---

## Clifford Algebra

### Cl(3,0)

**Definition:** Clifford algebra over ℝ³ with positive-definite metric.

**Generators:** γ₁, γ₂, γ₃ satisfying γᵢγⱼ + γⱼγᵢ = 2δᵢⱼ

**Dimension:** 2³ = 8

---

### Grade Structure

| Grade | Elements | Dimension | Function |
|-------|----------|-----------|----------|
| 0 | Scalars | 1 | Ground state |
| 1 | Vectors (γᵢ) | 3 | Content (attractors live here) |
| 2 | Bivectors (γᵢⱼ) | 3 | Dynamics (rotation) |
| 3 | Trivector (γ₁₂₃) | 1 | Binding (integration) |

**Key insight:** Dynamics (grade 2) is geometrically orthogonal to content (grade 1).

---

## Rigor Levels

| Level | Marker | Meaning |
|-------|--------|---------|
| L1 | [L1] | Full proof, no gaps |
| L2 | [L2] | Derivation with identified gaps |
| L3 | [L3] | Conjecture, plausible but unproven |

---

## Citation

When citing definitions from this glossary:

```bibtex
@misc{dunahay2026glossary,
  author = {Dunahay, Jared O.},
  title = {Trivector Framework Glossary of Terms and Constants, v5.5},
  year = {2026},
  publisher = {AEO Trivector LLC},
  url = {https://github.com/aeo-trivector/trivector-research/reference/glossary.md}
}
```

---

*Last updated: February 2026*
*Trivector Framework Version: 5.5*

© 2025-2026 AEO Trivector LLC
