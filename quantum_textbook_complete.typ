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


= Chapter 3: Mathematical Foundations of Quantum Mechanics

== Introduction

Before exploring the variations in our 11-dimensional framework, we must establish the mathematical machinery that underlies all of quantum theory. This chapter develops the essential tools: Hilbert spaces, operators, measurement theory, and the foundational postulates of quantum mechanics.

Unlike classical mechanics, where states are points in phase space, quantum states are vectors (or more precisely, rays) in an infinite-dimensional complex vector space. This mathematical structure, combined with the probability interpretation, gives quantum mechanics its distinctive character.

== Hilbert Spaces

=== Definition and Structure

A Hilbert space $cal(H)$ is a complete inner product space over the complex numbers. For quantum mechanics:

#concept-box("Hilbert Space Structure")[
  A Hilbert space must have:
  
  1. *Vector space structure:* Linear combinations of states are states
     $ alpha |psi〉+ beta |phi〉in cal(H) quad "for" alpha, beta in CC$
  
  2. *Inner product:* $〈phi | psi〉in CC$ satisfying:
     - Conjugate symmetry: $〈phi | psi〉= 〈psi | phi〉^*$
     - Linearity: $〈phi | alpha psi_1 + beta psi_2〉= alpha〈phi | psi_1〉+ beta〈phi | psi_2〉$
     - Positive definiteness: $〈psi | psi〉>= 0$ with equality iff $ |psi〉= 0$
  
  3. *Completeness:* Every Cauchy sequence converges
  
  4. *Separability:* Countable dense subset exists (for quantum mechanics)
]

The norm induced by the inner product is $|| psi|| = sqrt(〈psi | psi〉)$.

=== Examples of Hilbert Spaces

*Finite-dimensional:* $CC^n$ with standard inner product
$ 〈phi | psi〉= sum_(i=1)^n phi_i^* psi_i $

Used for spin systems, qubits, finite-level atoms.

*$L^2(RR^3)$:* Square-integrable functions
$ cal(H) = {psi: RR^3 → CC : integral_RR^3 |psi(bold(r))|^2 d^3 r < ∞} $

Inner product:
$ 〈phi | psi〉= integral_RR^3 phi^* (bold(r)) psi(bold(r)) d^3 r $

This is the primary Hilbert space for single-particle quantum mechanics.

*Fock space:* Direct sum for variable particle number
$ cal(F) = CC ⊕ cal(H)_1 ⊕ cal(H)_2 ⊕ ... $

Essential for quantum field theory (covered in Chapter 10).

#example-box("3.1")[
  For a particle in a 1D box of length $L$, the Hilbert space is $L^2([0,L])$.
  
  Energy eigenstates:
  $ psi_n(x) = sqrt(2/L) sin((n pi x)/L), quad n = 1,2,3,... $
  
  These form an orthonormal basis:
  $ 〈psi_m | psi_n〉= integral_0^L psi_m^* (x) psi_n(x) d x = delta_(m n) $
  
  Any state can be expanded:
  $ |psi〉= sum_(n=1)^∞ c_n |psi_n〉, quad c_n = 〈psi_n | psi〉$
]

=== Dirac Notation

Paul Dirac introduced the bra-ket notation, which elegantly separates vectors from functionals:

- *Ket:* $ |psi〉in cal(H)$ is a state vector
- *Bra:* $〈psi |in cal(H)^*$ is the dual (a linear functional)
- *Inner product:* $〈phi | psi〉in CC$ is the action of $〈phi |$ on $ |psi〉$
- *Outer product:* $ |psi〉〈phi |$ is an operator on $cal(H)$

The bra corresponding to $ |psi〉$ is defined by:
$ 〈phi |psi〉≡〈psi | phi〉^* $

This notation makes calculations transparent and emphasizes the physical meaning.

== Operators on Hilbert Space

=== Linear Operators

An operator $hat(A): cal(H) → cal(H)$ is linear if:
$ hat(A)(alpha |psi〉+ beta |phi〉) = alpha hat(A) |psi〉+ beta hat(A) |phi〉$

In Dirac notation, matrix elements are:
$ A_(i j) = 〈phi_i | hat(A) | phi_j〉$

#example-box("3.2")[
  Position operator $hat(x)$ in position representation:
  $ hat(x) psi(x) = x psi(x) $
  
  Acts by multiplication. Matrix element between momentum eigenstates:
  $ 〈p' | hat(x) | p〉= i ℏ (d)/(d p) delta(p - p') $
  
  Momentum operator $hat(p) = -i ℏ d/(d x)$ in position representation:
  $ hat(p) psi(x) = -i ℏ (d psi)/(d x) $
]

=== Hermitian (Self-Adjoint) Operators

The adjoint $hat(A)^†$ of operator $hat(A)$ satisfies:
$ 〈phi | hat(A) psi〉= 〈hat(A)^† phi | psi〉$

An operator is *Hermitian* (or self-adjoint) if $hat(A)^† = hat(A)$.

#concept-box("Fundamental Theorem")[
  Hermitian operators have:
  
  1. *Real eigenvalues:* If $hat(A) |a〉= a |a〉$, then $a in RR$
  
  2. *Orthogonal eigenvectors:* If $hat(A) |a〉= a |a〉$ and $hat(A) |b〉= b |b〉$ with $a ≠ b$, then $〈a | b〉= 0$
  
  3. *Complete basis:* Eigenvectors span the Hilbert space (for bounded operators)
  
  These properties make Hermitian operators suitable for representing physical observables.
]

*Proof of reality:* 
$ a = (〈a | hat(A) | a〉)/(〈a | a〉) = (〈hat(A) a | a〉)/(〈a | a〉) = (〈a | hat(A)^† | a〉)/(〈a | a〉)^* = a^* $

