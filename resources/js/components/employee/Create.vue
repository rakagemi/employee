<template>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            Create Employee
                            <router-link
                                :to="{ name: 'EmployeesIndex' }"
                                class="float-right"
                                >Back</router-link
                            >
                        </div>

                        <div class="card-body">
                            <form @submit.prevent="storeEmployee">
                                <div class="form-group row">
                                    <label
                                        for="nama"
                                        class="col-md-4 col-form-label text-md-right"
                                        >Nama</label
                                    >
                                    <div class="col-md-6">
                                        <input
                                            id="nama"
                                            v-model="form.nama"
                                            type="text"
                                            class="form-control "
                                            required
                                        />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for="pekerjaan"
                                        class="col-md-4 col-form-label text-md-right"
                                        >Pekerjaan</label
                                    >

                                    <div class="col-md-6">
                                        <input
                                            id="pekerjaan"
                                            v-model="form.pekerjaan"
                                            type="text"
                                            class="form-control "
                                            required
                                        />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label
                                        for="tanggal_lahir"
                                        class="col-md-4 col-form-label text-md-right"
                                        >Tanggal Lahir</label
                                    >
                                    <div class="col-md-6">
                                        <datepicker
                                            v-model="form.tanggal_lahir"
                                            input-class="form-control"
                                        ></datepicker>
                                    </div>
                                </div>
                                <div class="form-group row mb-0 mt-4">
                                    <div class="col-md-6 offset-md-4">
                                        <button
                                            type="submit"
                                            class="btn btn-primary"
                                        >
                                            Store
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</template>

<script>
import Datepicker from "vuejs-datepicker";
import moment from 'moment';
import axios from 'axios';
export default {
        components: {
        Datepicker
    },
    data() {
        return {
            form: {
                nama: "",
                pekerjaan: "",
                tanggal_lahir: null
            }
        };
    },
    methods: {
        storeEmployee() {
            axios
                .post("/api/employee", {
                    nama: this.form.nama,
                    pekerjaan: this.form.pekerjaan,
                    tanggal_lahir: this.format_date(this.form.tanggal_lahir)
                })
                .then(res => {
                    this.$router.push({ name: "EmployeesIndex" });
                });
        },
        format_date(value) {
            if (value) {
                return moment(String(value)).format("YYYYMMDD");
            }
        }
    }
};
</script>

<style>

</style>