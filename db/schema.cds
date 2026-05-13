namespace travelapproval;

using {cuid} from '@sap/cds/common';

entity Employees : cuid {

    name        : String(50);
    email       : String(100);
    department  : String(50);
    designation : String(50);

}

entity TravelRequests : cuid {

    destination    : String(100);
    purpose        : String(50);
    startDate      : Date;
    endDate        : Date;
    transportation : String(50);
    status         : String(30);
    estimationCost : String(50);
    employee       : Association to Employees;
}

entity Approvals : cuid {

    approvalName   : String(100);
    approvalStatus : String(30);
    comments       : String(10);
    status         : String(30);

    travelRequest  : Association to TravelRequests;
}

entity Expenses : cuid {
    expenseType   : String(50);
    amount        : Integer;
    description   : String(50);

    travelRequest : Association to TravelRequests;
}

entity Reimbursements : cuid {

    reimbursementAmount : String(50);
    paymentStatus       : String(30);
    paymentDate         : Date;

    travelRequest       : Association to TravelRequests;

}