Therefore $a = a^*$, so $a in RR$.

=== Unitary Operators

An operator $hat(U)$ is unitary if:
$ hat(U)^† hat(U) = hat(U) hat(U)^† = hat(I) $

Unitary operators:
- Preserve inner products: $〈hat(U) phi | hat(U) psi〉= 〈phi | psi〉$
- Preserve norms: $||hat(U) psi|| = ||psi||$
- Represent symmetry transformations and time evolution

The time evolution operator $U(t) = e^(-i hat(H) t / ℏ)$ is unitary because $hat(H)$ is Hermitian.

=== Projection Operators

For a normalized state $ |psi〉$, the projection operator is:
$ hat(P)_psi = |psi〉〈psi |$

Properties:
- Hermitian: $hat(P)^† = hat(P)$
- Idempotent: $hat(P)^2 = hat(P)$
- Projects onto subspace spanned by $ |psi〉$

Used extensively in measurement theory.

== Commutators and Uncertainty Relations

=== The Commutator

The commutator of two operators:
$ [hat(A), hat(B)] = hat(A) hat(B) - hat(B) hat(A) $

If $[hat(A), hat(B)] = 0$, the operators commute and can be simultaneously diagonalized.

Key examples:

*Canonical commutation relations:*
$ [hat(x)_i, hat(p)_j] = i ℏ delta_(i j) $

*Angular momentum:*
$ [hat(L)_i, hat(L)_j] = i ℏ epsilon_(i j k) hat(L)_k $

*Harmonic oscillator:*
$ [hat(a), hat(a)^†] = 1 $

where $hat(a) = (hat(x) + i hat(p))/(sqrt(2))$ (in appropriate units).

=== Heisenberg Uncertainty Principle

For any two observables $hat(A)$ and $hat(B)$:

#concept-box("Generalized Uncertainty Relation")[
  $ Delta A dot Delta B >= (1)/(2) |〈[hat(A), hat(B)]〉| $
  
  where:
  - $Delta A = sqrt(〈hat(A)^2〉- 〈hat(A)〉^2)$ is the standard deviation
  - $〈...〉$ denotes expectation value in the state of interest
]

*Proof sketch:*

Define $|alpha〉= (hat(A) - 〈hat(A)〉) |psi〉$ and $ |beta〉= (hat(B) - 〈hat(B)〉) |psi〉$.

By Schwarz inequality:
$ ||alpha||^2 dot ||beta||^2 >= |〈alpha | beta〉|^2 $

The left side gives $(Delta A)^2 (Delta B)^2$.

The right side can be written as:
$ |〈alpha | beta〉|^2 = |〈psi | (hat(A) - 〈hat(A)〉)(hat(B) - 〈hat(B)〉) | psi〉|^2 $

Separating into symmetric and antisymmetric parts:
$ 〈alpha | beta〉= (1)/(2)〈{hat(A), hat(B)}〉+ (1)/(2)〈[hat(A), hat(B)]〉$

where ${hat(A), hat(B)} = hat(A) hat(B) + hat(B) hat(A)$ is the anticommutator.

Using $|z|^2 >= |"Im"(z)|^2 = ((z - z^*) / (2i))^2$:

$ |〈alpha | beta〉|^2 >= ((1)/(2) |〈[hat(A), hat(B)]〉|)^2 $

Therefore:
$ Delta A dot Delta B >= (1)/(2) |〈[hat(A), hat(B)]〉| $

#example-box("3.3")[
  For position and momentum:
  $ [hat(x), hat(p)] = i ℏ $
  
  Therefore:
  $ Delta x dot Delta p >= (ℏ)/(2) $
  
  This is the famous Heisenberg uncertainty principle. It's not a statement about measurement disturbance, but a fundamental property of quantum states.
  
  The minimum uncertainty state (equality) is a Gaussian wavepacket, such as the harmonic oscillator ground state.
]

=== Time-Energy Uncertainty

For time-independent systems, there's a related uncertainty relation:
$ Delta E dot Delta t >= (ℏ)/(2) $

where $Delta t$ is the characteristic time for expectation values to change significantly:
$ Delta t = (Delta A)/(|d〈hat(A)〉\/ d t|) $

This relates energy uncertainty to the timescale of dynamics.

== The Postulates of Quantum Mechanics

Having developed the mathematical framework, we can now state the fundamental postulates:

#concept-box("The Five Postulates")[
  *Postulate 1 (States):* The state of a quantum system is represented by a unit vector $ |psi〉$ in a Hilbert space $cal(H)$. Physically equivalent states differ only by a phase factor $e^(i theta)$.
  
  *Postulate 2 (Observables):* Physical observables correspond to Hermitian operators on $cal(H)$. The possible measurement outcomes are the eigenvalues of the operator.
  
  *Postulate 3 (Measurement):* When measuring observable $hat(A)$ on state $ |psi〉$:
  - The probability of obtaining eigenvalue $a_n$ is $|〈a_n | psi〉|^2$
  - After measurement yielding $a_n$, the state collapses to $ |a_n〉$
  
  *Postulate 4 (Time Evolution):* The time evolution of a closed system is governed by the Schrödinger equation:
  $ i ℏ (d |psi〉)/(d t) = hat(H) |psi〉$
  where $hat(H)$ is the Hamiltonian operator.
  
  *Postulate 5 (Composite Systems):* The Hilbert space of a composite system is the tensor product of the component Hilbert spaces:
  $ cal(H)_"total" = cal(H)_A ⊗ cal(H)_B $
]

These postulates, though concise, contain the entire structure of quantum mechanics. Everything else—interference, entanglement, uncertainty—follows from them.

== Measurement Theory

=== The Born Rule

