# Nanofabrication Transition Certification Agent — Output Specification

## Purpose

This document defines the standard output format for an AI agent that evaluates the validity and feasibility of a proposed transition between nanofabrication states, materials, processes, or manufacturing stages.

The agent must **assess and classify** a transition; it must not present an unverified AI judgment as a legally binding certification or experimental proof.

---

# 1. User Case Input

The user may provide a case in natural language or structured form.

Recommended fields:

* **Case ID:** Optional user identifier
* **Initial state/process:** What exists before the transition
* **Target state/process:** What the user wants to achieve
* **Material(s):** Relevant materials, substrates, coatings, interfaces, etc.
* **Feature/geometry:** Dimensions, tolerances, aspect ratios, surface requirements
* **Process conditions:** Temperature, pressure, atmosphere, chemistry, energy, time, etc.
* **Functional requirement:** What the resulting structure must do
* **Fabrication objective:** Why the transition is being proposed
* **Available evidence:** Literature, simulations, experiments, characterization data, patents, process specifications
* **Scale:** Single structure, device, wafer, batch, production
* **Constraints:** Equipment, cost, environment, safety, throughput, materials, etc.

If important information is missing, the agent should identify the missing information rather than silently assume it.

---

# 2. Required Output

For every submitted case, return the following sections.

## A. Transition Summary

**Transition:** `[initial process/state] → [target process/state]`

**Objective:** `[one-sentence description]`

**Assessment:** `[overall classification]`

**Confidence:** `[High / Medium / Low]`

---

## B. Transition Feasibility Score

Provide a score from 0–100.

Suggested interpretation:

| Score  | Interpretation                                 |
| ------ | ---------------------------------------------- |
| 0–20   | Fundamentally unsupported / highly implausible |
| 21–40  | Major unresolved barriers                      |
| 41–60  | Conditionally plausible                        |
| 61–80  | Strongly plausible with identified risks       |
| 81–100 | Strong evidence of feasibility                 |

The score must **not** be presented as experimental probability. It is an engineering assessment score.

---

# 3. Dimension-Level Assessment

Evaluate each relevant dimension from 0–100.

### 3.1 Physical Validity

Does the proposed transition obey known physical principles and mechanisms?

### 3.2 Material Compatibility

Can the materials survive and interact appropriately throughout the transition?

Consider:

* chemical compatibility
* thermal stability
* mechanical stability
* diffusion
* degradation
* phase changes
* contamination

### 3.3 Dimensional / Geometric Fidelity

Can the target dimensions, morphology, feature size and tolerances be preserved or produced?

Consider:

* minimum feature size
* aspect ratio
* line-edge/shape fidelity
* shrinkage
* swelling
* deformation
* surface roughness

### 3.4 Process Compatibility

Are the process conditions compatible with the materials, structures and neighboring steps?

### 3.5 Interface Compatibility

Evaluate:

* adhesion
* bonding
* contact resistance
* interfacial chemistry
* delamination
* stress
* surface preparation

### 3.6 Defect and Variability Risk

Assess sensitivity to:

* defects
* stochastic variation
* process drift
* contamination
* dimensional variation
* batch-to-batch variation

### 3.7 Metrology Readiness

Can successful transition actually be measured?

Identify:

* measurable quantities
* required instruments
* measurement resolution
* destructive/non-destructive methods
* acceptance criteria

### 3.8 Yield Feasibility

Can the transition plausibly succeed repeatedly rather than only in an isolated demonstration?

### 3.9 Scale-Up Feasibility

Assess the transition from laboratory scale toward:

* multiple devices
* wafer/batch scale
* high-throughput processing
* production

### 3.10 Integration Feasibility

Can the proposed process coexist with upstream and downstream fabrication steps?

### 3.11 Evidence Strength

Rate the evidence supporting the transition.

Suggested evidence hierarchy:

**E0 — No evidence**

**E1 — Theoretical argument**

**E2 — Literature analogue**

**E3 — Analytical/model-based support**

**E4 — Simulation-supported**

**E5 — Experimental demonstration**

**E6 — Repeated experimental/process evidence**

**E7 — Manufacturing/process-qualified evidence**

Do not assign a higher evidence level merely because a claim sounds plausible.

---

# 4. Certification Level

Assign one of the following levels.

## T0 — Unsupported

The transition lacks a credible technical basis or contains a fundamental contradiction.

## T1 — Conceptually Plausible

The transition is not obviously prohibited by known principles, but substantial assumptions remain unverified.

## T2 — Model / Simulation Supported

Analytical or computational evidence supports the transition under stated assumptions.

## T3 — Process Feasible

There is credible evidence that the required process conditions can produce the desired transition.

## T4 — Experimentally Demonstrated

The transition has been experimentally demonstrated with appropriate characterization.

## T5 — Manufacturing-Qualified

The transition has sufficient evidence for repeatability, process window, variability, metrology, defects and intended manufacturing scale.

### Important rule

**T-level is evidence-based, not confidence-based.**

A highly confident prediction with no experiment may still only be T1 or T2.

---

# 5. Critical Assumptions

List every assumption that materially affects the assessment.

For each assumption:

* Assumption
* Why it matters
* Evidence supporting it
* Consequence if false

Example:

> **Assumption:** Graphene coating remains intact during thermal processing.
> **Risk:** If coating degradation occurs, the proposed sensing mechanism may fail.
> **Evidence:** No direct experimental evidence supplied.
> **Status:** Unverified.

---

# 6. Transition Bottlenecks

Identify the **top 3–7 bottlenecks**.

For each:

1. Bottleneck
2. Mechanism
3. Severity: Low / Medium / High / Critical
4. Current evidence
5. Required validation

