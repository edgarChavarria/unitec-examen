<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class TablaNivelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $nivel_interes=['Preparatoria','Licenciatura','Posgrado'];

        foreach ($nivel_interes as $key => $ni) {
            DB::table('nivel_interes')->insert(['nombre'=>$ni,
                                                'created_at'=>Carbon::now()->format('Y-m-d H:i:s')
                                        ]);
        }
    }
}