Given a normalized state $ |psi〉= sum_n c_n |phi_n〉$ where $ |phi_n〉$ are eigenstates of observable $hat(A)$ with eigenvalues $a_n$:

Probability of measuring $a_n$:
$ P(a_n) = |c_n|^2 = |〈phi_n | psi〉|^2 $

Expectation value:
$ 〈hat(A)〉= sum_n a_n P(a_n) = sum_n a_n |〈phi_n | psi〉|^2 = 〈psi | hat(A) | psi〉$

This is the *Born rule*, fundamental to quantum probability.

=== Measurement and Collapse

The measurement process has two distinct aspects:

1. *Probabilistic outcome:* Measurement of $hat(A)$ yields eigenvalue $a_n$ with probability $|〈a_n | psi〉|^2$

2. *State reduction:* After measurement, the state becomes:
   $ |psi〉→ |psi'〉= ( |a_n〉〈a_n | psi〉)/(|〈a_n | psi〉|) = |a_n〉$
   
This "collapse" is instantaneous and non-unitary, unlike Schrödinger evolution.

#example-box("3.4")[
  Stern-Gerlach experiment: Measure spin of electron along $z$-axis.
  
  Initial state: $ |psi〉= (1)/(sqrt(2))(|↑〉+ |↓〉)$
  
  Observable: $hat(S)_z = (ℏ)/(2) σ_z$ with eigenvalues $±ℏ/2$
  
  Probabilities:
  $ P(↑) = |〈↑| psi〉|^2 = 1/2, quad P(↓) = |〈↓| psi〉|^2 = 1/2 $
  
  If measurement yields "spin up" ($+ℏ/2$), state after measurement:
  $ |psi'〉= |↑〉$
  
  Subsequent measurement of $hat(S)_z$ will yield "spin up" with certainty.
]

=== Compatible and Incompatible Observables

Two observables $hat(A)$ and $hat(B)$ are *compatible* if $[hat(A), hat(B)] = 0$.

Compatible observables:
- Can be simultaneously measured
- Share a common eigenbasis
- Uncertainty relation becomes equality: $Delta A dot Delta B = 0$ is possible

Incompatible observables ($[hat(A), hat(B)] ≠ 0$):
- Cannot be simultaneously measured with arbitrary precision
- No common eigenbasis
- Fundamental quantum uncertainty: $Delta A dot Delta B >= (ℏ)/(2) |[hat(A), hat(B)]|$

== Basis Representations

=== Position Representation

Eigenstates of position: $hat(bold(r)) |bold(r)〉= bold(r) |bold(r)〉$

Completeness:
$ integral d^3 r |bold(r)〉〈bold(r)| = hat(I) $

Any state can be expanded:
$ |psi〉= integral d^3 r |bold(r)〉〈bold(r) | psi〉= integral d^3 r psi(bold(r)) |bold(r)〉$

where $psi(bold(r)) = 〈bold(r) | psi〉$ is the position-space wavefunction.

=== Momentum Representation

Eigenstates of momentum: $hat(bold(p)) |bold(p)〉= bold(p) |bold(p)〉$

Completeness:
$ integral d^3 p |bold(p)〉〈bold(p)| = hat(I) $

Momentum-space wavefunction:
$ tilde(psi)(bold(p)) = 〈bold(p) | psi〉$

=== Fourier Transform Connection

The two representations are connected by Fourier transform:

$ tilde(psi)(bold(p)) = (1)/((2pi ℏ)^(3/2)) integral d^3 r space e^(-i bold(p) dot bold(r) / ℏ) psi(bold(r)) $

$ psi(bold(r)) = (1)/((2pi ℏ)^(3/2)) integral d^3 p space e^(i bold(p) dot bold(r) / ℏ) tilde(psi)(bold(p)) $

The overlap between position and momentum eigenstates:
$ 〈bold(r) | bold(p)〉= (1)/((2pi ℏ)^(3/2)) e^(i bold(p) dot bold(r) / ℏ) $

#example-box("3.5")[
  Gaussian wavepacket in position space:
  $ psi(x) = ((2 alpha)/(pi))^(1/4) e^(-alpha x^2) $
  
  Fourier transforming to momentum space:
  $ tilde(psi)(p) = (1)/((2pi alpha ℏ^2))^(1/4) e^(-p^2 / (4 alpha ℏ^2)) $
  
  Also Gaussian! This is why Gaussian states minimize the uncertainty product.
  
  Widths: $Delta x = 1/(2sqrt(alpha))$, $Delta p = sqrt(alpha) ℏ$
  
  Product: $Delta x Delta p = ℏ/2$ ✓ (minimum uncertainty)
]

== Chapter Summary

- Quantum states are vectors in a complex Hilbert space $cal(H)$ with inner product structure
- Key examples: $CC^n$ (finite-dimensional), $L^2(RR^3)$ (single particle), Fock space (field theory)
- Dirac notation separates kets $ |psi〉$ (vectors) from bras $〈psi |$ (dual functionals)
- Physical observables correspond to Hermitian operators with real eigenvalues
- Unitary operators preserve inner products and represent symmetries/time evolution
- Commutator $[hat(A), hat(B)]$ measures non-commutativity, leads to uncertainty relations
- Heisenberg uncertainty: $Delta A Delta B >= (1)/(2) |〈[hat(A), hat(B)]〉|$
- Five postulates encode the complete structure of quantum mechanics
- Born rule: Probability $P(a_n) = |〈a_n | psi〉|^2$, expectation $〈hat(A)〉= 〈psi | hat(A) | psi〉$
- Measurement causes state collapse (reduction) to eigenstate
- Position and momentum representations connected by Fourier transform

== Exercises

