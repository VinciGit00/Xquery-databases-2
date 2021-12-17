(:for $x in //article
let $b:= <ciao>{($x/initPage)},
       {($x/endPage)}</ciao>
     
for $a in distinct-values($b)
return $a:)

let $a := (distinct-values(//initPage), distinct-values(//endPage))
return distinct-values($a)

(:let $a := distinct-values((//initPage, //endPage))
return $a:)