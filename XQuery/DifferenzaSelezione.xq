(:Questo ritorna tutti i valori del libro:)
for $a in //book
where $a/price = 39.95
(:return <result>
   {$a}
</result>:)

(:Entrambe le query indicano la stessa cosa:)
for $a in //book[price = 39.95] (:più comodo questo:)
(:return <result>
   {$a}
</result>:)

for $a in //book/price = 39.95 (:ritorna un boolean:)
(:return <result>
   {$a}
</result>:)

let $a := //book[price = 39.95]
(:return <result>
   {$a}
</result>:)

let $a := //book
where $a/price = 39.95
return <result>
   {$a}
</result>