#exercise-box("3.1")[
  Prove that the eigenvalues of a Hermitian operator are real. Then prove that eigenvectors corresponding to different eigenvalues are orthogonal.
]

#exercise-box("3.2")[
  Show that the time evolution operator $U(t) = e^(-i hat(H) t / ℏ)$ is unitary given that $hat(H)$ is Hermitian. (Hint: Use $e^(A^†) = (e^A)^†$)
]

#exercise-box("3.3")[
  Calculate the commutator $[hat(x)^2, hat(p)]$ and $[hat(x), hat(p)^2]$. Use these to find $[hat(x)^2, hat(p)^2]$.
]

#exercise-box("3.4")[
  For angular momentum operators satisfying $[hat(L)_i, hat(L)_j] = i ℏ epsilon_(i j k) hat(L)_k$:
  
  a) Show that $[hat(L)^2, hat(L)_z] = 0$ where $hat(L)^2 = hat(L)_x^2 + hat(L)_y^2 + hat(L)_z^2$
  b) What does this imply about simultaneous measurability?
  c) Can $hat(L)_x$ and $hat(L)_z$ be simultaneously measured?
]

#exercise-box("3.5")[
  A particle is in the state:
  $ |psi〉= (3)/(sqrt(50)) |1〉+ (4)/(sqrt(50)) |2〉+ (5)/(sqrt(50)) |3〉$
  
  where $ |n〉$ are energy eigenstates with energies $E_n = n^2 ℏ omega$.
  
  a) Verify normalization
  b) Calculate $〈hat(H)〉$
  c) Calculate $Delta E$
  d) What are the probabilities of measuring each energy?
]

#exercise-box("3.6")[
  Prove the Schwarz inequality: $|〈phi | psi〉|^2 <= 〈phi | phi〉〈psi | psi〉$
  
  (Hint: Consider $〈phi + lambda psi | phi + lambda psi〉>= 0$ for all $lambda in CC$)
]

#exercise-box("3.7")[
  For a state $ |psi〉$ that is NOT an eigenstate of $hat(A)$, show that after measurement of $hat(A)$ yielding eigenvalue $a_n$, a second immediate measurement of $hat(A)$ will yield $a_n$ with probability 1.
]

#exercise-box("3.8")[
  The number operator for harmonic oscillator is $hat(N) = hat(a)^† hat(a)$ where $[hat(a), hat(a)^†] = 1$.
  
  a) Show $[hat(N), hat(a)] = -hat(a)$ and $[hat(N), hat(a)^†] = hat(a)^†$
  b) If $ |n〉$ is eigenstate of $hat(N)$ with eigenvalue $n$, show that $hat(a)^† |n〉$ is eigenstate with eigenvalue $n+1$
  c) Show that $hat(a) |n〉= sqrt(n) |n-1〉$ and $hat(a)^† |n〉= sqrt(n+1) |n+1〉$
]

#exercise-box("3.9")[
  *Challenge:* Derive the time-energy uncertainty relation $Delta E Delta t >= ℏ/2$ where:
  $ Delta t = (Delta A)/(|d〈hat(A)〉/ d t|) $
  
  Start from the standard uncertainty relation for $hat(H)$ and an arbitrary observable $hat(A)$.
]

#exercise-box("3.10")[
  *Challenge:* Consider a qubit in state $ |psi〉= cos(theta/2) |0〉+ e^(i phi) sin(theta/2) |1〉$ (Bloch sphere representation).
  
  a) Calculate $〈hat(sigma)_x〉$, $〈hat(sigma)_y〉$, $〈hat(sigma)_z〉$
  b) Show these form a vector of length 1 (Bloch vector)
  c) For what values of $theta$ and $phi$ is $Delta sigma_x Delta sigma_y$ minimized?
]

#pagebreak()


= Part II: Dimension Variations—Building the Quantum Landscape

#align(center)[
  #v(3cm)
  #text(size: 28pt, weight: "bold")[
    Part II
  ]
  
  #v(1cm)
  
  #text(size: 20pt)[
    Dimension Variations: \
    Building the Quantum Landscape
  ]
  
  #v(3cm)
]

#pagebreak()

= Chapter 4: Pictures of Quantum Mechanics (Dimension 4)

== Introduction

One of the most elegant features of quantum mechanics is that time dependence can be placed in different locations: in the states, in the operators, or split between both. These are called "pictures" of quantum mechanics, and they are all mathematically equivalent—merely different perspectives on the same physics.

The choice of picture is a matter of computational convenience. For some problems, the Schrödinger picture is natural; for others, the Heisenberg or interaction picture simplifies calculations dramatically. Understanding all three pictures and how to transform between them is essential for mastering quantum mechanics.

== The Schrödinger Picture

=== Time Evolution of States

In the Schrödinger picture (the one we've used so far), states evolve in time while operators remain constant:

$ |psi_S(t)〉= U(t) |psi_S(0)〉$

where $U(t) = e^(-i hat(H) t / ℏ)$ is the time evolution operator.

Operators are time-independent:
$ hat(A)_S (t) = hat(A)_S(0) ≡ hat(A)_S $

The Schrödinger equation governs state evolution:
$ i ℏ (d)/(d t) |psi_S(t)〉= hat(H)_S |psi_S(t)〉$

=== Expectation Values

$ 〈hat(A)〉(t) = 〈psi_S(t) | hat(A)_S | psi_S(t)〉$

Time dependence comes entirely from the evolving state $ |psi_S(t)〉$.

== The Heisenberg Picture

=== Time Evolution of Operators

In the Heisenberg picture, we transfer all time dependence to the operators:

States are constant:
$ |psi_H〉= |psi_S(0)〉$

Operators evolve:
$ hat(A)_H(t) = U^†(t) hat(A)_S U(t) = e^(i hat(H) t / ℏ) hat(A)_S e^(-i hat(H) t / ℏ) $

#concept-box("Heisenberg Equation of Motion")[
  Operators in the Heisenberg picture obey:
  
  $ (d hat(A)_H)/(d t) = (i)/(ℏ) [hat(H), hat(A)_H] + ((∂ hat(A)_H)/(∂ t))_"explicit" $
  
  The last term is non-zero only if the operator has explicit time dependence in the Schrödinger picture.
]

