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
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
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

