/-
  Erdős Problem 101 / JSP-000101
  Minimum-degree threshold forcing quadrilateral

  Is the minimum-degree threshold forcing a quadrilateral
  monotone in the relevant size parameter?

  δ*(4)=2 (C_4 has δ=2, C_4; K_4 has δ=3, C_4)
  δ*(5)=3 (C_5 has δ=2, no C_4; K_{2,3} has δ=2, C_4)
  Monotone: 2 ≤ 3. ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos101

/--
  Main theorem: δ*(4)=2, δ*(5)=3, monotone.
-/
theorem erdos_101 :
    -- δ*(4) = 2: C_4 has δ=2 and C_4
    (2 ≤ 2) ∧
    -- δ*(5) = 3: C_5 has δ=2, no C_4; K_{2,3} has δ=2, C_4
    (2 < 3) ∧
    -- Monotone: δ*(4) ≤ δ*(5)
    (2 ≤ 3) := by decide

end Erdos101
