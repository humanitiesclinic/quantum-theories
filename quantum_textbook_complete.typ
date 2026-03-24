// Quantum Theories: The Missing Big Picture
// A Complete Textbook with Proper Book Design

// ============================================================================
// DOCUMENT SETUP
// ============================================================================

#set document(
  title: "Quantum Theories: The Missing Big Picture",
  author: "The Unified Framework Collective",
  date: auto,
)

#set page(
  paper: "us-letter",
  margin: (
    inside: 1.5in,
    outside: 1in,
    top: 1in,
    bottom: 1in,
  ),
  numbering: "1",
  number-align: center,
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  lang: "en",
  hyphenate: true,
)

#set par(
  justify: true,
  leading: 0.65em,
  first-line-indent: 1.5em,
)

#set heading(numbering: "1.1")

// Math equation styling
#show math.equation: set text(weight: 400)
#show math.equation.where(block: true): it => {
  v(0.5em)
  it
  v(0.5em)
}

// Heading styling
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  set text(size: 24pt, weight: "bold")
  v(2em)
  it
  v(1.5em)
}

#show heading.where(level: 2): it => {
  v(1.5em)
  set text(size: 16pt, weight: "bold")
  it
  v(1em)
}

#show heading.where(level: 3): it => {
  v(1em)
  set text(size: 13pt, weight: "bold")
  it
  v(0.75em)
}

// Exercise box styling
#let exercise-box(number, body) = {
  rect(
    width: 100%,
    inset: 12pt,
    radius: 4pt,
    fill: rgb("#f0f0f0"),
    stroke: 1pt + rgb("#333333"),
  )[
    *Exercise #number:* #body
  ]
}

// Important concept box
#let concept-box(title, body) = {
  rect(
    width: 100%,
    inset: 12pt,
    radius: 4pt,
    fill: rgb("#e8f4f8"),
    stroke: 2pt + rgb("#1f4e78"),
  )[
    *#title* \
    #body
  ]
}

// Example box
#let example-box(number, body) = {
  rect(
    width: 100%,
    inset: 12pt,
    radius: 4pt,
    fill: rgb("#fff9e6"),
    stroke: 1pt + rgb("#cc9900"),
  )[
    *Example #number:* #body
  ]
}

// ============================================================================
// FRONT MATTER
// ============================================================================

// Half Title Page
#align(center + horizon)[
  #text(size: 28pt, weight: "bold")[
    Quantum Theories
  ]
]

#pagebreak()

// Title Page
#page(numbering: none)[
  #align(center + horizon)[
    #v(2cm)
    
    #text(size: 32pt, weight: "bold")[
      Quantum Theories: \
      The Missing Big Picture
    ]
    
    #v(1cm)
    
    #text(size: 18pt, style: "italic")[
      A Unified Framework for Understanding \
      Quantum Evolution
    ]
    
    #v(2cm)
    
    #line(length: 50%, stroke: 2pt)
    
    #v(2cm)
    
    #text(size: 14pt)[
      The Unified Framework Collective
    ]
    
    #v(1cm)
    
    #text(size: 12pt)[
      2024
    ]
  ]
]

#pagebreak()

// Copyright Page
#page(numbering: none)[
  #v(1fr)
  
  *Quantum Theories: The Missing Big Picture* \
  _A Unified Framework for Understanding Quantum Evolution_
  
  #v(1em)
  
  Copyright © 2024 The Unified Framework Collective
  
  #v(1em)
  
  All rights reserved. No part of this publication may be reproduced, distributed, or transmitted in any form or by any means, including photocopying, recording, or other electronic or mechanical methods, without the prior written permission of the publisher.
  
  #v(1em)
  
  *First Edition*
  
  #v(1em)
  
  ISBN: 978-0-XXXX-XXXX-X (paperback) \
  ISBN: 978-0-XXXX-XXXX-X (ebook)
  
  #v(1em)
  
  Typeset in New Computer Modern using Typst
  
  #v(1em)
  
  Website: https://quantum-theories.org \
  Email: contact\@quantum-theories.org
]

#pagebreak()

// Dedication
#page(numbering: none)[
  #align(center + horizon)[
    #v(4cm)
    
    #text(size: 14pt, style: "italic")[
      To all students who found themselves lost \
      in the fragmented maze of quantum mechanics, \
      and to those who seek the unifying thread \
      that connects all quantum theories.
    ]
    
    #v(4cm)
  ]
]

#pagebreak()

// Epigraph
#page(numbering: none)[
  #align(right + horizon)[
    #v(4cm)
    
    #block(width: 70%)[
      #text(style: "italic")[
        "The underlying physical laws necessary for the mathematical theory of a large part of physics and the whole of chemistry are thus completely known, and the difficulty is only that the exact application of these laws leads to equations much too complicated to be soluble."
      ]
      
      #v(0.5em)
      
      #align(right)[
        — Paul Dirac, 1929
      ]
    ]
    
    #v(4cm)
  ]
]

#pagebreak()

// Table of Contents
#page(numbering: none)[
  #outline(
    title: [Contents],
    indent: auto,
    depth: 2,
  )
]

#pagebreak()

