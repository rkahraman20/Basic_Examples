
CREATE DATABASE SQLExamples

USE SQLExamples

CREATE TABLE tree(
	[node] TINYINT,
	parent TINYINT NULL
);

INSERT tree VALUES (1, 2), (2, 5), (3, 5), (4, 3), (5, NULL)

SELECT * FROM tree;

WITH join_table AS
	(SELECT a.[node] a_node, a.parent a_parent, b.[node] b_node, b.parent b_parent
	FROM tree a LEFT JOIN tree b
	ON a.parent = b.[node])

SELECT a_node [node],
	CASE
		WHEN b_node IS NULL AND b_parent IS NULL THEN 'Root'
		WHEN b_node IS NOT NULL AND b_parent IS NOT NULL THEN 'Leaf'
		ELSE 'Inner'
	END AS [label]
FROM join_table;