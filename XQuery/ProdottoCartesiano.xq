(:Soluzione con i duplicati:)
for $t in //title,
    $a in //author
(:return
  <result>
    {$t}
  </result>:)

(:Soluzione senza duplicati:)
for $t in //title,
    $a in //author
return distinct-values(
  <result>
    {$t}
  </result>)