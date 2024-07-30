using app.interactions from '../db/interactions';

service UserService{

 entity users as projection on interactions.users;

 function submitOrder( quantity: Integer ) returns String ;
}

/*service UserService @(requires: 'authenticated-user'){

 entity users @(restrict: [
        {
            grant: 'READ',
            to   : 'Viewer'
        },
        {
            grant: [
                'READ',
                'WRITE',
                'UPDATE',
                'UPSERT',
                'DELETE'
            ], // Allowing CDS events by explicitly mentioning them
            to   : 'Manager'
        }
    ])  as projection on interactions.users;

 function submitOrder( quantity: Integer ) returns String ;
}*/