*Derivation:*

$ (d hat(A)_H)/(d t) = (d)/(d t) (e^(i hat(H) t / ℏ) hat(A)_S e^(-i hat(H) t / ℏ)) $

Using product rule and $d/(d t) e^(±i hat(H) t / ℏ) = ±(i)/(ℏ) hat(H) e^(±i hat(H) t / ℏ)$:

$ = (i)/(ℏ) hat(H) e^(i hat(H) t / ℏ) hat(A)_S e^(-i hat(H) t / ℏ) - (i)/(ℏ) e^(i hat(H) t / ℏ) hat(A)_S hat(H) e^(-i hat(H) t / ℏ) $

$ = (i)/(ℏ) (hat(H) hat(A)_H - hat(A)_H hat(H)) = (i)/(ℏ) [hat(H), hat(A)_H] $

#example-box("4.1")[
  Free particle Hamiltonian: $hat(H) = (hat(p)^2)/(2m)$
  
  Position operator evolution:
  
  $ (d hat(x)_H)/(d t) = (i)/(ℏ) [hat(H), hat(x)_H] = (i)/(ℏ) [(hat(p)^2)/(2m), hat(x)] $
  
  Using $[hat(p)^2, hat(x)] = -2i ℏ hat(p)$:
  
  $ (d hat(x)_H)/(d t) = (hat(p)_H)/m $
  
  This is the quantum analog of classical velocity! Integrating:
  
  $ hat(x)_H(t) = hat(x)_H(0) + (hat(p)_H(0))/m t $
  
  For momentum:
  $ (d hat(p)_H)/(d t) = (i)/(ℏ) [hat(H), hat(p)_H] = 0 $
  
  So momentum is conserved (as expected for free particle).
]

=== Equivalence of Pictures

Expectation values are picture-independent:

$〈hat(A)〉(t) = 〈psi_H | hat(A)_H(t) | psi_H〉= 〈psi_S(t) | hat(A)_S | psi_S(t)〉$

Proof:
$ 〈psi_H | hat(A)_H(t) | psi_H〉&= 〈psi_S(0) | U^†(t) hat(A)_S U(t) | psi_S(0)〉\
&= 〈U(t) psi_S(0) | hat(A)_S | U(t) psi_S(0)〉\
&= 〈psi_S(t) | hat(A)_S | psi_S(t)〉$

== The Interaction Picture

=== Motivation: Perturbation Theory

For time-dependent perturbations, split the Hamiltonian:
$ hat(H) = hat(H)_0 + hat(H)_"int"(t) $

where:
- $hat(H)_0$ is solvable (eigenstates known)
- $hat(H)_"int"(t)$ is a perturbation

The interaction picture is designed for this situation.

=== Definition

States evolve only due to interaction:
$ |psi_I(t)〉= U_0^†(t) |psi_S(t)〉$

where $U_0(t) = e^(-i hat(H)_0 t / ℏ)$.

Operators evolve due to free Hamiltonian:
$ hat(A)_I(t) = U_0^†(t) hat(A)_S U_0(t) $

Interaction Hamiltonian in interaction picture:
$ hat(H)_I(t) = U_0^†(t) hat(H)_"int"(t) U_0(t) $

=== Equation of Motion

For states:
$ i ℏ (d)/(d t) |psi_I(t)〉= hat(H)_I(t) |psi_I(t)〉$

This is the starting point for time-dependent perturbation theory!

*Derivation:*

$ i ℏ (d)/(d t) |psi_I〉&= i ℏ (d)/(d t) (U_0^† |psi_S〉) \
&= i ℏ ((d U_0^†)/(d t) |psi_S〉+ U_0^† (d |psi_S〉)/(d t)) \
&= hat(H)_0 U_0^† |psi_S〉+ U_0^† hat(H) |psi_S〉\
&= hat(H)_0 |psi_I〉+ U_0^†(hat(H)_0 + hat(H)_"int") |psi_S〉\
&= U_0^† hat(H)_"int" U_0 |psi_I〉= hat(H)_I |psi_I〉$

#concept-box("Picture Summary")[
  *Schrödinger:*
  - States evolve: $ |psi_S(t)〉$
  - Operators static: $hat(A)_S$
  - Equation: $i ℏ d/(d t) |psi_S〉= hat(H) |psi_S〉$
  
  *Heisenberg:*
  - States static: $ |psi_H〉$
  - Operators evolve: $hat(A)_H(t)$
  - Equation: $d/(d t) hat(A)_H = (i)/(ℏ)[hat(H), hat(A)_H]$
  
  *Interaction:*
  - States evolve (from interaction): $ |psi_I(t)〉$
  - Operators evolve (from free part): $hat(A)_I(t)$
  - Equation: $i ℏ d/(d t) |psi_I〉= hat(H)_I |psi_I〉$
]

== Applications

=== Harmonic Oscillator in Heisenberg Picture

Hamiltonian: $hat(H) = ℏ omega (hat(a)^† hat(a) + 1/2)$

Commutators: $[hat(a), hat(a)^†] = 1$, $[hat(H), hat(a)] = -ℏ omega hat(a)$, $[hat(H), hat(a)^†] = ℏ omega hat(a)^†$

