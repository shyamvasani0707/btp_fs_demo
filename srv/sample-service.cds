using btp.demo as bd from '../db/data-model';

service EmployeeService {
    entity Employees @(
        Capabilities : {
            InsertRestrictions : {
                $Type : 'Capabilities.InsertRestrictionsType',
                Insertable,
            },
            UpdateRestrictions : {
                $Type : 'Capabilities.UpdateRestrictionsType',
                Updatable
            },
            DeleteRestrictions : {
                $Type : 'Capabilities.DeleteRestrictionsType',
                Deletable
            }
        }
    ) as select from bd.EMPLOYEE_REGISTRY;

    entity Department as select from bd.DEPARTMENT;
}