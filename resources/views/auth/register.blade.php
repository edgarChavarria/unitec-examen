@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">{{ __('Registrar') }}</div>

                    <div class="card-body">
                        <form method="POST" action="{{ route('register') }}">
                            @csrf
                            @include('includes.form-error')                          
                        <div class="row">
                            <!-- Nombre -->
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="nombre" class="col-md-12 col-form-label">{{ __('Nombre') }}</label>
                                    <div class="col-md-12">
                                        <input id="nombre" type="text" name="nombre"
                                        class="form-control"
                                         value="{{ old('nombre') }}"  autofocus>
                                    </div>
                                    
                                </div>
                            </div>
                            <!--Apellido Paterno -->
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label for="apellido_paterno" class="col-md-12 col-form-label">{{ __('Apellido Paterno') }}</label>
                                        
                                        <div class="col-md-12">
                                            <input id="apellido_paterno" type="apellido_paterno" 
                                                    class="form-control" 
                                                    name="apellido_paterno" value="{{ old('apellido_paterno') }}">
                                        </div>
                                    </div>
                                </div>
                                <!-- Apellido Materno -->
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label for="apellido_materno" class="col-md-12 col-form-label">{{ __('Apellido Materno') }}</label>
                                        <div class="col-md-12">
                                            <input id="apellido_materno" type="apellido_materno" 
                                                    class="form-control " name="apellido_materno" value="{{ old('apellido_materno') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                 <!-- Genero -->
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label for="genero" class="col-md-12 col-form-label">{{ __('Genero') }}</label>
                                        <div class="col-md-12">
                                            <select name="genero" id="genero" class="form-control">
                                            <!-- Este input se llena mediante ajax -->
                                            </select>                                            
                                            
                                        </div>
                                    </div>
                                </div>
                                <!-- Edad -->
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label for="edad" class="col-md-12 col-form-label">{{ __('Edad') }}</label>
            
                                        <div class="col-md-12">
                                            <input id="edad" type="text" class="form-control" name="edad" value="{{ old('edad') }}" >
                                           
                                        </div>
                                    </div>
                                </div>
                                <!--Estado Civil -->
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label for="estado_civil" class="col-md-12 col-form-label">{{ __('Estado Civil') }}</label>
            
                                        <div class="col-md-12">
                                            <select name="estado_civil" id="estado_civil" class="form-control">                                              
                                            </select>                                          
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class=" row">
                              <!--Interes -->
                                <div class="col-md-6">
                                    <div class="form-grpup">
                                        <label for="nivel_interes" class="col-md-4 col-form-label ">{{ __('Nivel de interes') }}</label>
                                        <div class="col-md-12">
                                            <select name="nivel_interes" class="form-control" id="nivel_interes" class="form-group">
                                            </select>                                            
                                        </div>
                                    </div>
                                </div>
                                <!-- Opcion -->
                                <div class="col-md-6 nivel" style="display:none">
                                    <div class="form-group">
                                        <label for="nivel_educacion" class="col-md-4 col-form-label ">{{ __('Opción') }}</label>
                                        <div class="col-md-12">
                                            <select name="nivel_educacion" class="form-control" id="nivel_educacion" class="form-group">

                                            </select>
                                            
                                        </div>
                                    
                                    </div>
                                </div>
                                
                            </div>


                            <div class="row">
                            <!--Email -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email" class="col-md-12 col-form-label ">{{ __('Correo') }}</label>
                                        <div class="col-md-12">
                                            <input id="email" type="email" 
                                            class="form-control" name="email" value="{{ old('email') }}">

                                        </div>
                                    </div>
                                </div>
                                <!--Contraseña -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password" class="col-md-4 col-form-label ">{{ __('Contraseña') }}</label>

                                        <div class="col-md-12">
                                            <input id="password" type="password" 
                                                    class="form-control"  name="password">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            


                            <div class="form-group row mt-3">
                                <div class="col-md-6 ">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Registrar') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('script')

<script src="{{ asset('js/usuario.js') }}?ver={{date('s')}}"></script>

@endsection