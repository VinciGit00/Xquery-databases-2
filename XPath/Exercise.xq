let $x := //article/authors/author[@position=3]
let $x := //article/authors/author[position()=2]
let $x := //article/authors/author[position()="2"]let $x := //article/authors/author[2]
let $x := //article/authors/author[last()]

let $x := distinct-values(//article/authors/author[last()])


(:count degli autori:)
let $x := count(distinct-values(//article/authors/author[last()]))

(::)

(:Queery interessante:)
let $x := //authors[count(author)<2]/../title

(:Questa non funziona:)
(:let $x := //authors[count(author)<2]/article/title:)
      
(:Carina come cosa XD :)
let $x := //authors[position()<2]/../title
return $x