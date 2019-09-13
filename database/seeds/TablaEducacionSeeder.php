<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class TablaEducacionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $educacion=array(
            array('nivel_interes'=>2,'nombre'=>'Lic. En Derecho'),
            array('nivel_interes'=>2,'nombre'=>'Lic. En Finanzas'),
            array('nivel_interes'=>3,'nombre'=>'Mtria. Admon'),
            array('nivel_interes'=>3,'nombre'=>'Mtria. En Direccion De Proyectos')
        );


        foreach ($educacion as $key => $e) {
        DB::table('educacion')->insert(['nivel_interes_id'=>$e['nivel_interes'],
                                            'nombre'=>$e['nombre'],
                                            'created_at'=>Carbon::now()->format('Y-m-d H:i:s'),
                                    ]);
}
    }
}
