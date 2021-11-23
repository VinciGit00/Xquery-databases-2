(:PART 1:)

(:Restituisce il parent di articles-> quindi issue:)
let $x := /SigmodRecord/issue/articles/article/author/parent::*
(:return $x:)
 
(:Authors contiene una serie di author:)
(:Come ottenere gli elementi dentro il nodo:)
(:position è un attributo:)
let $x := /SigmodRecord/issue/articles/article/authors/author/@position (:Mi stampa tutti quelli che hanno degli attributi:)
(:return $x:) 

(:Mi dice tutti i genitori e i genitori dei genitori:)
let $x := /SigmodRecord/issue/articles/article/authors/author/following::*
(:return $x :)

let $x := /SigmodRecord/issue/articles/article/authors/author/..
(:return $x:)

(:Prendo solo il primo autore anche se ce ne sono più di 1-> primo:)
(:Extract only the author with attribute position 0--> we start at counting from 0:)let $x := /SigmodRecord/issue/articles/article/authors/author[1]

return $x

(:@* -> significa che basta che abbia un attributo qualsiasi:)