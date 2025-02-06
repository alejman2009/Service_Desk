@path : '/service/Service_DeskSvcs'
service ServiceUser
{
}

annotate ServiceUser with @requires :
[
    'authenticated-user'
];