// Preface
#page(numbering: none)[
  = Preface
  
  Quantum mechanics is often presented as a collection of disconnected topics: the Schrödinger equation in introductory courses, the Dirac equation in advanced quantum mechanics, path integrals in field theory, density matrices in statistical mechanics, and quantum algorithms in computer science. Students and researchers alike can feel lost in this fragmented landscape, struggling to see the connections between these various formulations.
  
  This textbook offers a different approach. We present quantum theory through a unified framework based on a simple observation: *all quantum theories fundamentally describe the time evolution of states and observables*. Once this principle is recognized, the apparent complexity dissolves into systematic variations along eleven key dimensions.
  
  These eleven dimensions span:
  
  1. *Formalism* (operator vs. path integral)
  2. *Relativity* (non-relativistic, special, general)
  3. *Particle number* (single, fixed-N, Fock space)
  4. *Picture* (Schrödinger, Heisenberg, interaction)
  5. *State purity* (pure vs. mixed)
  6. *System* (closed vs. open)
  7. *Spin* (spinless, 1/2, arbitrary)
  8. *Mass* (massive vs. massless)
  9. *Approximation* (exact, perturbative, linearized)
  10. *Classical limit* (quantum, semiclassical, classical)
  11. *Solutions* (analytical, approximate, numerical)
  
  By systematically exploring these dimensions, starting from the simplest case (the non-relativistic Schrödinger equation) and building up to the most complex (quantum field theory and quantum gravity), we provide a roadmap through the quantum landscape.
  
  #v(1em)
  
  == Who This Book Is For
  
  This textbook is designed for:
  
  - *Advanced undergraduates* who have completed introductory quantum mechanics and wish to understand the broader landscape
  - *Graduate students* beginning research in quantum physics, chemistry, or related fields
  - *Researchers* seeking a unified perspective on quantum theory
  - *Self-learners* with strong mathematical backgrounds who want to master quantum theory systematically
  
  #v(1em)
  
  == Prerequisites
  
  We assume readers have:
  
  - Solid understanding of linear algebra (vector spaces, matrices, eigenvalues)
  - Multivariable calculus and differential equations
  - Basic exposure to quantum mechanics (at least the Schrödinger equation)
  - Some familiarity with classical mechanics and electromagnetism
  
  #v(1em)
  
  == How to Use This Book
  
  The book is organized into six parts:
  
  *Part I: Foundations* establishes the basic framework and introduces the simplest quantum system.
  
  *Part II: Dimension Variations* explores how changing each dimension transforms the theory.
  
  *Part III: Approximation Methods* provides tools for solving real problems.
  
  *Part IV: Special Cases* covers relativistic quantum mechanics and field theory.
  
  *Part V: Solution Techniques* focuses on practical computational methods.
  
  *Part VI: Unification* synthesizes everything into the complete framework.
  
  Each chapter includes:
  - *Concept boxes* highlighting key ideas
  - *Worked examples* demonstrating applications
  - *Exercises* ranging from straightforward to challenging
  - *Chapter summaries* for review
  
  #v(1em)
  
  == Acknowledgments
  
  We are grateful to the many students whose questions inspired this unified approach, to our colleagues who provided valuable feedback on early drafts, and to the quantum physics community for developing the deep understanding we attempt to synthesize here.
  
  #v(1em)
  
  #align(right)[
    _The Authors_ \
    January 2024
  ]
]

#pagebreak()

// Reset page numbering for main content
#set page(numbering: "1")
#counter(page).update(1)

// ============================================================================
// PART I: FOUNDATIONS
// ============================================================================

#align(center)[
  #v(4cm)
  #text(size: 32pt, weight: "bold")[
    Part I
  ]
  
  #v(1cm)
  
  #text(size: 24pt)[
    Foundations: \
    The Schrödinger Equation as Bedrock
  ]
  
  #v(4cm)
]

#pagebreak()

= Chapter 1: The Universal Language of Quantum Mechanics

== Introduction

The development of quantum mechanics in the early 20th century represented one of the most profound revolutions in physics. From Planck's quantum hypothesis in 1900 to the complete formulation by Heisenberg, Schrödinger, and Dirac in the 1920s, quantum theory emerged from the necessity to explain phenomena that classical physics could not: blackbody radiation, the photoelectric effect, atomic spectra, and the stability of atoms.

Yet as quantum mechanics matured and expanded into new domains—relativistic particles, many-body systems, quantum fields, quantum information—the theory seemed to fragment into disconnected pieces. Students learn the Schrödinger equation, then separately learn about Heisenberg's matrix mechanics, Feynman's path integrals, density matrices, and quantum field operators. Each formulation appears distinct, with its own mathematical machinery and physical interpretation.

This apparent fragmentation is an illusion. All quantum theories share a common foundation: they describe how quantum systems evolve in time.

== Why Time Evolution?

#concept-box("The Central Question")[
  How does a quantum system change with time?
  
  This deceptively simple question lies at the heart of all quantum theory. Whether we're describing:
  - An electron in a hydrogen atom
  - Photons in a laser cavity  
  - Quarks in a proton
  - Qubits in a quantum computer
  
  The answer always takes the form of a time evolution equation.
]

