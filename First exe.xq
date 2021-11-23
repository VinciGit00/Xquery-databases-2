(:PART 1:)

(:Restituisce il parent di articles-> quindi issue:)
let $x := /SigmodRecord/issue/articles/parent::*
(:return $x:)
 
(:Authors contiene una serie di author:)
(:Come ottenere gli elementi dentro il nodo:)
(:position è un attributo:)
let $x := /SigmodRecord/issue/articles/article/authors/author/@position
(:return $x:) 

(:Mi dice tutti i genitori:)
let $x := /SigmodRecord/issue/articles/article/authors/author/following::*
(:return $x :)

let $x := /SigmodRecord/issue/articles/article/authors/author/..
(:return $x:)

(:Extract only the author with attribute position 0--> we start at counting from 0:)let $x := /SigmodRecord/issue/articles/article/authors/author[1]
(:return $x:)

let $x := SigmodRecord/issue/articles/article/authors/author[count/@position>3]
(:return $x:)

(:Il pipe indica una and:)
let $x := //article/authors | //article/endPage | //article/title
return $x