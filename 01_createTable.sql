select * from veterinario;

select DISTINCT nome
from veterinario;

Delete from veterinario
where id_veterinario = 4;

update  cliente
 set nome = 'Maria';

select * from cliente;

--ordenar

select * from pet 
Order BY nome;

select * from consulta
Order BY data ASC;

-- quantas consultas cada veterinario fez

select
    v.nome AS veterinario,
    COUNT(c.id_consulta) AS Total_consultas
FROM consulta c
JOIN veterinario v ON v.id_veterinario = c.id_veterinario
Order BY v.nome;

SELECT 
    v.nome AS veterinario,
    COUNT(c.id_consulta) AS Total_consultas
FROM consulta c
JOIN veterinario v 
    ON v.id_veterinario = c.id_veterinario
GROUP BY v.nome
HAVING COUNT(c.id_consulta) > 1
ORDER BY v.nome;
