<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class TablaGeneroSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $genero=['Masculino','Femenino'];

        foreach ($genero as $key => $g) {
            DB::table('genero')->insert(['nombre'=>$g,
                                         'created_at'=>Carbon::now()->format('Y-m-d H:i:s')
                                        ]);
        }
    }
}