Heisenberg equations:
$ (d hat(a)_H)/(d t) = (i)/(ℏ)[hat(H), hat(a)_H] = -i omega hat(a)_H $

Solution:
$ hat(a)_H(t) = hat(a)(0) e^(-i omega t) $

Similarly:
$ hat(a)_H^†(t) = hat(a)^†(0) e^(i omega t) $

Position and momentum:
$ hat(x)_H(t) = sqrt((ℏ)/(2m omega)) (hat(a)_H(t) + hat(a)_H^†(t)) = hat(x)(0) cos(omega t) + (hat(p)(0))/(m omega) sin(omega t) $

This is exactly the classical solution!

#example-box("4.2")[
  Expectation values for coherent state $ |alpha〉$ (eigenstate of $hat(a)$):
  
  $ 〈hat(x)〉(t) = sqrt((2ℏ)/(m omega)) "Re"(alpha e^(-i omega t)) $
  
  $ 〈hat(p)〉(t) = sqrt(2m ℏ omega) "Im"(alpha e^(-i omega t)) $
  
  These oscillate sinusoidally, like a classical particle! This is why coherent states are "most classical."
]

=== Perturbation Theory in Interaction Picture

For weak perturbation, expand:
$ |psi_I(t)〉= |psi_I^((0))(t)〉+ |psi_I^((1))(t)〉+ |psi_I^((2))(t)〉+ ... $

To first order:
$ |psi_I^((1))(t)〉= -(i)/(ℏ) integral_0^t d t' hat(H)_I(t') |psi_I^((0))(t')〉$

If initially in eigenstate $ |i〉$ of $hat(H)_0$:

Transition amplitude to final state $ |f〉$:
$ c_(f i)(t) = 〈f | psi_I(t)〉≈ -(i)/(ℏ) integral_0^t d t' 〈f | hat(H)_I(t') | i〉$

This is the foundation of Fermi's golden rule (Chapter 9).

== Chapter Summary

- Three pictures are mathematically equivalent, differ only in bookkeeping of time dependence
- *Schrödinger picture:* States evolve ($i ℏ d/(d t) |psi〉= hat(H) |psi〉$), operators static
- *Heisenberg picture:* Operators evolve ($d/(d t) hat(A)_H = (i)/(ℏ)[hat(H), hat(A)_H]$), states static  
- *Interaction picture:* Both evolve, useful for perturbation theory
- Transformation: $hat(A)_H(t) = U^†(t) hat(A)_S U(t)$, $ |psi_I(t)〉= U_0^†(t) |psi_S(t)〉$
- Expectation values identical in all pictures
- Heisenberg picture gives classical equations of motion for observables
- Interaction picture natural for time-dependent perturbation theory

== Exercises

#exercise-box("4.1")[
  Verify that $〈hat(A)〉(t) = 〈psi_H | hat(A)_H(t) | psi_H〉= 〈psi_S(t) | hat(A)_S | psi_S(t)〉$ by explicit calculation.
]

#exercise-box("4.2")[
  For free particle with $hat(H) = (hat(p)^2)/(2m)$:
  
  a) Find $hat(p)_H(t)$ using Heisenberg equation
  b) Find $hat(x)_H(t)$ using result from (a)
  c) Calculate commutator $[hat(x)_H(t), hat(p)_H(t)]$
]

#exercise-box("4.3")[
  Show that the Heisenberg equation of motion reduces to Ehrenfest's theorem:
  $ m (d)/(d t)〈hat(x)〉= 〈hat(p)〉, quad (d)/(d t)〈hat(p)〉= -〈(d V)/(d x)〉$
]

#exercise-box("4.4")[
  For harmonic oscillator, verify:
  $ hat(x)_H(t) = hat(x)(0) cos(omega t) + (hat(p)(0))/(m omega) sin(omega t) $
  
  by solving the Heisenberg equations of motion.
]

#exercise-box("4.5")[
  In the interaction picture with $hat(H) = hat(H)_0 + hat(H)_"int"$:
  
  a) Derive: $i ℏ d/(d t) |psi_I〉= hat(H)_I |psi_I〉$
  b) Show: $d/(d t) hat(A)_I = (i)/(ℏ)[hat(H)_0, hat(A)_I] + ((∂ hat(A)_I)/(∂ t))_"explicit"$
]

#exercise-box("4.6")[
  Transform the Pauli matrices $σ_x, σ_y, σ_z$ to the Heisenberg picture for Hamiltonian $hat(H) = (ℏ omega)/2 σ_z$.
  
  Find the time evolution and interpret physically (precession).
]

#pagebreak()

= Chapter 5: Spin and Angular Momentum (Dimension 7)

== Introduction

Spin is perhaps the most purely quantum mechanical concept in physics. Unlike position or momentum, which have classical analogs, spin has no classical counterpart—it emerges naturally only in the relativistic quantum theory developed by Dirac.

Yet spin is ubiquitous: electrons, protons, and neutrons all have spin-1/2; photons have spin-1; and the hypothetical graviton has spin-2. Understanding spin is essential for atomic physics, solid-state physics, nuclear physics, and quantum information.

== Angular Momentum in Quantum Mechanics

=== Commutation Relations

Orbital angular momentum: $hat(bold(L)) = hat(bold(r)) × hat(bold(p))$

Components satisfy:
$ [hat(L)_i, hat(L)_j] = i ℏ epsilon_(i j k) hat(L)_k $

where $epsilon_(i j k)$ is the Levi-Civita symbol.

Any angular momentum (orbital or spin) must satisfy these commutation relations.