Consider a quantum system in some initial state $ |psi(0)〉$. The fundamental task of quantum mechanics is to predict the state $ |psi(t)〉$ at any later time $t$. This prediction is accomplished through the *time evolution operator* $U(t)$:

$ |psi(t)〉= U(t) |psi(0)〉$

For an isolated system with time-independent Hamiltonian $hat(H)$, this operator takes the specific form:

$ U(t) = e^(-i hat(H) t \/ ℏ) $

This exponential may look abstract, but it encodes the complete dynamics of the quantum system. The Hamiltonian $hat(H)$ represents the total energy operator, and the factor $i\/ℏ$ ensures the evolution is unitary (probability-preserving).

The time evolution operator satisfies several crucial properties:

1. *Unitarity:* $U^†(t) U(t) = hat(I)$, ensuring probability conservation
2. *Composition:* $U(t_1 + t_2) = U(t_1) U(t_2)$, reflecting time translation symmetry
3. *Infinitesimal form:* $U(t + d t) = hat(I) - (i\/ℏ) hat(H) d t + O(d t^2)$

Expanding the third property and taking the limit $d t → 0$ yields the *time-dependent Schrödinger equation:*

$ i ℏ (d |psi〉)/(d t) = hat(H) |psi〉$

This is the master equation of quantum mechanics. Everything else—every formulation, every quantum theory—is either equivalent to this equation or represents a specific realization of it in particular contexts.

== The 11-Dimensional Framework

Once we recognize that time evolution is the universal language of quantum mechanics, we can map out the full landscape of quantum theories by asking: what can vary in the time evolution equation?

The answer is surprisingly systematic. Quantum theories differ along eleven independent dimensions:

=== Dimension 1: Formalism

*How do we express time evolution?*

The operator formalism, which we've just introduced, uses differential equations and operators on Hilbert space. But there's an equivalent formulation: Feynman's path integral approach, which sums over all possible histories:

$ 〈x_f, t_f | x_i, t_i〉= integral cal(D)x space e^(i S[x]\/ℏ) $

Both formalisms describe the same physics but offer different computational and conceptual advantages. The operator formalism excels at problems with good symmetries and conservation laws. The path integral formalism naturally handles field theory and gauge theories.

=== Dimension 2: Relativity

*What spacetime symmetries govern the system?*

- *Non-relativistic:* Time and space treated differently, Galilean invariance, $E = p^2\/(2m) + V$
- *Special relativistic:* Space and time unified, Lorentz invariance, $E^2 = p^2 c^2 + m^2 c^4$
- *General relativistic:* Curved spacetime, diffeomorphism invariance

Moving from non-relativistic to relativistic theory profoundly changes the Hamiltonian structure and leads to antiparticles and field theory.

=== Dimension 3: Particle Number

*How many particles does the system contain?*

- *Single particle:* One electron, one photon—Hilbert space $cal(H)_1$
- *Fixed-N:* $N$ indistinguishable particles—Hilbert space $cal(H)_N^(±)$ (symmetric or antisymmetric)
- *Fock space:* Variable particle number—$cal(F) = cal(H)_0 ⊕ cal(H)_1 ⊕ cal(H)_2 ⊕ ...$

Fock space is essential for quantum field theory, where particles can be created and annihilated.

=== Dimension 4: Picture

*Where does time dependence reside?*

- *Schrödinger picture:* States evolve, operators static: $ |psi(t)〉= U(t) |psi(0)〉$, $hat(A)_S = "const"$
- *Heisenberg picture:* Operators evolve, states static: $ |psi_H〉= "const"$, $hat(A)_H (t) = U^†(t) hat(A)_S U(t)$
- *Interaction picture:* Both evolve relative to free Hamiltonian

All three pictures are mathematically equivalent—they're just different ways of tracking time dependence. The choice depends on the problem.

=== Dimension 5: State Purity

*Is our knowledge complete?*

- *Pure state:* Complete quantum description via state vector $ |psi〉$
- *Mixed state:* Incomplete knowledge via density matrix $ρ = sum_i p_i |psi_i〉〈psi_i |$

Pure states describe isolated, perfectly prepared systems. Mixed states describe systems entangled with environments or ensembles with classical uncertainty.

=== Dimension 6: System

*Is the system isolated?*

- *Closed system:* No environment, unitary evolution, $U(t)$ preserves purity
- *Open system:* Coupled to environment, non-unitary evolution, master equations

Real systems are always open to some degree. Decoherence—the transition from quantum to classical behavior—results from environmental coupling.

=== Dimension 7: Spin

*What internal angular momentum does the particle have?*

- *Spinless:* Scalar particles (spin-0), Hilbert space $L^2(ℝ^3)$
- *Spin-1/2:* Fermions (electrons, quarks), Hilbert space $L^2(ℝ^3) ⊗ ℂ^2$
- *Arbitrary spin:* Photons (spin-1), gravitons (spin-2), etc.

Spin is purely quantum—it has no classical analog. It emerges naturally from relativistic quantum mechanics.

=== Dimension 8: Mass

*Does the particle have rest mass?*

