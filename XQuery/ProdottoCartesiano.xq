for $x in //title,
    $y in //author
    
return distinct-values(<result> (:Permette di eliminare i duplicati:)
  {$x},
  {$y}
</result>)