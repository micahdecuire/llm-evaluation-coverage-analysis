-- LLM Evaluation Coverage Analysis
-- This query identifies prompts with little or no evaluation coverage
-- by counting evaluation records per prompt version.

SELECT 
    p.prompt_version,
    COUNT(e.eval_id) AS evaluation_count
FROM prompts p
LEFT JOIN evaluations e
  ON p.prompt_id = e.prompt_id
GROUP BY p.prompt_version
ORDER BY evaluation_count ASC;

-- Evaluation coverage by prompt version and category

SELECT 
    p.prompt_version,
    p.category,
    COUNT(e.eval_id) AS evaluation_count
FROM prompts p
LEFT JOIN evaluations e
  ON p.prompt_id = e.prompt_id
GROUP BY p.prompt_version, p.category
ORDER BY evaluation_count ASC;