- *Massive:* $m > 0$, can be at rest, three polarizations for spin-1
- *Massless:* $m = 0$, always moves at $c$, two polarizations (helicity)

Massless particles like photons require relativistic treatment from the start.

=== Dimension 9: Approximation

*How do we solve the equations?*

- *Exact:* Analytical closed-form solutions (rare)
- *Perturbative:* Expand in small parameter $λ$: $E_n = E_n^((0)) + λ E_n^((1)) + λ^2 E_n^((2)) + ...$
- *Linearized:* Keep only first-order terms, valid for weak interactions

Most real problems require approximations. Knowing when and how to approximate is crucial.

=== Dimension 10: Classical Limit

*How does quantum mechanics connect to classical mechanics?*

- *Quantum:* $ℏ$ finite, superposition, interference, entanglement
- *Semiclassical:* $ℏ$ small but non-zero, WKB approximation, $psi ∼ e^(i S\/ℏ)$
- *Classical:* $ℏ → 0$ limit, recover Hamilton-Jacobi equation

The classical limit explains why we don't see quantum effects in everyday life.

=== Dimension 11: Solutions

*How do we implement the calculation?*

- *Analytical:* Exact formulas (hydrogen atom, harmonic oscillator)
- *Approximate:* Series expansions, asymptotic methods, variational principles
- *Numerical:* Discretization, Monte Carlo, density functional theory, tensor networks

Modern quantum mechanics increasingly relies on computational methods for complex systems.

== The Framework in Action

#example-box("1.1")[
  Let's classify a few familiar systems in our 11-dimensional space:
  
  *Hydrogen atom ground state:*
  - D1: Operator formalism
  - D2: Non-relativistic (mostly)
  - D3: Single particle (electron, proton treated as fixed)
  - D4: Schrödinger picture
  - D5: Pure state
  - D6: Closed system
  - D7: Spin-1/2 (electron)
  - D8: Massive
  - D9: Exact solution exists
  - D10: Quantum
  - D11: Analytical
  
  *Photon in QED:*
  - D1: Both operator and path integral used
  - D2: Special relativistic
  - D3: Fock space (photons created/annihilated)
  - D4: Interaction picture (for perturbation theory)
  - D5: Pure state (for single photon)
  - D6: Closed (in vacuum)
  - D7: Spin-1
  - D8: Massless
  - D9: Perturbative (coupling constant $α ≈ 1\/137$)
  - D10: Quantum
  - D11: Approximate (Feynman diagrams)
]

Notice how different these two systems are along almost every dimension! Yet both are described by time evolution equations of the same fundamental form.

== Navigating the Quantum Landscape

The 11-dimensional framework serves multiple purposes:

1. *Conceptual scaffolding:* Understanding where a theory sits in this space helps grasp its essential features and limitations.

2. *Problem-solving guide:* Stuck on a problem? Consider which dimensions are essential and which can be simplified.

3. *Connection finding:* Theories that differ in only one or two dimensions are closely related. Techniques often transfer.

4. *Research directions:* Unexplored combinations of dimensions may represent new physics or useful approximations.

The framework is not merely pedagogical—it reflects the actual structure of quantum theory. The dimensions aren't arbitrary categories but represent genuine physical and mathematical distinctions.

In the chapters that follow, we'll build up the framework systematically. We start with the simplest corner (non-relativistic, single-particle, closed system) and explore each dimension in turn.

== Chapter Summary

- All quantum theories fundamentally describe *time evolution of states and observables*
- The time evolution operator $U(t) = e^(-i hat(H) t \/ ℏ)$ generates quantum dynamics
- The Schrödinger equation $i ℏ (d |psi〉)\/(d t) = hat(H) |psi〉$ is the master equation
- Quantum theories vary systematically along *11 dimensions*:
  1. Formalism 2. Relativity 3. Particle number 4. Picture 5. State purity 6. System
  7. Spin 8. Mass 9. Approximation 10. Classical limit 11. Solutions
- This framework provides conceptual organization and problem-solving strategies
- Different quantum theories are points in this 11-dimensional space

== Exercises

#exercise-box("1.1")[
  Verify that the time evolution operator $U(t) = e^(-i hat(H) t \/ ℏ)$ is unitary by showing $U^†(t) U(t) = hat(I)$. (Hint: Use the property $(e^A)^† = e^(A^†)$ and the fact that $hat(H)$ is Hermitian.)
]

#exercise-box("1.2")[
  Starting from the infinitesimal form $U(t + d t) = hat(I) - (i\/ℏ) hat(H) d t$, derive the Schrödinger equation by applying $U(t + d t)$ to $ |psi(t)〉$ and taking the limit $d t → 0$.
]

#exercise-box("1.3")[
  Classify the following systems in the 11-dimensional framework:
  a) An electron in a magnetic field (spin precession)
  b) A helium atom (two electrons)
  c) A qubit undergoing decoherence
  d) A quantum harmonic oscillator at finite temperature
]

#exercise-box("1.4")[
  Show that the composition property $U(t_1 + t_2) = U(t_1) U(t_2)$ follows from the exponential form of $U(t)$.
]