#concept-box("General Angular Momentum")[
  For any angular momentum $hat(bold(J))$:
  
  1. Commutators: $[hat(J)_i, hat(J)_j] = i ℏ epsilon_(i j k) hat(J)_k$
  
  2. Total angular momentum squared: $hat(J)^2 = hat(J)_x^2 + hat(J)_y^2 + hat(J)_z^2$
  
  3. Key property: $[hat(J)^2, hat(J)_i] = 0$ for all $i$
  
  This means $hat(J)^2$ and one component (conventionally $hat(J)_z$) can be simultaneously diagonalized.
]

=== Eigenvalues and Eigenstates

Simultaneous eigenstates of $hat(J)^2$ and $hat(J)_z$:
$ hat(J)^2 |j, m〉&= ℏ^2 j(j+1) |j, m〉\
hat(J)_z |j, m〉&= ℏ m |j, m〉$

where:
- $j = 0, 1/2, 1, 3/2, 2, ...$ (integer or half-integer)
- $m = -j, -j+1, ..., j-1, j$ (2j+1 values)

=== Ladder Operators

Define:
$ hat(J)_± = hat(J)_x ± i hat(J)_y $

Properties:
$ [hat(J)_z, hat(J)_±] = ±ℏ hat(J)_± \
[hat(J)_+, hat(J)_-] = 2ℏ hat(J)_z \
hat(J)^2 = hat(J)_+ hat(J)_- + hat(J)_z^2 - ℏ hat(J)_z $

Action on eigenstates:
$ hat(J)_± |j, m〉= ℏ sqrt(j(j+1) - m(m±1)) |j, m±1〉$

These "raise" or "lower" $m$ by one unit.

== Spin-1/2: The Fundamental Case

=== Spin States

For spin-1/2 particles (electrons, protons, neutrons):
- $j = 1/2$
- $m = ±1/2$
- Two basis states: $ |↑〉≡ |1/2, 1/2〉$, $ |↓〉≡ |1/2, -1/2〉$

General state:
$ |psi〉= alpha |↑〉+ beta |↓〉, quad |alpha|^2 + |beta|^2 = 1 $

=== Pauli Matrices

Spin operators for spin-1/2:
$ hat(S)_i = (ℏ)/2 σ_i $

Pauli matrices:
$ σ_x = mat(0, 1; 1, 0), quad σ_y = mat(0, -i; i, 0), quad σ_z = mat(1, 0; 0, -1) $

Properties:
$ σ_i^2 &= I \
{σ_i, σ_j} &= 2 delta_(i j) I \
[σ_i, σ_j] &= 2i epsilon_(i j k) σ_k \
σ_i σ_j &= delta_(i j) I + i epsilon_(i j k) σ_k $

Eigenvectors of $σ_z$:
$ |↑〉= vec(1, 0), quad |↓〉= vec(0, 1) $

#example-box("5.1")[
  Eigenvectors of $σ_x$:
  
  $σ_x |→〉= |→〉$ where $ |→〉= (1)/(sqrt(2))(|↑〉+ |↓〉) = (1)/(sqrt(2)) vec(1, 1)$
  
  $σ_x |←〉= -|←〉$ where $ |←〉= (1)/(sqrt(2))(|↑〉- |↓〉) = (1)/(sqrt(2)) vec(1, -1)$
  
  Similarly for $σ_y$:
  
  $σ_y |⊗〉= |⊗〉$ where $ |⊗〉= (1)/(sqrt(2))(|↑〉+ i |↓〉)$
  
  $σ_y |⊙〉= -|⊙〉$ where $ |⊙〉= (1)/(sqrt(2))(|↑〉- i |↓〉)$
]

=== Spin Precession

In magnetic field $bold(B) = B_0 hat(z)$:
$ hat(H) = -gamma hat(bold(S)) dot bold(B) = -gamma B_0 hat(S)_z = -(ℏ omega_L)/2 σ_z $

where $omega_L = gamma B_0$ is the Larmor frequency.

Time evolution:
$ U(t) = e^(-i hat(H) t / ℏ) = e^(i omega_L t / 2 σ_z) = mat(e^(i omega_L t / 2), 0; 0, e^(-i omega_L t / 2)) $

Initial state $ |→〉= (1)/(sqrt(2))(|↑〉+ |↓〉)$ evolves:

$ |psi(t)〉&= U(t) |→〉= (1)/(sqrt(2))(e^(i omega_L t / 2) |↑〉+ e^(-i omega_L t / 2) |↓〉) \
&= e^(i omega_L t / 2) ((|↑〉+ e^(-i omega_L t) |↓〉))/(sqrt(2)) $

Expectation values:
$ 〈hat(S)_x〉(t) = (ℏ)/2 cos(omega_L t) \
〈hat(S)_y〉(t) = -(ℏ)/2 sin(omega_L t) \
〈hat(S)_z〉(t) = 0 $

The spin precesses around the magnetic field direction!

=== Bloch Sphere

Any spin-1/2 pure state can be written:
$ |psi〉= cos(theta/2) |↑〉+ e^(i phi) sin(theta/2) |↓〉$

where $0 <= theta <= pi$ and $0 <= phi < 2pi$.

Expectation values:
$ 〈σ_x〉= sin theta cos phi \
〈σ_y〉= sin theta sin phi \
〈σ_z〉= cos theta $

These define a unit vector (Bloch vector) on a sphere (Bloch sphere).

- North pole: $ |↑〉$ ($theta = 0$)
- South pole: $ |↓〉$ ($theta = pi$)
- Equator: Superpositions with equal amplitudes

Orthogonal states are antipodal points.

== Higher Spin

=== Spin-1

Three basis states: $ |1, 1〉, |1, 0〉, |1, -1〉$

Spin matrices are $3 times 3$:
$ S_z = ℏ mat(1, 0, 0; 0, 0, 0; 0, 0, -1) $

