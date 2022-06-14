
CREATE DATABASE SQLExamples

USE SQLExamples

CREATE TABLE tree(
	[node] TINYINT,
	parent TINYINT NULL
);

INSERT tree VALUES (1, 2), (2, 5), (3, 5), (4, 3), (5, NULL);

SELECT * FROM tree;

SELECT [node],
	CASE
		WHEN parent IS NULL THEN 'Root'
		WHEN [node] NOT IN (SELECT parent FROM tree WHERE parent IS NOT NULL) THEN 'Leaf'
        WHEN [node] IN (SELECT parent FROM tree WHERE parent IS NOT NULL) THEN 'Inner'
    END AS label
FROM tree;