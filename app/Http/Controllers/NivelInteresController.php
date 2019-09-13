<?php

namespace App\Http\Controllers;

use App\NivelInteres;
use Illuminate\Http\Request;

class NivelInteresController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return NivelInteres::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\NivelInteres  $nivelInteres
     * @return \Illuminate\Http\Response
     */
    public function show(NivelInteres $nivelInteres)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\NivelInteres  $nivelInteres
     * @return \Illuminate\Http\Response
     */
    public function edit(NivelInteres $nivelInteres)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\NivelInteres  $nivelInteres
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, NivelInteres $nivelInteres)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\NivelInteres  $nivelInteres
     * @return \Illuminate\Http\Response
     */
    public function destroy(NivelInteres $nivelInteres)
    {
        //
    }
}
