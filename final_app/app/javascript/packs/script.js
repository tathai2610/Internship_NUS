$(document).ready(function() {
    $("img[title]").on({
        "click": function() {
            if ($("#photo-tab").hasClass("avatar")) {
              var source = $(this).attr("src");

              document.getElementById("modal-photo-title").innerHTML = $(this).attr("title")
              document.getElementById("modal-photo-description").innerHTML = $(this).attr("desc")
              $("#modal-photo-body").attr("src", source);
              $("#modal-photo").toggle();
            }
            else {
              var title = $(this).parent().parent().parent().find("div[name='title']").html();

              var description = $(this).parent().parent().parent().find("div[name='description']").html();
              $("#modal-album-title").html(title);

              $("#modal-album-description").html(description);
              jQuery("#modal-album").modal("toggle");
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
