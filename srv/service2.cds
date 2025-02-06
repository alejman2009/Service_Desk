using { Service_Desk as my } from '../db/schema.cds';

@path : '/service/Service_User'
service Service_User
{
}

annotate Service_User with @requires :
[
    'authenticated-user'
];
