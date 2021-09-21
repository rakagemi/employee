import EmployeesIndex from "./components/employee/Index";
import EmployeesCreate from "./components/employee/Create";
import EmployeesEdit from "./components/employee/Edit";

export const routes = [
    {
        path: "/employee",
        name: "EmployeesIndex",
        component: EmployeesIndex
    },
    {
        path: "/employee/create",
        name: "EmployeesCreate",
        component: EmployeesCreate
    },
    {
        path: "/employee/:id",
        name: "EmployeesEdit",
        component: EmployeesEdit
    }
];