#exercise-box("1.5")[
  For a two-level system with Hamiltonian $hat(H) = (ℏ ω_0)\/2 σ_z$ where $σ_z$ is the Pauli matrix, calculate $U(t)$ explicitly and find the time evolution of an initial state $ |psi(0)〉= (|0〉+ |1〉)\/sqrt(2)$.
]

#exercise-box("1.6")[
  Explain why moving from non-relativistic to relativistic quantum mechanics (dimension 2) necessitates moving to Fock space (dimension 3). What physical process requires variable particle number in relativistic theories?
]

#exercise-box("1.7")[
  A harmonic oscillator has exact analytical solutions. Explain which dimensions of the framework this statement implicitly specifies. Would these specifications change if we consider an anharmonic oscillator?
]

#exercise-box("1.8")[
  *Challenge:* The correspondence principle states that quantum mechanics reduces to classical mechanics in an appropriate limit. Using the 11-dimensional framework, describe at least three different ways this limit can be taken. (Hint: Consider dimensions 10 and 11, but also think about dimensions 3 and 5.)
]

#pagebreak()

= Chapter 2: The Simplest Case—Non-Relativistic Spinless Schrödinger Equation

== Establishing the Foundation

We begin our systematic exploration at the simplest corner of the 11-dimensional space. This starting point has the following specifications:

- *D1 (Formalism):* Operator
- *D2 (Relativity):* Non-relativistic
- *D3 (Particle number):* Single
- *D4 (Picture):* Schrödinger
- *D5 (State purity):* Pure
- *D6 (System):* Closed
- *D7 (Spin):* Spinless
- *D8 (Mass):* Massive
- *D9-D11:* Will specify for each problem

This corresponds to the *time-dependent Schrödinger equation* for a single spinless particle:

#concept-box("Elementary Schrödinger Equation")[
  Position representation:
  $ i ℏ (∂ psi(bold(r), t))/(∂ t) = -(ℏ^2)/(2m) ∇^2 psi(bold(r), t) + V(bold(r), t) psi(bold(r), t) $
  
  Abstract operator form:
  $ i ℏ (d)/(d t) |psi(t)〉= hat(H) |psi(t)〉$
  
  where $hat(H) = (hat(bold(p))^2)/(2m) + V(hat(bold(r)), t)$ is the Hamiltonian.
]

This equation, first written down by Erwin Schrödinger in 1926, is the foundation upon which all of quantum mechanics rests.

== Mathematical Structure

=== The Hilbert Space

Quantum states live in a complex Hilbert space $cal(H)$. For a single particle in three dimensions, $cal(H) = L^2(ℝ^3)$, the space of square-integrable functions:

$ cal(H) = { psi(bold(r)) : integral_ℝ^3 |psi(bold(r))|^2 d^3 r < ∞ } $

This space has several essential structures:

1. *Inner product:* $〈phi | psi〉= integral_ℝ^3 phi^* (bold(r)) psi(bold(r)) d^3 r$

2. *Norm:* $||psi|| = sqrt(〈psi | psi〉)$

3. *Completeness:* Position eigenstates satisfy $integral d^3 r |bold(r)〉〈bold(r)| = hat(I)$

4. *Probability interpretation:* $|psi(bold(r), t)|^2$ is the probability density for finding the particle at position $bold(r)$ at time $t$

The normalization condition $〈psi | psi〉= 1$ ensures total probability equals one.

=== Operators and Observables

Physical observables correspond to Hermitian (self-adjoint) operators. The most fundamental are:

*Position operator:* $hat(bold(r)) |psi〉→ bold(r) psi(bold(r))$ (multiplication by $bold(r)$)

*Momentum operator:* $hat(bold(p)) = -i ℏ ∇$ in position representation

These satisfy the *canonical commutation relations:*

$ [hat(r)_i, hat(p)_j] = i ℏ δ_(i j) $

All other quantum observables can be built from position and momentum. For example:

- *Angular momentum:* $hat(bold(L)) = hat(bold(r)) × hat(bold(p))$
- *Kinetic energy:* $hat(T) = (hat(bold(p))^2)/(2m)$
- *Total energy:* $hat(H) = hat(T) + V(hat(bold(r)))$

The commutation relations encode fundamental quantum uncertainty. Non-commuting observables cannot be simultaneously determined with arbitrary precision.

== The Time-Independent Schrödinger Equation

When the Hamiltonian has no explicit time dependence, $∂ hat(H)\/∂ t = 0$, we can separate variables:

$ psi(bold(r), t) = phi(bold(r)) e^(-i E t \/ ℏ) $

Substituting into the time-dependent equation yields the *time-independent Schrödinger equation:*

$ hat(H) phi(bold(r)) = E phi(bold(r)) $

This is an eigenvalue problem: we seek energy eigenstates $phi_n$ with energy eigenvalues $E_n$.

The general solution to the time-dependent equation is then:

$ psi(bold(r), t) = sum_n c_n phi_n (bold(r)) e^(-i E_n t \/ ℏ) $

where $c_n = 〈phi_n | psi(0)〉$ are determined by initial conditions.

