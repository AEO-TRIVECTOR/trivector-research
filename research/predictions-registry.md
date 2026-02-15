# Predictions Registry

**Timestamped Falsifiable Predictions**

*Trivector Framework*

---

## Purpose

This registry documents falsifiable predictions derived from the Trivector Framework. Each prediction includes:

- **Statement**: The precise claim
- **Derivation**: How it follows from the framework
- **Test protocol**: How to verify or falsify
- **Registered**: Timestamp establishing priority
- **Status**: Untested / Confirmed / Falsified / Inconclusive

If predictions systematically fail, the framework fails.

---

## Mathematical Predictions

### P-M1: Spectral Gap Value

**Statement:** Systems satisfying Axioms 1-3 (semigroup self-reference, eigenvalue-contraction coincidence, dissipative dynamics) have principal eigenvalue λ₁ = W(1) = 0.567143...

**Derivation:** Theorem 4.1 in self-encoding paper. Axiom 2 gives λ₁ = μ; Axiom 1 gives μ = e^(-λ₁); solving yields λ₁ = W(1).

**Test protocol:** 
1. Construct systems satisfying all three axioms
2. Compute principal eigenvalue numerically
3. Compare to W(1)

**Registered:** January 2026

**Status:** ✓ Confirmed (by construction). The Markov process in Section 6 explicitly satisfies axioms with λ₁ = W(1).

---

### P-M2: Mixing Time Formula

**Statement:** For self-encoding systems, mixing time to ε-equilibrium is:
```
τ_mix(ε) = (1/W(1)) ln(1/ε) ≈ 1.76 ln(1/ε)
```

**Derivation:** Theorem 7.1. Follows from spectral gap γ = W(1) and exponential convergence.

**Test protocol:**
1. Simulate self-encoding Markov process
2. Measure time to ε-equilibrium
3. Compare to 1.76 ln(1/ε)

**Registered:** January 2026

**Status:** ✓ Confirmed (analytically derived from proven spectral gap)

---

### P-M3: Six-Threshold Minimum

**Statement:** Graph-based systems with |E| < 6 edges cannot achieve self-encoding convergence. Systems with |E| ≥ 6 converge with probability > 80%.

**Derivation:** Six-threshold theorem. Computational experiments across graph classes.

**Test protocol:**
1. Enumerate graphs by edge count
2. Run self-encoding dynamics
3. Measure convergence rate vs edge count

**Registered:** January 2026

**Status:** ✓ Confirmed (computational). 82%+ convergence for |E| ≥ 6 across tested graph classes.

---

### P-M4: Triangle Necessity

**Statement:** Self-encoding requires girth(G) = 3 (triangles present). Graphs without triangles cannot self-encode.

**Derivation:** Triangle theorem. The triangle is the minimal structure for self-referential closure.

**Test protocol:**
1. Test self-encoding on triangle-free graphs (bipartite, etc.)
2. Verify failure to converge

**Registered:** January 2026

**Status:** ✓ Confirmed (computational). Triangle-free graphs do not achieve λ₁ → W(1).

---

### P-M5: Grade Ratio Scaling

**Statement:** For Clifford algebra Cl(n,0), the grade coupling ratio scales as:
```
G₂/G₁ = C(n+1, 2)
```
Specifically:
- Cl(2,0): G₂/G₁ = C(3,2) = 3
- Cl(3,0): G₂/G₁ = C(4,2) = 6
- Cl(4,0): G₂/G₁ = C(5,2) = 10

**Derivation:** Pairwise grade couplings in (n+1)-grade Clifford algebra.

**Test protocol:**
1. Implement Clifford-Dirac operators for Cl(2,0), Cl(3,0), Cl(4,0)
2. Measure empirical grade ratios
3. Compare to C(n+1, 2)

**Registered:** February 2026

**Status:** Untested

---

### P-M6: Correction Exponent = Attractor Count

**Statement:** The β exponent in correction terms equals the number of attractors. For n_attr = 5, we have β⁵. For hypothetical n_attr = 6, expect β⁶.

**Derivation:** Each attractor contributes one power of incompleteness.

**Test protocol:**
1. Identify systems with different attractor counts
2. Measure correction exponents
3. Verify n_attr = exponent