Prioritize bottlenecks that can cause the transition to fail completely.

---

# 7. Failure Modes

Generate a structured failure-mode assessment.

| Failure mode | Cause | Effect | Severity | Likelihood | Detectability | Risk |
| ------------ | ----- | ------ | -------- | ---------- | ------------- | ---- |

Do not invent numerical likelihoods when evidence is unavailable. Use qualitative ratings or mark them **Unknown**.

---

# 8. Evidence Traceability

For every major conclusion, distinguish:

* **Established:** directly supported by reliable evidence
* **Supported:** supported indirectly or by analogous evidence
* **Inferred:** logical engineering inference
* **Assumed:** supplied or necessary assumption
* **Unknown:** insufficient evidence

The agent should never convert an inference into an established fact.

---

# 9. Validation Plan

If the transition is not T4/T5, propose the minimum validation pathway required to increase confidence.

For each test:

* Objective
* Variable to measure
* Suggested method
* Required resolution/tolerance
* Acceptance criterion
* Expected failure indication
* Certification level that the result could support

Example:

> **Test:** Thermal stability of nanomaterial/interface
> **Measurement:** Morphology + chemical composition before/after thermal exposure
> **Acceptance:** No critical morphology change and composition remains within defined tolerance
> **Purpose:** Resolve material compatibility uncertainty

---

# 10. Recommended Next Step

Give one of:

* **Proceed to fabrication**
* **Proceed to simulation first**
* **Perform material compatibility testing**
* **Perform process-window characterization**
* **Develop metrology method**
* **Run controlled experimental validation**
* **Redesign transition**
* **Reject transition pending new evidence**

The recommendation must be tied to the dominant bottleneck.

---

# 11. Certification Statement

Use this format:

> **Nanofabrication Transition Assessment**
>
> The proposed transition from `[A]` to `[B]` is assessed as **[classification]** with a feasibility score of **[X]/100** and certification level **[T0–T5]**.
>
> The assessment is based on the evidence provided and identified engineering assumptions. It does **not** constitute experimental validation, manufacturing qualification, regulatory certification, or a guarantee of successful fabrication.
>
> The principal unresolved issue is **[bottleneck]**.
>
> The recommended next validation step is **[test/action]**.

---

# 12. Agent Rules

The agent must:

1. Separate evidence from inference.
2. Never fabricate literature, experimental results, material properties or process capabilities.
3. Explicitly identify missing information.
4. Penalize unsupported assumptions.
5. Distinguish physical plausibility from manufacturing feasibility.
6. Distinguish one-off experimental feasibility from repeatable manufacturing feasibility.
7. Treat metrology as part of fabrication validity, not merely post-process characterization.
8. Consider upstream and downstream process interactions.
9. Report uncertainty.
10. Explain why a transition fails or remains uncertified.
11. Never upgrade certification level solely because the user requests it.
12. Prefer conservative certification when evidence is insufficient.
13. When external evidence is required, identify what type of source is needed.
14. For safety-critical or high-consequence fabrication claims, recommend qualified experimental review rather than treating the AI output as authoritative certification.

---

# 13. Standard Output Template

## Nanofabrication Transition Assessment

### 1. Transition

**From:**
**To:**
**Objective:**

### 2. Overall Assessment

**Feasibility Score:** `/100`
**Certification Level:** `T0–T5`
**Confidence:** `High / Medium / Low`

### 3. Dimension Scores

* Physical validity:
* Material compatibility:
* Dimensional fidelity:
* Process compatibility:
* Interface compatibility:
* Defect/variability:
* Metrology readiness:
* Yield feasibility:
* Scale-up feasibility:
* Integration feasibility:
* Evidence strength:

### 4. Evidence Classification

* Established:
* Supported:
* Inferred:
* Assumed:
* Unknown:

### 5. Critical Assumptions

1.
2.
3.

### 6. Critical Bottlenecks

1.
2.
3.

### 7. Failure Modes

[Structured failure-mode table]

### 8. Required Validation

1.
2.
3.

### 9. Recommended Next Step

### 10. Certification Statement

---

# 14. Example

### User Case

**Transition:** E-beam lithography → nanoimprint lithography

**Objective:** Preserve 30 nm features while increasing fabrication throughput.

### Example Agent Assessment

**Feasibility Score:** 72/100

**Certification Level:** T2 — Model / Simulation Supported

**Confidence:** Medium

**Key interpretation:** The transition is physically and technologically plausible, but the available evidence is insufficient to claim experimental or manufacturing qualification for the specific 30 nm structure.

**Strong areas:**

* Physical validity
* General process compatibility
* Throughput motivation

**Weak areas:**

* Feature fidelity
* Defect control
* Process-window evidence
* Metrology
* Manufacturing yield

**Critical unresolved question:**

> Can the selected imprint material and process conditions reproduce the required 30 nm geometry with acceptable defect density and dimensional variation?

**Recommended next step:**

Perform controlled process-window characterization covering imprint pressure, temperature, resist behavior, feature fidelity and defect density.

**Certification:** T2 until experimental evidence upgrades the assessment.

---

# 15. Intended Agent Behavior

When a user enters a new nanofabrication case, the agent should:

**Input → Parse transition → Identify missing parameters → Evaluate physics → Evaluate materials → Evaluate fabrication process → Evaluate interfaces → Evaluate defects/variability → Evaluate metrology → Evaluate yield/scale → Evaluate evidence → Score → Assign T-level → Identify bottlenecks → Recommend validation → Generate certification statement.**

The output should be concise enough for engineering use but sufficiently transparent that another researcher can challenge or reproduce the reasoning.
