section basic_prop
    variable { p q r : Prop}

    theorem modus_ponens : (p -> q) -> p -> q  :=
        λ (m : p -> q) (n : p) => m n

    theorem and_intro : p -> q -> p ∧ q :=
        λ (m : p) (n: q) => ⟨m, n⟩

    theorem and_elim_left : p ∧ q -> p :=
        λ (m : p ∧ q) => m.left

    theorem or_intro_left: p -> p ∨ q :=
        λ m : p => Or.inl m

    theorem or_elim: p ∨ q -> (p -> r) -> (q -> r) -> r :=
        λ (m : p ∨ q) (f : p -> r) (g : q -> r) =>
            m.elim f g

    theorem explosion: p -> ¬p -> q :=
        λ (m : p) (n : ¬p) =>
            show q from absurd m n

end basic_prop

section quantification
    variable ( τ : Type )
    variable ( P  Q : τ -> Prop )

    theorem forall_elim : (∀ x : τ, P x) -> (q : τ) -> (P q) :=
           λ (m : ∀ x: τ, P x) (n : q) => m n


end quantification
