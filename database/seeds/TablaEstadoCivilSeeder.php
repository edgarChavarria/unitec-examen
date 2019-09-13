<?php

use Illuminate\Database\Seeder;

class TablaEstadoCivilSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $estado_civil=['Soltero','Casado','Union Libre','Viudo'];

        foreach ($estado_civil as $key => $ec) {
            DB::table('estado_civil')->insert(['nombre'=>$ec]);
        }
    }
}