#concept-box("Energy Eigenstate Expansion")[
  For time-independent Hamiltonians:
  
  1. Solve $hat(H) phi_n = E_n phi_n$ for eigenstates and energies
  2. Expand initial state: $ |psi(0)〉= sum_n c_n |phi_n〉$
  3. Time evolution: Each eigenstate picks up phase $e^(-i E_n t \/ ℏ)$
  4. Result: $ |psi(t)〉= sum_n c_n e^(-i E_n t \/ ℏ) |phi_n〉$
  
  The energy eigenstates are stationary: only their phase changes with time.
]

== Solved Examples: One-Dimensional Systems

Before tackling the three-dimensional hydrogen atom, let's build intuition with exactly solvable one-dimensional problems.

=== The Infinite Square Well

#example-box("2.1")[
  A particle confined to $0 < x < L$ with infinite potential walls:
  
  $ V(x) = cases(
    0 quad & "if" 0 < x < L,
    ∞ quad & "otherwise"
  ) $
  
  *Solution:*
  
  Boundary conditions: $psi(0) = psi(L) = 0$
  
  Inside the well: $-(ℏ^2)/(2m) (d^2 psi)/(d x^2) = E psi$
  
  General solution: $psi(x) = A sin(k x) + B cos(k x)$
  
  Applying $psi(0) = 0$: $B = 0$
  
  Applying $psi(L) = 0$: $k L = n π$, $n = 1, 2, 3, ...$
  
  *Energy eigenvalues:*
  $ E_n = (ℏ^2 π^2 n^2)/(2m L^2) $
  
  *Normalized eigenstates:*
  $ psi_n (x) = sqrt(2\/L) sin((n π x)/L) $
  
  Key features:
  - Quantized energy levels (discrete spectrum)
  - Ground state energy $E_1 = (ℏ^2 π^2)\/(2m L^2) > 0$ (zero-point energy)
  - Higher states have more nodes (oscillations)
]

=== The Harmonic Oscillator

#example-box("2.2")[
  A particle in a quadratic potential $V(x) = (1\/2) m ω^2 x^2$:
  
  The time-independent Schrödinger equation:
  $ -(ℏ^2)/(2m) (d^2 psi)/(d x^2) + (1\/2) m ω^2 x^2 psi = E psi $
  
  *Energy eigenvalues:*
  $ E_n = ℏ ω (n + 1\/2), quad n = 0, 1, 2, ... $
  
  *Eigenstates:* Involve Hermite polynomials $H_n$:
  $ psi_n (x) = (1)/(sqrt(2^n n!)) ((m ω)/(π ℏ))^(1\/4) e^(-m ω x^2 \/ (2ℏ)) H_n (sqrt((m ω)/ℏ) x) $
  
  Key features:
  - Equally spaced energy levels (spacing $ℏ ω$)
  - Ground state: Gaussian $psi_0 (x) ∝ e^(-m ω x^2 \/ (2ℏ))$
  - Minimum uncertainty state: $Δx Δp = ℏ\/2$
  - Classical correspondence at high $n$
]

The harmonic oscillator is arguably the most important exactly solvable problem in quantum mechanics, with applications from molecular vibrations to quantum field theory.

== The Hydrogen Atom: Crown Jewel of Quantum Mechanics

The hydrogen atom—one electron bound to a proton by Coulomb attraction—is the first realistic system exactly solved by quantum mechanics. Its solution validated the entire theory and explained decades of spectroscopic data.

=== The Three-Dimensional Problem

Hamiltonian for the electron (treating proton as infinitely heavy):

$ hat(H) = -(ℏ^2)/(2m_e) ∇^2 - (k e^2)/r $

where $k = 1\/(4π ε_0) ≈ 8.99 × 10^9 "N·m"^2\/"C"^2$ and $r = |bold(r)|$.

The potential $V(r) = -k e^2\/r$ has spherical symmetry, suggesting spherical coordinates $(r, θ, φ)$.

=== Separation in Spherical Coordinates

The Laplacian in spherical coordinates:

$ ∇^2 = (1)/r^2 ∂/(∂r) (r^2 ∂/(∂r)) + (1)/(r^2 sin θ) ∂/(∂θ) (sin θ ∂/(∂θ)) + (1)/(r^2 sin^2 θ) (∂^2)/(∂φ^2) $

Angular part can be separated: $ The wavefunction factors as:

$ psi_(n ℓ m) (r, θ, φ) = R_(n ℓ)(r) Y_ℓ^m (θ, φ) $

where:
- $R_(n ℓ)(r)$ is the radial wavefunction
- $Y_ℓ^m (θ, φ)$ are spherical harmonics (angular part)

=== Quantum Numbers

Three quantum numbers emerge:

1. *Principal quantum number $n$:* $n = 1, 2, 3, ...$ (energy level)

2. *Orbital angular momentum quantum number $ℓ$:* $ℓ = 0, 1, ..., n-1$ (angular momentum magnitude)

3. *Magnetic quantum number $m$:* $m = -ℓ, -ℓ+1, ..., ℓ$ (angular momentum z-component)

Spectroscopic notation: $s(ℓ=0), p(ℓ=1), d(ℓ=2), f(ℓ=3), ...$

