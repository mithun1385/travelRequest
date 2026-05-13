using {travelapproval as db} from '../db/schema';

service travelService {

    entity Employees      as projection on db.Employees;
    @odata.draft.enabled
    entity TravelRequests as projection on db.TravelRequests;
    entity Approvals      as projection on db.Approvals;
    entity Expenses       as projection on db.Expenses;
    entity Reimbursements as projection on db.Reimbursements;

    action approvelTravel(requestID: UUID)        returns String;
    action rejectTravel(requestID: UUID)          returns String;
    action processReimburasement(requestID: UUID) returns String;

}
