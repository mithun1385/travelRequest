using travelService as service from '../../srv/cat-service';
annotate service.TravelRequests with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Destination',
                Value : destination,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Purpose',
                Value : purpose,
            },
            {
                $Type : 'UI.DataField',
                Label : 'StartDate',
                Value : startDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EndDate',
                Value : endDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Transportation',
                Value : transportation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EstimationCost',
                Value : estimationCost,
            },
            {
                $Type : 'UI.DataField',
                Value : employee.name,
                Label : 'name',
            },
            {
                $Type : 'UI.DataField',
                Value : employee.email,
                Label : 'email',
            },
            {
                $Type : 'UI.DataField',
                Value : employee.designation,
                Label : 'designation',
            },
            {
                $Type : 'UI.DataField',
                Value : employee.department,
                Label : 'department',
            },
            {
                $Type : 'UI.DataFieldForAction',
                Action : 'travelService.EntityContainer/approvelTravel',
                Label : 'approvelTravel',
            },
            {
                $Type : 'UI.DataFieldForAction',
                Action : 'travelService.EntityContainer/rejectTravel',
                Label : 'rejectTravel',
            },
            {
                $Type : 'UI.DataFieldForAction',
                Action : 'travelService.EntityContainer/processReimburasement',
                Label : 'processReimburasement',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Approval',
            ID : 'Approval',
            Target : 'Approval/@UI.LineItem#Approval',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Expenses',
            ID : 'Expenses',
            Target : 'Expenses/@UI.LineItem#Expenses',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Reimbursements',
            ID : 'Reimbursements',
            Target : 'Reimbursements/@UI.LineItem#Reimbursements',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Destination',
            Value : destination,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Purpose',
            Value : purpose,
        },
        {
            $Type : 'UI.DataField',
            Label : 'StartDate',
            Value : startDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EndDate',
            Value : endDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Transportation',
            Value : transportation,
        },
    ],
);

annotate service.TravelRequests with {
    employee @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Employees',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : employee_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'department',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'desgination',
            },
        ],
    }
};

annotate service.Approvals with @(
    UI.LineItem #Approval : [
        {
            $Type : 'UI.DataField',
            Value : approvalName,
            Label : 'approvalName',
        },
        {
            $Type : 'UI.DataField',
            Value : approvalStatus,
            Label : 'approvalStatus',
        },
        {
            $Type : 'UI.DataField',
            Value : comments,
            Label : 'comments',
        },
        {
            $Type : 'UI.DataField',
            Value : status,
            Label : 'status',
        },
    ]
);

annotate service.Expenses with @(
    UI.LineItem #Expenses : [
        {
            $Type : 'UI.DataField',
            Value : amount,
            Label : 'amount',
        },
        {
            $Type : 'UI.DataField',
            Value : expenseType,
            Label : 'expenseType',
        },
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },
    ]
);

annotate service.Reimbursements with @(
    UI.LineItem #Reimbursements : [
        {
            $Type : 'UI.DataField',
            Value : paymentDate,
            Label : 'paymentDate',
        },
        {
            $Type : 'UI.DataField',
            Value : paymentStatus,
            Label : 'paymentStatus',
        },
        {
            $Type : 'UI.DataField',
            Value : reimbursementAmount,
            Label : 'reimbursementAmount',
        },
    ]
);

