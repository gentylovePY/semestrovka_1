$("input").change(function(){
    $(this).siblings("input").prop('checked', false);
});

$("form").submit(function(){
    if($("input:checked").length > 1){
        alert('error!');
        return false;
    }
});