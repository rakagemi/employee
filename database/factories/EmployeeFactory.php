<?php

namespace Database\Factories;

use App\Models\Employee;
use Illuminate\Database\Eloquent\Factories\Factory;

class EmployeeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Employee::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nama' => $this->faker->name(),
            'pekerjaan' => $this->faker->jobTitle() ,
            // 'tanggal_lahir' => $this->faker->dateTimeThisMonth()->format('Y-m-d H:i:s'),
            'tanggal_lahir' => $this->faker->dateTimeBetween('1990-01-01', '2012-12-31')->format('Y-m-d'),
        ];
    }
}
