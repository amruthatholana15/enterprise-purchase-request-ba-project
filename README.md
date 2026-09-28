# Enterprise Purchase Request & Approval Process Optimization

## Project Overview

This is an independent Business Analyst portfolio project based on a simulated enterprise purchase request and approval process.

The project demonstrates an end-to-end Business Analysis lifecycle, including stakeholder analysis, AS-IS process analysis, SQL-based data analysis, root cause analysis, gap analysis, TO-BE process design, business requirements, user stories, acceptance criteria, requirements traceability, and UAT planning.

Synthetic data was used to simulate a realistic enterprise environment without using confidential company information.

## Business Problem

Purchase requests were experiencing delays throughout the approval process, while requesters had limited visibility into where requests were pending.

The objective was to analyze the existing process, identify factors associated with approval delays and rework, and propose an improved future-state process.

## Tools & Techniques

- PostgreSQL / Supabase
- SQL
- Excel
- Stakeholder Analysis
- AS-IS / TO-BE Process Analysis
- Root Cause Analysis – 5 Whys
- Gap Analysis
- Business Requirements
- Business Rules
- User Stories & Acceptance Criteria
- Requirements Traceability Matrix (RTM)
- User Acceptance Testing (UAT)

## Dataset

The analysis used synthetic purchase request and workflow data representing a 12-month enterprise procurement process.

- 12,000 purchase requests
- 43,208 workflow events
- Multiple approval stages including Manager, Finance, Procurement, Compliance and Senior Management
- Approval, return and resubmission history

## Key Analysis Findings

- Average end-to-end turnaround for approved requests: approximately **6.8 calendar days**
- **3,510 return events** were identified
- **3,035 unique purchase requests** experienced at least one return
- Approximately **25.3% of all purchase requests** experienced a return
- Returned approved requests averaged approximately **10.6 days** to final approval
- Non-returned approved requests averaged approximately **5.5 days**
- Procurement generated **2,081 return events**
- Finance generated **1,429 return events**
- Common return reasons included missing quotations, incomplete scope of work, insufficient purchase descriptions, incomplete vendor information, incorrect cost centers and missing budget information

## Root Cause Analysis

The analysis identified a significant rework pattern associated with incomplete or incorrect purchase request information.

Stakeholder and process analysis indicated that purchase requirements were fragmented across different guidance sources and that required information and supporting documents were not consistently validated at the initial submission stage.

As a result, incomplete requests could enter the approval workflow and later be returned by Finance or Procurement for correction.

## Proposed TO-BE Process

The proposed future-state process includes:

1. Purchase-type-specific submission requirements
2. Mandatory fields and supporting-document validation before submission
3. Mandatory Manager approval
4. Finance review
5. Automated conditional approval routing
6. Procurement review
7. Clear return reasons and correction workflow
8. Real-time approval status visibility
9. Automated aging reminders and escalation notifications
10. Complete workflow audit history

## Business Impact

The proposed solution aims to reduce avoidable rework, improve submission quality, provide greater approval visibility, and reduce manual follow-up between requesters, managers and approval teams.

## Project Deliverables

This repository contains:

- Stakeholder Analysis
- AS-IS Process
- SQL Analysis
- Data Analysis Findings
- Root Cause Analysis
- Gap Analysis
- TO-BE Process
- Business Requirements
- Business Rules
- User Stories & Acceptance Criteria
- Requirements Traceability Matrix
- UAT Scenarios

## Disclaimer

This is an independent portfolio project created for learning and demonstration purposes. The business scenario and datasets are simulated and do not contain confidential or production data from any employer or organization.
