- Enterprise Purchase Request & Approval Process Optimization
-- SQL Analysis
-- Database: PostgreSQL / Supabase


-- 1. Daily Purchase Request Volume

SELECT
    submitted_at::date AS request_date,
    COUNT(*) AS total_requests
FROM purchase_requests
GROUP BY submitted_at::date
ORDER BY request_date;


-- 2. Monthly Purchase Request Volume

SELECT
    DATE_TRUNC('month', submitted_at) AS request_month,
    COUNT(*) AS total_requests
FROM purchase_requests
GROUP BY DATE_TRUNC('month', submitted_at)
ORDER BY request_month;


-- 3. Purchase Requests by Department

SELECT
    department,
    COUNT(*) AS total_requests
FROM purchase_requests
GROUP BY department
ORDER BY total_requests DESC;


-- 4. Purchase Requests by Purchase Type

SELECT
    purchase_type,
    COUNT(*) AS total_requests
FROM purchase_requests
GROUP BY purchase_type
ORDER BY total_requests DESC;


-- 5. Sample End-to-End Turnaround Time

SELECT
    pr_id,
    submitted_at,
    final_approved_at,
    final_approved_at::timestamptz - submitted_at AS turnaround_time
FROM purchase_requests
WHERE final_status = 'Approved'
LIMIT 10;


-- 6. Average End-to-End Turnaround Time

SELECT
    AVG(final_approved_at::timestamptz - submitted_at) AS avg_turnaround
FROM purchase_requests
WHERE final_status = 'Approved';


-- 7. Average Turnaround by Workflow Stage

SELECT
    stage,
    AVG(action_at - stage_received_at) AS avg_stage_time
FROM workflow_history
GROUP BY stage
ORDER BY avg_stage_time DESC;


-- 8. Average Stage Turnaround in Hours

SELECT
    stage,
    ROUND(
        AVG(EXTRACT(EPOCH FROM (action_at - stage_received_at)) / 3600),
        2
    ) AS avg_stage_hours
FROM workflow_history
GROUP BY stage
ORDER BY avg_stage_hours DESC;


-- 9. Total Return Events

SELECT
    COUNT(*) AS total_returns
FROM workflow_history
WHERE action = 'Returned';


-- 10. Return Reasons

SELECT
    return_reason,
    COUNT(*) AS total_returns
FROM workflow_history
WHERE action = 'Returned'
GROUP BY return_reason
ORDER BY total_returns DESC;


-- 11. Returns by Workflow Stage

SELECT
    stage,
    COUNT(*) AS total_returns
FROM workflow_history
WHERE action = 'Returned'
GROUP BY stage
ORDER BY total_returns DESC;


-- 12. Return Reasons by Workflow Stage

SELECT
    stage,
    return_reason,
    COUNT(*) AS total_returns
FROM workflow_history
WHERE action = 'Returned'
GROUP BY stage, return_reason
ORDER BY stage, total_returns DESC;


-- 13. Unique Purchase Requests That Experienced a Return

SELECT
    COUNT(DISTINCT pr_id) AS unique_returned_requests
FROM workflow_history
WHERE action = 'Returned';


-- 14. Returned vs Non-Returned Approval Turnaround

SELECT
    CASE
        WHEN wh.pr_id IS NOT NULL THEN 'Returned'
        ELSE 'Not Returned'
    END AS return_status,

    AVG(
        pr.final_approved_at::timestamptz - pr.submitted_at
    ) AS avg_turnaround

FROM purchase_requests pr

LEFT JOIN (
    SELECT DISTINCT pr_id
    FROM workflow_history
    WHERE action = 'Returned'
) wh
ON pr.pr_id = wh.pr_id

WHERE pr.final_status = 'Approved'

GROUP BY return_status;
