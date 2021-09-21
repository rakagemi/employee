<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;

class EmployeeController extends Controller
{
            /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $employee = Employee::all();
        $response = [
            'message' => 'List Employee by id.',
            'data' => $employee
        ];

        if ($request->search) {
            $employee = Employee::where('nama', "like", "%{$request->search}%")
            ->orWhere('pekerjaan', "like", "%{$request->search}%")
            ->get();
        }

        return response()->json($response, Response::HTTP_OK);

    }

        /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $employee = Employee::findorFail($id);
        $response = [
            'message' => 'Detail of Employee',
            'data' => $employee
        ];
        return response()->json($response, Response::HTTP_OK);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'nama' => ['required'],
            'pekerjaan' => ['required'],
            'tanggal_lahir' => ['required'],
            // 'created_at' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(),
            Response::HTTP_UNPROCESSABLE_ENTITY);
        }

        try {
            $employee = Employee::create($request->all());
            $response = [
                'message' => 'Employee Created',
                'data' => $employee
            ];
            return response()->json($response, Response::HTTP_CREATED);
        } catch (QuerryException $e) {
            return response()->json([
                'message' => "Failed" . $e->errorInfo
            ]);
        };
    }

    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $employee = Employee::findorFail($id);

        $validator = Validator::make($request->all(), [
            'nama' => ['required'],
            'pekerjaan' => ['required'],
            'tanggal_lahir' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(),
            Response::HTTP_UNPROCESSABLE_ENTITY);
        }

        try {
            $employee->update($request->all());
            $response = [
                'message' => 'Employee Updated',
                'data' => $employee
            ];
            return response()->json($response, Response::HTTP_OK);
        } catch (QuerryException $e) {
            return response()->json([
                'message' => "Failed" . $e->errorInfo
            ]);
        };
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $employee = Employee::findorFail($id);

        try {
            $employee->delete();
            $response = [
                'message' => 'Employee Deleted',
                'data' => $employee
            ];
            return response()->json($response, Response::HTTP_OK);
        } catch (QuerryException $e) {
            return response()->json([
                    'message' => "Failed" . $e->errorInfo
            ]);
        };
    }
}
