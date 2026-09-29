# User Stories & Acceptance Criteria

## US-01 – Guided Purchase Request Submission

**User Story**

As a requester, I want to see the required fields and supporting documents based on the selected purchase type so that I can submit a complete purchase request.

**Acceptance Criteria**

- The system shall display applicable mandatory fields based on the selected purchase type.
- The system shall display applicable supporting-document requirements.
- Submission shall be blocked when mandatory information is missing.
- A clear validation message shall identify missing information.

---

## US-02 – Manager Approval

**User Story**

As a Manager, I want to review purchase requests submitted by my team so that I can approve or reject the business need.

**Acceptance Criteria**

- Every submitted purchase request shall route to the appropriate Manager.
- The Manager shall be able to approve or reject the request.
- A rejection shall require a reason.
- Approved requests shall proceed to Finance.

---

## US-03 – Return Request for Correction

**User Story**

As a Finance or Procurement approver, I want to return an incomplete or incorrect purchase request with a clear reason so that the requester knows what needs to be corrected.

**Acceptance Criteria**

- The approver shall be able to return a request.
- A return reason shall be mandatory.
- The requester shall receive notification of the return.
- Previously entered information shall be retained.
- The requester shall be able to correct and resubmit the request.

---

## US-04 – Approval Status Tracking

**User Story**

As a requester, I want to view the current approval stage of my purchase request so that I know where it is pending without manually contacting my Manager.

**Acceptance Criteria**

- The requester shall be able to view the current request status.
- The current approval stage shall be displayed.
- The latest workflow action shall be visible.
- Status information shall update following workflow actions.

---

## US-05 – Automated Approval Reminders

**User Story**

As an approver, I want to receive reminders for purchase requests pending beyond the defined timeline so that overdue requests can be addressed.

**Acceptance Criteria**

- The system shall calculate the age of pending approvals.
- Reminders shall be triggered according to defined business timelines.
- The reminder shall identify the purchase request and current approval stage.
- Escalation shall occur according to approved escalation rules when applicable.

---

## US-06 – Conditional Approval Routing

**User Story**

As the business, I want purchase requests to be automatically routed to the appropriate additional approval stages based on defined business rules so that required approvals are consistently applied.

**Acceptance Criteria**

- Routing shall evaluate applicable purchase amount, purchase type, vendor and compliance conditions.
- Requests meeting defined conditions shall route to the appropriate additional approver.
- Requests not meeting those conditions shall bypass the unnecessary approval stage.
- Routing actions shall be recorded in the workflow history.


## US-AI-01 – AI-Assisted Document Validation

As a requester, I want AI assistance to review my uploaded supporting documents before submission so that I can identify and correct missing information before the purchase request enters the approval workflow.
## Note

Exact approval thresholds, reminder timelines and escalation conditions would require stakeholder confirmation before implementation.