**Registered:** February 2026

**Status:** Untested (requires identifying systems with n_attr ≠ 5)

---

## Neural Predictions

### P-N1: Relaxation Time Constant

**Statement:** For neural systems exhibiting self-modeling, the relaxation time constant for linear perturbations near equilibrium is:
```
τ_relax ≈ 1.76 × τ_membrane
```
For cortical neurons with τ_membrane ≈ 10ms: τ_relax ≈ 18ms

**Derivation:** τ_relax = τ/|λ₁| = τ/W(1) ≈ 1.76τ

**Test protocol:**
1. Identify neural populations engaged in self-referential processing (metacognition, self-monitoring)
2. Measure perturbation relaxation times
3. Compare to 1.76 × membrane time constant

**Registered:** January 2026

**Status:** Untested

---

### P-N2: Spectral Gap in Metacognitive Tasks

**Statement:** The dominant non-stationary eigenvalue during self-referential neural processing should be |λ₁| ≈ 0.57 in normalized units.

**Derivation:** Self-encoding equilibrium at λ₁ = W(1).

**Test protocol:**
1. Record neural activity during metacognitive tasks
2. Extract linearized dynamics, compute eigenvalues
3. Compare principal eigenvalue to W(1)

**Registered:** January 2026

**Status:** Untested

---

### P-N3: Crystallization Depth

**Statement:** Decision processes involving self-modeling stabilize in approximately 5-6 characteristic time constants.

**Derivation:** τ_mix(0.05) = 1.76 × ln(20) ≈ 5.3

**Test protocol:**
1. Measure decision times in self-referential vs non-self-referential tasks
2. Normalize by characteristic time (e.g., membrane constant)
3. Compare ratio to 5-6

**Registered:** January 2026

**Status:** Untested

---

## Computational Predictions

### P-C1: Trained Network Convergence

**Statement:** Artificial neural networks trained with self-modeling objectives will exhibit principal eigenvalues converging to W(1).

**Derivation:** If self-modeling satisfies our axioms, λ₁ → W(1) follows.

**Test protocol:**
1. Train networks on self-prediction tasks
2. Extract linearized dynamics at convergence
3. Compute principal eigenvalue
4. Compare to W(1)

**Registered:** February 2026

**Status:** Untested

---

### P-C2: Recurrent Network Attractors

**Statement:** Recurrent neural networks with self-referential connectivity will show attractors near the 5 named values (μ, φ⁻¹, σ, √½, D).

**Derivation:** Attractor-cluster duality. Self-referential dynamics should visit these fixed points.

**Test protocol:**
1. Train RNNs on self-referential tasks
2. Analyze attractor landscape
3. Compare attractor values to named constants

**Registered:** February 2026

**Status:** Untested

---

## Falsification Conditions

The framework would be falsified by:

1. **Mathematical falsification:** Systems satisfying Axioms 1-3 with λ₁ ≠ W(1)

2. **Systematic neural deviation:** Neural data consistently showing relaxation times ≠ 1.76τ in metacognitive tasks (allowing for measurement noise and nonlinear effects)

3. **Computational failure:** Trained self-modeling networks consistently converging to λ₁ ≠ W(1)

4. **Structural breakdown:** Discovery that grade ratios do NOT follow C(n+1, 2) scaling

---

## Update Log

| Date | Prediction | Update |
|------|------------|--------|
| 2026-01 | P-M1 | Registered, confirmed by construction |
| 2026-01 | P-M2 | Registered, confirmed analytically |
| 2026-01 | P-M3 | Registered, confirmed computationally |
| 2026-01 | P-M4 | Registered, confirmed computationally |
| 2026-01 | P-N1, P-N2, P-N3 | Registered |
| 2026-02 | P-M5, P-M6, P-C1, P-C2 | Registered |

---

## How to Report Results

If you test any prediction:

1. Open a GitHub Issue with tag `[Prediction Test]`
2. Include: prediction ID, methodology, data, results
3. We will update status accordingly

For collaborative testing: jared@trivector.ai

---

*Registry established: January 2026*  
*Last updated: February 2026*

© 2025-2026 AEO Trivector LLC