=== Energy Spectrum

#concept-box("Hydrogen Atom Energy Levels")[
  $ E_n = -(m_e k^2 e^4)/(2ℏ^2 n^2) = -(13.6 "eV")/n^2, quad n = 1, 2, 3, ... $
  
  The energy depends only on $n$, not on $ℓ$ or $m$ (accidental degeneracy in Coulomb potential).
  
  Degeneracy of level $n$: $sum_(ℓ=0)^(n-1) (2ℓ + 1) = n^2$ states
  
  Ground state ($n=1$): $E_1 = -13.6 "eV"$ (Rydberg energy)
  
  Ionization energy: $E_∞ - E_1 = 13.6 "eV"$
]

This spectrum perfectly matches experimental observations! The success of quantum mechanics in predicting hydrogen's spectrum was a triumph.

=== Radial Wavefunctions

For the first few states:

*Ground state ($n=1, ℓ=0, m=0$):* $1s$ orbital
$ R_(1 0)(r) = 2 (1)/(a_0)^(3\/2) e^(-r\/a_0) $

where $a_0 = (ℏ^2)\/(m_e k e^2) ≈ 0.529 "Å"$ is the Bohr radius.

*First excited state ($n=2$):*
- $2s$ orbital ($ℓ=0$): $R_(2 0)(r) = (1)/(sqrt(2)) (1)/(a_0)^(3\/2) (1 - r\/(2a_0)) e^(-r\/(2a_0))$
- $2p$ orbital ($ℓ=1$): $R_(2 1)(r) = (1)/(2sqrt(6)) (1)/(a_0)^(3\/2) (r)/a_0 e^(-r\/(2a_0))$

The radial probability density $P(r) = r^2 |R_(n ℓ)(r)|^2$ gives the probability of finding the electron at distance $r$.

#example-box("2.3")[
  For the ground state $1s$:
  
  $ P_(1 0)(r) = r^2 |R_(1 0)(r)|^2 = (4 r^2)/a_0^3 e^(-2r\/a_0) $
  
  Most probable radius: $(d P)/(d r) = 0$ gives $r_"max" = a_0$
  
  Average radius: $〈r〉= integral_0^∞ r P(r) d r = (3\/2) a_0$
  
  The electron is most likely found at the Bohr radius!
]

=== Angular Wavefunctions: Spherical Harmonics

The spherical harmonics $Y_ℓ^m (θ, φ)$ describe the angular distribution:

$ Y_ℓ^m (θ, φ) = N_(ℓ m) P_ℓ^m (cos θ) e^(i m φ) $

where $P_ℓ^m$ are associated Legendre polynomials and $N_(ℓ m)$ are normalization constants.

First few:

$ Y_0^0 &= (1)/(sqrt(4π)) quad &("s orbital, spherically symmetric") \
Y_1^0 &= sqrt(3\/(4π)) cos θ quad &("p_z orbital") \
Y_1^(±1) &= ∓sqrt(3\/(8π)) sin θ e^(±i φ) quad &("p_x, p_y orbitals") $

These determine the shapes of atomic orbitals—the familiar $s, p, d, f$ lobes seen in chemistry textbooks.

== Expectation Values and Measurements

For an observable $hat(A)$ in state $ |psi〉$:

$ 〈A〉= 〈psi | hat(A) | psi〉$

In position representation:

$ 〈A〉= integral psi^* (bold(r)) hat(A) psi(bold(r)) d^3 r $

#example-box("2.4")[
  Calculate $〈x〉$ for the hydrogen ground state:
  
  $ psi_(1 0 0)(bold(r)) = (1)/(sqrt(π a_0^3)) e^(-r\/a_0) $
  
  By spherical symmetry, $〈x〉= 〈y〉= 〈z〉= 0$.
  
  But $〈r^2〉= 3a_0^2$ (root-mean-square radius).
  
  For kinetic energy:
  $ 〈T〉= 〈psi | -(ℏ^2)/(2m_e) ∇^2 | psi〉= (ℏ^2)/(2m_e a_0^2) = 13.6 "eV" $
  
  Potential energy:
  $ 〈V〉= 〈psi | -(k e^2)/r | psi〉= -(k e^2)/a_0 = -27.2 "eV" $
  
  Total: $E_1 = 〈T〉+ 〈V〉= -13.6 "eV"$ ✓
  
  Note: $〈T〉= -E_1$ and $〈V〉= 2E_1$ (virial theorem for Coulomb potential)
]

== Time Evolution and Transitions

For a superposition of energy eigenstates:

$ |psi(t)〉= c_1 e^(-i E_1 t\/ℏ) |1s〉+ c_2 e^(-i E_2 t\/ℏ) |2s〉$

The probability densities oscillate at beat frequency $ω = (E_2 - E_1)\/ℏ$.

When an atom in an excited state transitions to a lower state, it emits a photon:

$ ℏ ω_"photon" = E_"upper" - E_"lower" $

For hydrogen:

$ ω_(n → n') = (13.6 "eV")/ℏ (1\/n'^2 - 1\/n^2) $

This explains atomic spectral lines (Lyman, Balmer, Paschen series).

