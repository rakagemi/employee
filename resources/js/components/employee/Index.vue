<template>
<div>
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Employee</h1>
        </div>
        <div class="row">
            <div class="card  mx-auto">
                <div v-if="showMessage">
                    <div class="alert alert-success">{{ message }}</div>
                </div>
                <div class="card-header">
                    <div class="row">
                        <div class="col">
                            <form>
                                <div class="form-row align-items-center">
                                    <div class="col">
                                        <input
                                            type="search"
                                            v-model.lazy="search"
                                            class="form-control mb-2"
                                            placeholder="Guest"
                                        />
                                    </div>
                                    <div class="col">
                                        <button
                                            type="submit"
                                            class="btn btn-primary mb-2"
                                        >
                                            Search
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div>
                            <router-link
                                :to="{ name: 'EmployeesCreate' }"
                                class="btn btn-primary mb-2"
                                >Create</router-link
                            >
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#Id</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Pekerjaan</th>
                                <th scope="col">Tanggal Lahir</th>
                                <th scope="col">Aksi</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr
                                v-for="employee in employees"
                                :key="employee.id"
                            >
                                <th scope="row">#{{ employee.id }}</th>
                                <td>{{ employee.nama }}</td>
                                <td>{{ employee.pekerjaan }}</td>
                                <td>{{ employee.tanggal_lahir }}</td>
                                <td>
                                    <router-link
                                        :to="{
                                            name: 'EmployeesEdit',
                                            params: { id: employee.id }
                                        }"
                                        class="btn btn-success small"
                                        >Edit</router-link
                                    >
                                    <button
                                        class="btn btn-danger"
                                        @click="deleteEmployee(employee.id)"
                                    >
                                        Delete
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                  <div class="overflow-auto">
                        <div>
                            <h6>Goto first button number</h6>
                            <b-pagination
                                v-model="currentPage"
                                :total-rows="rows"
                                :per-page="perPage"
                                first-number
                            ></b-pagination>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
</template>

<script>
import axios from "axios";
export default {
        data() {
        return {
            employees: [],
            showMessage: false,
            message: "",
            search: null,
        rows: 100,
        perPage: 1,
        currentPage: 1
        };
    },
    watch: {
        search() {
            this.getEmployees();
        }
    },
    created() {
        this.getEmployees();
    },
    methods: {
        getEmployees() {
            axios
                .get("/api/employee", {
                    params: {
                        search: this.search
                    }
                })
                .then(res => {
                    this.employees = res.data.data;
                })
                .catch(error => {
                    console.log(error);
                });
        },
        deleteEmployee(id) {
            axios.delete("api/employee/" + id).then(res => {
                this.showMessage = false;
                this.message = res.data;
                this.getEmployees();
            });
        }
    }
};
</script>

<style>

</style>