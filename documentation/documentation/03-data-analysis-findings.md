# Data Analysis Findings

## Analysis Objective

The purpose of the data analysis was to understand purchase request volumes, approval turnaround times, workflow-stage delays, and the extent and nature of rework within the approval process.

The analysis was performed using PostgreSQL in Supabase on synthetic purchase request and workflow-history data.

## Dataset Overview

- Purchase Requests: 12,000
- Workflow Events: 43,208
- Analysis Period: 12 months

## Key Findings

### 1. Overall Approval Turnaround

Approved purchase requests had an average end-to-end turnaround time of approximately:

**6.8 calendar days**

This measures the time between initial submission and final approval.

### 2. Average Workflow Stage Time

| Stage | Average Elapsed Time |
|---|---:|
| Compliance | 50.54 hours |
| Procurement | 44.24 hours |
| Finance | 40.27 hours |
| Senior Management | 39.45 hours |
| Manager | 33.25 hours |

Compliance had the highest average elapsed stage time, followed by Procurement and Finance.

These results identify areas for further investigation but do not independently establish root cause.

### 3. Return Events

A total of:

**3,510 return events**

were identified in the workflow history.

Because one purchase request can be returned more than once, return events were also analyzed at the unique request level.

### 4. Unique Requests Experiencing Returns

**3,035 unique purchase requests** experienced at least one return.

This represents approximately:

**25.3% of the 12,000 purchase requests.**

### 5. Returns by Stage

| Stage | Return Events |
|---|---:|
| Procurement | 2,081 |
| Finance | 1,429 |

Procurement accounted for approximately 59% of all recorded return events.

### 6. Most Common Return Reasons

| Return Reason | Return Events |
|---|---:|
| Missing quotation | 749 |
| Incomplete scope of work | 443 |
| Insufficient purchase description | 419 |
| Incomplete vendor information | 417 |
| Incorrect purchase category | 412 |
| Incorrect cost center | 393 |
| Missing budget information | 351 |
| Amount mismatch | 326 |

The return patterns differed between Finance and Procurement.

Finance returns were primarily associated with financial information such as cost center, budget information, quotation and amount accuracy.

Procurement returns were primarily associated with scope, purchase description, vendor information, purchase category and quotation.

### 7. Returned vs Non-Returned Requests

Among requests that ultimately received final approval:

- Returned requests averaged approximately **10.6 days**
- Requests that were not returned averaged approximately **5.5 days**

Requests experiencing a return therefore had approximately **5 additional calendar days of average end-to-end turnaround**.

This demonstrates a strong association between rework and longer approval turnaround. However, the analysis does not assume that returns alone caused the entire difference, as returned requests may also differ in complexity.

## Analysis Conclusion

The data identified a significant rework pattern within the purchase request process.

A substantial number of requests were returned by Finance or Procurement for missing, incomplete, or incorrect information, and approved requests that experienced returns had considerably longer average turnaround times than requests that progressed without a return.

These findings were used together with stakeholder and process analysis to support the subsequent Root Cause Analysis and Gap Analysis.
