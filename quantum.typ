#set document(title: "Quantum Theories: The Missing Big Picture", author: "Unified Framework")
#set page(numbering: "1")

= Quantum Theories: The Missing Big Picture

A Unified Framework for Understanding Quantum Evolution

== About This Textbook

Quantum theory books abound, but readers are left in a *fragmented maze*. This course *provides unified framework* by emphasizing quantum theories' goal: _predict_ time evolution of *states and observables*.

== The 11-Dimensional Framework

Time evolution equations map onto 11-dimensional space:

1. Formalism: Operator vs Path Integral
2. Relativity: Non-relativistic, Special, General  
3. Particle Number: Single, Fixed-N, Fock
4. Picture: Schrödinger, Heisenberg, Interaction
5. State Purity: Pure, Mixed
6. System: Closed, Open
7. Spin: Spinless, 1/2, Arbitrary
8. Mass: Massive, Massless
9. Approximation: Exact, Perturbative, Linearized
10. Classical Limit: Quantum, Semiclassical, Classical
11. Solutions: Analytical, Approximate, Numerical

#pagebreak()

= Part 1: Foundations

== Chapter 1: Universal Language

=== Why Time Evolution?

Central question: _How does a quantum system change with time?_

Core Principle: All quantum theories answer through time evolution equations.

Time evolution operator: $U(t) = e^(- i H t / ℏ)$

Variations form 11-dimensional landscape of quantum theories.

=== The 11 Dimensions Overview

*D1: Formalism* - How we express time evolution
*D2: Relativity* - Spacetime symmetries  
*D3: Particle Number* - How many particles
*D4: Picture* - Where time dependence lives
*D5: State Purity* - Completeness of knowledge
*D6: System* - Boundary conditions
*D7: Spin* - Internal angular momentum
*D8: Mass* - Particle properties
*D9: Approximation* - Solution strategy
*D10: Classical Limit* - Quantum-classical transition
*D11: Solutions* - Implementation method

== Chapter 2: The Simplest Case

=== Non-Relativistic Spinless Schrödinger Equation

Elementary Schrödinger Equation:

Time-independent form:
$ - (ℏ^2)/(2m) nabla^2 psi + V(r) psi = E psi $

Time-dependent form:
$ i ℏ (d psi)/(d t) = H psi $

Dimensions: Non-relativistic, Single particle, Schrödinger picture, Pure state, Closed system, Spinless, Massive

==== Operator Formalism

Abstract form:
$ i ℏ frac(d, d t) |psi(t) 〉 = 𝓗(H) |psi(t) 〉 $

Hamiltonian:
$ 𝓗(H) = (𝓗(p)^2)/(2m) + V(r,t) $

==== Formal Solution

For time-independent Hamiltonians:
$ |psi(t) 〉 = e^(- i 𝓗(H) t / ℏ) |psi(0) 〉 $

Time evolution operator $U(t)$ is unitary and preserves probability.

==== Energy Eigenstates

Expand in energy eigenstates when V is time-independent:
$ 𝓗(H) |n 〉 = E_n |n 〉 $

yielding:
$ |psi(t) 〉 = sum_n c_n e^(- i E_n t / ℏ) |n 〉 $

where $c_n = ⟨ n | psi(0) 〉$.

=== The Hydrogen Atom

Hamiltonian for electron orbiting proton:
$ 𝓗(H) = (𝓗(p)^2)/(2m_e) - (k e^2)/r $

Exact solution yields energy levels:
$ E_n = - (13.6 "eV")/(n^2), quad n = 1,2,3,... $

== Chapter 3: Mathematical Foundations

=== Hilbert Space Basics

Quantum states live in complex Hilbert space with:
- Inner product: $⟨ phi | psi 〉$
- Linearity of operators
- Completeness of basis

=== Operators

Hermitian Operators: $𝓗(A)^† = 𝓗(A)$
- Real eigenvalues
- Orthogonal eigenstates
- Complete basis

Unitary Operators: $𝓗(U)^† 𝓗(U) = I$

=== Commutators and Uncertainty

Canonical commutation relations:
$ [𝓗(x)_i, 𝓗(p)_j] = i ℏ delta_(i j) $

Heisenberg uncertainty principle:
$ Delta x cdot Delta p >= (ℏ)/2 $

#pagebreak()

= Part 2: Dimension Variations

== Chapter 4: Pictures

=== Heisenberg Picture

States static, operators evolve:
$ |psi_H(t) 〉 = |psi_H(0) 〉 $

Operators evolve as:
$ 𝓗(A)_H(t) = 𝓗(U)^†(t) 𝓗(A)_S 𝓗(U)(t) $

=== Interaction Picture

For perturbations where $𝓗(H) = 𝓗(H)_0 + 𝓗(H)_I(t)$:

States and operators both evolve relative to unperturbed Hamiltonian.

== Chapter 5: Relativistic Quantum Mechanics

=== Klein-Gordon Equation

From $E^2 = p^2 c^2 + m^2 c^4$:

$ (1/c^2) (∂^2)/(∂ t^2) phi - nabla^2 phi + (m^2 c^2)/ℏ^2 phi = 0 $

Describes spin-0 particles.

=== Dirac Equation

Incorporating spin-1/2:

$ i ℏ (∂ psi)/(∂ t) = (alpha cdot p c + beta m c^2) psi $

Solutions naturally incorporate antiparticles.

== Chapter 6: Quantum Field Theory

