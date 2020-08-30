$(document).ready(function(){
    $(".edit-album-title").validate({
        rules: {
            title: "required"
        },
        messages: {
            title: "Please input new title"
        }
    })
});