$ S_x = (ℏ)/(sqrt(2)) mat(0, 1, 0; 1, 0, 1; 0, 1, 0) $

Example: Photon polarization (covered in Chapter 11)

=== General Spin-j

Hilbert space dimension: $2j + 1$

Matrices are $(2j+1) times (2j+1)$

Clebsch-Gordan coefficients needed for addition of angular momenta.

== Addition of Angular Momenta

When combining two angular momenta $hat(bold(J))_1$ and $hat(bold(J))_2$:

Total: $hat(bold(J)) = hat(bold(J))_1 + hat(bold(J))_2$

Quantum numbers:
$ j = |j_1 - j_2|, |j_1 - j_2| + 1, ..., j_1 + j_2 - 1, j_1 + j_2 $

#example-box("5.2")[
  Two spin-1/2 particles:
  
  Individual: $j_1 = 1/2$, $j_2 = 1/2$
  
  Combined: $j = 0$ (singlet) or $j = 1$ (triplet)
  
  *Singlet state* ($j=0, m=0$):
  $ |0, 0〉= (1)/(sqrt(2))(|↑↓〉- |↓↑〉) $
  
  Antisymmetric, total spin zero, important for fermion pairing.
  
  *Triplet states* ($j=1$):
  $ |1, 1〉&= |↑↑〉\
  |1, 0〉&= (1)/(sqrt(2))(|↑↓〉+ |↓↑〉) \
  |1, -1〉&= |↓↓〉$
  
  Symmetric, total spin one.
]

== Stern-Gerlach Experiment

Sequential measurements demonstrate:
1. Quantization of spin
2. Non-commutativity of different spin components
3. State collapse upon measurement

Setup: Beam of silver atoms through inhomogeneous magnetic field.

Force: $bold(F) = nabla(bold(mu) dot bold(B)) ≈ mu_z (d B_z)/(d z) hat(z)$

Result: Beam splits into two (for spin-1/2), corresponding to $m = ±1/2$.

#concept-box("Sequential Stern-Gerlach")[
  1. First SG along $z$: Splits into $|↑_z〉$ and $|↓_z〉$
  2. Block $|↓_z〉$, keep $|↑_z〉$
  3. Second SG along $x$: Splits into $|↑_x〉$ and $|↓_x〉$ with equal probability
  
  This demonstrates:
  - $ |↑_z〉$ is a superposition of $|↑_x〉$ and $|↓_x〉$
  - Measuring $S_x$ destroys information about $S_z$
  - $[S_x, S_z] ≠ 0$ leads to fundamental uncertainty
]

== Chapter Summary

- Angular momentum satisfies $[hat(J)_i, hat(J)_j] = i ℏ epsilon_(i j k) hat(J)_k$, quantized as $ℏ^2 j(j+1)$
- Spin is intrinsic angular momentum with no classical analog
- Spin-1/2: Two states $ |↑〉, |↓〉$, described by Pauli matrices $σ_i$
- Bloch sphere: All pure spin-1/2 states visualized as points on unit sphere
- Spin precesses in magnetic field at Larmor frequency $omega_L = gamma B$
- Ladder operators $hat(J)_±$ raise/lower $m$ by 1: $hat(J)_± |j, m〉∝ |j, m±1〉$
- Addition: Two spin-1/2 → singlet (antisymmetric) + triplet (symmetric)
- Stern-Gerlach experiment demonstrates quantization and measurement collapse

== Exercises

#exercise-box("5.1")[
  Verify the Pauli matrix properties:
  a) $σ_i^2 = I$ for $i = x, y, z$
  b) ${σ_i, σ_j} = 2 delta_(i j) I$
  c) $[σ_i, σ_j] = 2i epsilon_(i j k) σ_k$
]

#exercise-box("5.2")[
  A spin-1/2 particle is in state $ |psi〉= (3)/(5) |↑〉+ (4)/(5) |↓〉$.
  
  a) Is this normalized?
  b) Calculate $〈σ_x〉$, $〈σ_y〉$, $〈σ_z〉$
  c) What are the probabilities of measuring $S_z = +ℏ/2$ and $S_z = -ℏ/2$?
  d) After measuring $S_z = +ℏ/2$, what is the new state?
]

#exercise-box("5.3")[
  Derive the time evolution of expectation values for spin in magnetic field:
  $ (d)/(d t)〈bold(S)〉= gamma〈bold(S)〉× bold(B) $
  
  This is the classical torque equation!
]

#exercise-box("5.4")[
  Find the eigenvectors and eigenvalues of $σ_n = bold(n) dot bold(σ)$ where $bold(n) = (sin theta cos phi, sin theta sin phi, cos theta)$ is a unit vector.
]

#exercise-box("5.5")[
  For two spin-1/2 particles, write out the singlet and triplet states explicitly. Calculate:
  
  a) $〈hat(S)_(1z) hat(S)_(2z)〉$ for each state
  b) $〈hat(bold(S))_1 dot hat(bold(S))_2〉$ for each state
]

#exercise-box("5.6")[
  Verify that $hat(J)_± |j, m〉= ℏ sqrt(j(j+1) - m(m±1)) |j, m±1〉$ for spin-1/2 using the explicit Pauli matrices.
]

#exercise-box("5.7")[
  *Challenge:* Derive the general formula for rotation of a spin-1/2 state by angle $theta$ around axis $hat(n)$:
  $ U(theta, hat(n)) = e^(-i theta hat(n) dot bold(σ) / 2) = cos(theta/2) I - i sin(theta/2) hat(n) dot bold(σ) $
]

#exercise-box("5.8")[
  *Challenge:* For spin-1, construct the matrices $S_x$, $S_y$, $S_z$ and verify the commutation relations.
]

#pagebreak()

