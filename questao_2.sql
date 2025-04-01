-- Puxamos os dados do departamento e os salários dos funcionários
SELECT 
    d.name AS nome_departamento,  -- Nome do departamento bonitinho
    COUNT(e.id) AS total_funcionarios,  -- Quantidade de funcionários no setor
    ROUND(COALESCE(AVG(e.salary), 0), 2) AS media_salarial,  -- Média salarial desse setor, arredondada para duas casas
    COALESCE(MAX(e.salary), 0) AS maior_salario,  -- O maior salário encontrado nesse departamento
    COALESCE(MIN(e.salary), 0) AS menor_salario  -- O menor salário encontrado nesse departamento
FROM employees e  -- Pegamos os funcionários
JOIN departments d ON e.department_id = d.id  -- Ligamos com a tabela de departamentos para saber onde cada um trabalha
GROUP BY d.name  -- Agrupamos por departamento, para calcular os valores certos para cada um
ORDER BY media_salarial DESC;  -- Organizamos tudo, colocando os departamentos que pagam melhor primeiro