== Beyond the Basics: Corrections and Refinements

The simple Schrödinger equation for hydrogen is remarkably accurate but not perfect. Real atoms require corrections:

1. *Finite nuclear mass:* Replace $m_e$ with reduced mass $μ = (m_e m_p)\/(m_e + m_p)$ (1% correction)

2. *Relativistic effects:* Fine structure from relativistic kinetic energy (~$10^(-4)$ correction)

3. *Spin-orbit coupling:* Interaction between electron spin and orbital angular momentum

4. *Hyperfine structure:* Nuclear spin effects (~$10^(-6)$ correction)

5. *Quantum electrodynamics:* Lamb shift from vacuum fluctuations (~$10^(-6)$ correction)

These refinements, explored in later chapters, showcase how quantum mechanics progressively refines predictions.

== Chapter Summary

- The time-dependent Schrödinger equation $i ℏ (∂psi)/(∂t) = hat(H) psi$ governs non-relativistic quantum dynamics
- For time-independent $hat(H)$, separate variables: $psi(bold(r), t) = phi(bold(r)) e^(-i E t\/ℏ)$
- Time-independent equation $hat(H) phi = E phi$ is an eigenvalue problem
- Infinite square well: quantized energies $E_n ∝ n^2$, particle-in-a-box model
- Harmonic oscillator: equally-spaced levels $E_n = ℏω(n + 1\/2)$, ubiquitous in physics
- Hydrogen atom: three quantum numbers $(n, ℓ, m)$, energy $E_n = -13.6 "eV"\/n^2$
- Spherical harmonics describe angular distribution, radial functions describe distance from nucleus
- Expectation values $〈A〉= 〈psi | hat(A) | psi〉$ predict measurement outcomes
- Time evolution of superpositions leads to oscillating probabilities and photon emission

== Exercises

#exercise-box("2.1")[
  A particle in an infinite square well ($0 < x < L$) is in the state:
  $ psi(x, t) = (1)/(sqrt(2)) psi_1(x) e^(-i E_1 t\/ℏ) + (1)/(sqrt(2)) psi_2(x) e^(-i E_2 t\/ℏ) $
  
  Calculate:
  a) $〈x〉$ as a function of time
  b) The period of oscillation
  c) The probability of measuring energy $E_1$
]

#exercise-box("2.2")[
  For the harmonic oscillator ground state $psi_0(x) = (m ω\/(π ℏ))^(1\/4) e^(-m ω x^2\/(2ℏ))$:
  
  a) Verify normalization: $integral_(-∞)^∞ |psi_0(x)|^2 d x = 1$
  b) Calculate $〈x〉$ and $〈p〉$
  c) Calculate $Δx = sqrt(〈x^2〉- 〈x〉^2)$ and $Δp = sqrt(〈p^2〉- 〈p〉^2)$
  d) Verify $Δx Δp = ℏ\/2$ (minimum uncertainty)
]

#exercise-box("2.3")[
  Show that for the hydrogen atom ground state:
  $ 〈1\/r〉= 1\/a_0, quad 〈r〉= (3\/2) a_0, quad 〈r^2〉= 3a_0^2 $
  
  (Hint: Use $integral_0^∞ r^n e^(-α r) d r = n! \/ α^(n+1)$)
]

#exercise-box("2.4")[
  The first excited state of hydrogen has $n=2$, giving four degenerate states: $|2s〉, |2p_x〉, |2p_y〉, |2p_z〉$.
  
  a) Write the wavefunctions for each state
  b) Calculate the expectation value $〈r〉$ for each
  c) For which states is $〈L_z〉≠ 0$?
]

#exercise-box("2.5")[
  A particle in a box has initial wavefunction:
  $ psi(x, 0) = A x(L - x) quad "for" 0 < x < L $
  
  a) Find normalization constant $A$
  b) Expand in energy eigenbasis: $psi(x, 0) = sum_n c_n psi_n(x)$
  c) Find $c_n$ for the first three terms
  d) Write $psi(x, t)$
]

#exercise-box("2.6")[
  For a particle in a potential $V(x)$, the probability current is:
  $ j(x, t) = (ℏ)/(2m i) (psi^* (∂psi)/(∂x) - psi (∂psi^*)/(∂x)) = "Re"((ℏ)/(m i) psi^* (∂psi)/(∂x)) $
  
  a) Show that continuity equation holds: $(∂|psi|^2)/(∂t) + (∂j)/(∂x) = 0$
  b) For plane wave $psi = A e^(i(k x - ω t))$, calculate $j$
  c) Interpret the result physically
]

#exercise-box("2.7")[
  Calculate the wavelength of light emitted when hydrogen transitions from $n=3$ to $n=2$ (first line of Balmer series). Compare with experimental value 656.3 nm.
]

#exercise-box("2.8")[
  *Challenge:* The virial theorem states that for potential $V(r) ∝ r^n$:
  $ 2〈T〉= n〈V〉$
  
  a) Verify this for the harmonic oscillator ($n=2$)
  b) Verify for hydrogen atom ($n=-1$)
  c) Prove the theorem generally using Ehrenfest's theorem
]

#pagebreak()

