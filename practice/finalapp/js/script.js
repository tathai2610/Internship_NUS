$(document).ready(function() {
    $("img").on({
        "click": function() {
            if ($("#photo-tab").hasClass("avatar")) {
              var title = $(this).parent().parent().find("div[name='title']").html();
              var source = $(this).attr("src");
              var description = $(this).parent().parent().find("div[name='description']").html();
              $("#modal-photo-title").html(title);
              $("#modal-photo-body").attr("src", source);
              $("#modal-photo-description").html(description);
              $("#modal-photo").modal("toggle");
            }
            else {
              var title = $(this).parent().parent().parent().find("div[name='title']").html();

              var description = $(this).parent().parent().parent().find("div[name='description']").html();
              $("#modal-album-title").html(title);

              $("#modal-album-description").html(description);
              $("#modal-album").modal("toggle");
            }
        }
    })

    $("button[name='follow']").on({
    "click": function() {
      if ($(this).hasClass("follow")) {
        $(this).removeClass("follow");
        $(this).addClass("followed");
        $(this).html("following");
      }
      else {
        $(this).removeClass("followed");
        $(this).addClass("follow");
        $(this).html("follow");
      }
    }
  })
 })