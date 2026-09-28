# TO-BE Purchase Request Process

## Objective

The TO-BE process is designed to reduce avoidable rework, improve submission quality, increase approval visibility, and reduce manual follow-up.

## Proposed Process

### 1. Guided Purchase Request Creation

The requester selects the applicable purchase type.

ProcureFlow displays the required fields and supporting documents relevant to that purchase type.

### 2. Pre-Submission Validation

Before submission, the system validates:

- Mandatory fields
- Required supporting documents
- Purchase-type-specific requirements

If required information is missing, submission is blocked and the requester receives a validation message.

### 3. Manager Approval

Every submitted purchase request is routed to the requester's Manager.

The Manager reviews the business need and either:

- Approves → Request proceeds to Finance
- Rejects → Request closes with a rejection reason

### 4. Finance Review

Finance validates:

- Cost center
- Budget information
- Purchase amount
- Other applicable financial information

If information is incorrect, Finance can return the request with a mandatory return reason.

The requester corrects the required information and resubmits the request.

### 5. Conditional Approval Routing

After Finance approval, ProcureFlow evaluates predefined business rules.

Depending on factors such as:

- Purchase amount
- Purchase type
- Vendor characteristics
- Compliance requirements

the request may automatically route to additional approval stages such as Senior Management or Compliance.

Exact routing thresholds would be confirmed with relevant business stakeholders.

### 6. Procurement Review

Procurement validates applicable purchasing requirements, including:

- Quotation
- Vendor information
- Purchase category
- Purchase description
- Scope of work
- Supporting documentation

If additional correction is required, Procurement returns the request with a clear reason and required corrective action.

### 7. Final Approval

Once all applicable approval stages are completed, the purchase request reaches final approval.

The requester receives confirmation of completion.

## TO-BE Process Flow

Requester Creates PR  
↓  
System Validates Requirements  
↓  
Manager Approval  
↓  
Finance Review  
↓  
Conditional Approval(s), if applicable  
↓  
Procurement Review  
↓  
Final Approval

## Return Flow

Finance / Procurement Identifies Issue  
↓  
Return Reason Recorded  
↓  
Requester Notified  
↓  
Existing Information Retained  
↓  
Requester Corrects Required Information  
↓  
Request Resubmitted  
↓  
Workflow Continues According to Routing Rules

## Additional Improvements

The proposed process also includes:

- Real-time approval status visibility
- Current approval-stage visibility
- Automated aging reminders
- Escalation notifications based on defined timelines
- Clear return reasons and corrective actions
- Complete workflow audit history

## Expected Business Benefits

The proposed process is expected to:

- Reduce avoidable returns and rework
- Improve first-time submission quality
- Reduce manual follow-up
- Improve process transparency
- Improve approval traceability
- Support more consistent processing

These are expected benefits of the proposed design and were not measured as realized benefits because the TO-BE solution was not implemented in this portfolio project.
