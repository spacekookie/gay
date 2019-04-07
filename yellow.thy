theory ListsProof

imports Main

begin
  datatype ’a list = Nil | Cons ’a "’a list"

  fun app :: "’a list => ’a list => ’a list" where
    "app Nil ys = ys" |
    "app (Cons x xs) ys = Cons x (app xs ys)"

  fun rev :: "’a list => ’a list" where
    "rev Nil = Nil" |
    "rev (Cons x xs) = app (rev xs) (Cons x Nil)"

  value "rev(Cons True (Cons False Nil))"
end