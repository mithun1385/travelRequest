using {travelapproval as db} from '../db/schema';

service travelService {

    entity Employees      as projection on db.Employees;

    @odata.draft.enabled
    entity TravelRequests as projection on db.TravelRequests actions {

    action approvelTravel(
        approvalStatus : String,
        comments       : String,
        status         : String
    ) returns String;

      action rejectTravel( 
        approvalStatus : String,
        comments       : String
      )          returns String;

};

    entity Approvals      as projection on db.Approvals;
    entity Expenses       as projection on db.Expenses;
    entity Reimbursements as projection on db.Reimbursements actions{
        action createreimbursement( 
            paymentDate: Date,
            paymentStatus: String,
            reimbursementAmount: Decimal
         ) returns String;
    };
 


  
    action processReimburasement(requestID: UUID) returns String;

}
