(:for $x in //book
let $y := $x/author
where $x/title = "Data on the Web"
return count(distinct-values($y)):)

(:Alternativa:)
(:Con il for considero un libro per volta:)
for  $x in //book
where $x/title = "Data on the Web"
return count(distinct-values($x/author))
