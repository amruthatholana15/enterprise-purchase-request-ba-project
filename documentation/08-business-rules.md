# Business Rules

## Objective

The following business rules define the conditions and controls governing the proposed purchase request approval process.

| Rule ID | Business Rule |
|---|---|
| BRUL-01 | Every submitted purchase request must receive Manager approval before proceeding to Finance. |
| BRUL-02 | A purchase request cannot be submitted until all mandatory fields applicable to the selected purchase type are completed. |
| BRUL-03 | Required supporting documents must be attached before submission when applicable to the selected purchase type. |
| BRUL-04 | After Manager approval, the purchase request proceeds to Finance for financial validation. |
| BRUL-05 | Additional Senior Management or Compliance approval shall be triggered according to defined purchase amount, purchase type, vendor, or compliance conditions. |
| BRUL-06 | A returned purchase request must include a return reason and required corrective action. |
| BRUL-07 | Corrected and resubmitted purchase requests shall route according to the applicable workflow rules. |
| BRUL-08 | Purchase requests pending beyond defined approval timelines shall trigger reminder or escalation notifications. |
| BRUL-09 | Requesters shall be able to view the current status and approval stage of their purchase request. |
| BRUL-10 | Approval, rejection, return, correction, and resubmission actions shall be recorded in the workflow audit history. |

## Rules Requiring Stakeholder Confirmation

Before implementation, the following details would need to be confirmed with the relevant business stakeholders:

- Purchase amount thresholds for additional approvals
- Purchase types requiring additional approval
- Vendor conditions requiring additional review
- Compliance-triggering conditions
- Approval reminder timelines
- Escalation timelines
- Routing behavior following significant changes to a returned request

These values were intentionally not assumed in this portfolio project because they would normally be defined and approved by the relevant business stakeholders.
