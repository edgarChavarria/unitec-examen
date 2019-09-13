$(document).ready(function(){
   
    $.ajax({
        url: base_uri+'genero',
        success: function(res){
           
            $.each(res, function (i, val) { 
                 $("#genero").append('<option value="'+val.id+'">'+val.nombre+'</option>');
            });
        },
        error:function(xhr)
        {
         console.log(xhr);
        }
    });

    $.ajax({
        url: base_uri+'estado_civil',
        success: function(res){
            
            $.each(res, function (i, val) {                    
                 $("#estado_civil").append('<option value="'+val.id+'">'+val.nombre+'</option>');
            });
        },
        error:function(xhr)
        {
         console.log(xhr);
        }
    });

    $.ajax({
        url: base_uri+'nivel_interes',
        success: function(res){
            $("#nivel_interes").append('<option value="0">Seleccione una opción</option>');
            $.each(res, function (i, val) { 
                 $("#nivel_interes").append('<option value="'+val.id+'">'+val.nombre+'</option>');
            });
        },
        error:function(xhr)
        {
         console.log(xhr);
        }
    });

    $("#nivel_interes").change(function(){
       var id = $(this).val();
       
       if( id!=1 && id!=0)
       {
        $(".nivel").show();
        $.ajax({
            url: base_uri+'educacion/'+id,
            success: function(res){
                
                $("#nivel_educacion").html('');
               
                $.each(res, function (i, val) { 
                 $("#nivel_educacion").append('<option value="'+val.id+'">'+val.nombre+'</option>');
            });
            },
        error:function(xhr)
        {
         console.log(xhr);
        }
        });    
       }
       else
       {
        $(".nivel").hide();
        $("#nivel_educacion").html('');

       }
       
       
       
    })
});