=== From Particles to Fields

Second quantization leads to quantum field theory.

Field operators:
$ 𝓗(phi)(r) = integral d^3 p (𝓗(a)_p e^(i p cdot r) + 𝓗(a)_p^† e^(- i p cdot r)) $

Creation and annihilation operators satisfy:
$ [𝓗(a)_p, 𝓗(a)_p^†] = 1 $ (bosons)
$ {𝓗(c)_p, 𝓗(c)_p^†} = 1 $ (fermions)

== Chapter 7: Quantum Electrodynamics

=== Electron-Photon Coupling

Lagrangian:
$ cal(L) = bar(psi)(i gamma^mu (∂_mu - i e A_mu) - m) psi - (1/4) F_(mu nu) F^(mu nu) $

Coupling constant: $alpha ≈ 1/137$

QED is remarkably precise:
- Lamb shift: 1.06 GHz (theory) vs 1.057 GHz (experiment)
- Electron g-factor: agreement to 1 part in $10^12$

== Chapter 8: Open Systems

=== Density Matrix

For mixed states:
$ rho = sum_i p_i |psi_i 〉 ⟨ psi_i| $

Expectation value:
$ ⟨ A 〉 = "Tr"[rho 𝓗(A)] $

=== Master Equations

Lindblad master equation:
$ (d rho_S)/(d t) = - (i)/ℏ [𝓗(H)_S, rho_S] + sum_mu (𝓗(L)_mu rho_S 𝓗(L)_mu^† - (1/2) {𝓗(L)_mu^† 𝓗(L)_mu, rho_S}) $

#pagebreak()

= Part 3: Solution Techniques

== Chapter 9: Perturbation Theory

Time-independent perturbation theory with $𝓗(H) = 𝓗(H)_0 + lambda 𝓗(H)_1$:

$ E_n = E_n^((0)) + lambda E_n^((1)) + lambda^2 E_n^((2)) + ... $

First-order energy correction:
$ E_n^((1)) = ⟨ n^((0)) | 𝓗(H)_1 | n^((0)) 〉 $

== Chapter 10: Path Integrals

=== Feynman Path Integral

$ ⟨ x_f, t_f | x_i, t_i 〉 = integral cal(D)x e^(i S[x] / ℏ) $

where action:
$ S[x] = integral_(t_i)^(t_f) d t ((m)/2 dot(x)^2 - V(x)) $

=== WKB Approximation

For slowly varying potential:
$ psi(x) = (A)/sqrt(p(x)) e^(± i integral p(x) d x / ℏ) $

Tunneling probability:
$ T ≈ e^(- 2 gamma) $

== Chapter 11: Numerical Methods

=== Imaginary Time Evolution

Evolve in imaginary time $tau = i t$ to find ground state:
$ (∂ psi)/(∂ tau) = - 𝓗(H) psi $

Excited states decay as $e^(- E_n tau)$.

=== Quantum Computing

Qubits: $|psi 〉 = alpha |0 〉 + beta |1 〉$

Algorithms:
- Grover: Search in $sqrt(N)$ queries
- Shor: Factor in polynomial time

#pagebreak()

= Part 4: Synthesis

== Chapter 12: Connecting the Dimensions

=== Taxonomy of Quantum Theories

| Theory | Dimensions | Use |
|--------|-----------|-----|
| Quantum Mechanics | Non-rel, Single, Pure | Atoms, molecules |
| QFT | Relativistic, Fock | Particle physics |
| QED | Special rel, Massive | Electromagnetic |
| QCD | Special rel, Massless | Strong force |
| Open Systems | Open, Mixed | Decoherence |

=== The Schrödinger Equation as Lodestar

Universal across all theories:
$ i ℏ (d)/(d t) |psi(t) 〉 = 𝓗(H)(t) |psi(t) 〉 $

Variations:
- Different Hamiltonians
- Different Hilbert spaces
- Different representations
- Different solution methods

== Chapter 13: Open Problems

=== Quantum Gravity

Quantize gravity without pathological infinities.

Approaches:
- String Theory: Extended objects
- Loop Quantum Gravity: Discrete geometry
- Causal Sets: Emergent spacetime

== Chapter 14: Conclusion

=== From Fragmentation to Unity

Quantum mechanics appears as disconnected topics:
- Schrödinger equation
- Dirac equation
- Path integrals
- Quantum field theory
- Quantum computing

The unifying principle: time evolution of states and observables.

The 11-dimensional framework provides:
1. Conceptual scaffolding
2. Predictive power
3. Problem-solving tools
4. Research guidance

=== Final Thought

Quantum mechanics is not mysterious—it's merely different. The "missing big picture" is that quantum theories form coherent whole once viewed through time evolution in 11-dimensional space.

The Schrödinger equation is starting point from which all quantum theories emerge through systematic variation of physical assumptions.

_The quantum world awaits those with right framework to see it clearly._

= Appendix: Key Equations

Schrödinger: $i ℏ (∂ psi)/(∂ t) = 𝓗(H) psi$

Commutation: $[𝓗(x)_i, 𝓗(p)_j] = i ℏ delta_(i j)$

Uncertainty: $Delta x cdot Delta p >= ℏ / 2$

Klein-Gordon: $(Box + m^2) phi = 0$

Dirac: $(i gamma^mu ∂_mu - m) psi = 0$

Partition Function: $Z = "Tr"[e^(- beta 𝓗(H))]$
