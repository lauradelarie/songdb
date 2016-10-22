function toggleDone() {
  $(this).parent().parent().toggleClass("success");
}

function nextSongId() {
  return $(".song").size() + 1;
}

function createSong(title) {
  var checkboxId = "song-" + nextSongId();

  var label = $('<label></label>')
    .attr('for', checkboxId)
    .html(title);

  var checkbox = $('<input type="checkbox" value="1" />')
    .attr('id', checkboxId)
    .bind('change', toggleDone);

  var tableRow = $('<tr class="song"></td>')
    .append($('<td>').append(checkbox))
    .append($('<td>').append(label));

  $("#songList").append( tableRow );

  var newSong = { title: title, completed: false };

  $.ajax({
    type: "POST",
    url: "/todos.json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"

    .fail(function(error) {
    console.log(error);
  });
}

function submitSong(event) {
  event.preventDefault();
  createSong($("#song_title").val());
  $("#song_title").val(null);
}

function ClearAllSongs(event) {
  event.preventDefault();
  $.when($(".success").remove());
}

$(document).ready(function() {
  $("input[type=checkbox]").bind('change', toggleDone);
  $("form").bind('submit', submitSong);
  $("#clean-up").bind('click', ClearAllSongs);
});
