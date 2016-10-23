
 function createSong(title) {

  var label = $('<label></label>')
    .attr('for', "song-<%=song.id%>")
    .html(title);

  var tableRow = $('<tr class="song"></td>')
    .append($('<td>').append(label));

  $("#songList").append( tableRow );

  var newSong = { title: title };


  $.ajax({
    type: "POST",
    url: "/artists/<%artist.id%>.json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"

    .fail(function(error) {
    console.log(error);
  });
}

function removeSong(removeSong) {
  var removeSong = document.getElementById('remove-song');
    removeSong.onclick = function () {
    document.getElementById('song-title').remove('song-title');
  };
}

function submitSong(event) {
  event.preventDefault();
  createSong($("#song_title").val());
  $("#song_title").val(null);
}
//
// function ClearAllSongs(event) {
//   event.preventDefault();
//   $.when($(".success").remove());
// }

$(document).ready(function() {
  $("input[type=checkbox]").bind('change', toggleDone);
  $("form").bind('submit', submitSong);
  $("song").bind('remove', removeSong);
  $("#clean-up").bind('click', ClearAllSongs);
});
