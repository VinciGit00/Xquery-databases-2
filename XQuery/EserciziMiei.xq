for $e in //publisher
let $book :=//book[publisher = $e]
where count($book)>0
(:return $e:)

(:Provo a fare un'alternativa:)
let $book :=//book
where count($book)>0
(:return 
  <result>
  {$book//publisher}
  </result>:)

(:Meglio usare il for per ogni singolo ciclo:)
for $book in //book[price>50]
(:return 
  <result>
  {$book//publisher}
  </result>:)
  
(:Esempio con il for e il let assieme:)
for $b in //book 
let $e:= $b/*[contains(string(.), "Suciu") (:* -> estrae tutti gli elementi:)
         and ends-with(local-name(.), "or")] (:or preso da authoe:)
where exists($e)
return <book>
        {$b/title}
        {$e}
       </book>
  