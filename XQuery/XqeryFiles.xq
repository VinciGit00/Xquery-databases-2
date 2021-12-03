for $x in /bib/book
where $x[@year="2000"]
(:return $x:)

(:Oppure:)
for $x in /bib/book[@year="2000"]

(:return $x:)

let $x := /bib/book[@year="2000"]
(:return $x:)

(:Con il where cambia la situazione:)
let $x := /bib/book
where $x[@year="2000"]
(:return $x:)

for $x in /bib/book[@year>=1994]
order by $x/title (:N.B: l'order by va con il for e mai con il let:)
(:return $x:)

for $x in //book
where $x/title="Data on the Web" (:Al posto di usare una condizione for e let:)
(:return count($x/author):)

(:Filtering condition:)
for $book in //editor/last
where $book = "Gerbarg" and
$book/../../price="129.95"
return <return>
        {$book/text()}
        </return>


(:2 query uguali:)
for $x in //book
let $y := $x/*[contains(string(.),"Suciu") and ends-with(local-name(.), "or")]
where exists($y)
return $x

for $x in //book
where $x/*[contains(string(.),"Suciu") and ends-with(local-name(.), "or")]
return $x


