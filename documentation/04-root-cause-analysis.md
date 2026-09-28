# Root Cause Analysis

## Problem Statement

Purchase requests are experiencing delays in the approval process, with approved requests taking approximately **6.8 calendar days on average** from initial submission to final approval.

## 5 Whys Analysis

### Why 1: Why are some purchase requests taking longer to reach final approval?

A significant number of requests are returned by Finance or Procurement for correction, creating rework and resubmission cycles.

Data analysis identified **3,510 return events across 3,035 unique purchase requests**.

### Why 2: Why are requests being returned?

Requests contain missing, incomplete, or incorrect information and supporting documentation.

Common return reasons included:

- Missing quotation
- Incomplete scope of work
- Insufficient purchase description
- Incomplete vendor information
- Incorrect purchase category
- Incorrect cost center
- Missing budget information
- Amount mismatch

### Why 3: Why are requesters submitting incomplete or incorrect information?

Requesters do not always have clear visibility into the information and supporting documents required for different purchase types and approval stages.

### Why 4: Why are incomplete requests able to enter the approval workflow?

ProcureFlow does not consistently enforce all applicable mandatory fields and supporting-document requirements before allowing submission.

### Why 5: Why are requirements not consistently enforced at submission?

The current process does not provide a standardized, integrated validation mechanism that brings applicable Finance and Procurement requirements together at the initial submission stage.

## Supporting Data

Approved requests that experienced at least one return had an average end-to-end turnaround of approximately **10.6 days**, compared with approximately **5.5 days** for approved requests that did not experience a return.

This indicates a strong association between rework and longer approval turnaround.

## Root Cause

The analysis indicates that **fragmented purchase-request requirements and insufficient upfront validation allow incomplete or incorrect requests to enter the approval workflow, resulting in downstream returns and rework.**

## Additional Contributors

The analysis also identified longer elapsed times within some workflow stages, particularly Compliance, Procurement and Finance.

Stakeholders also reported workload variation, manual follow-ups, limited status visibility and limited automated reminders.

These may contribute to overall turnaround; however, they were not established as primary root causes through the completed analysis and should be treated as additional areas for further investigation.
