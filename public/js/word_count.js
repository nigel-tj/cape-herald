
  $(document).ready(function() {
    $("#word_count").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
        if (words > 20) {
          var trimmed = $(this).val().split(/\s+/, 20).join(" ");
          $(this).val(trimmed + " ");
        }
        else {
            $('#display_count').text(words);
            $('#word_left').text(20-words);
        }
   });

      $("#word_count_title").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
        if (words > 20) {
          var trimmed = $(this).val().split(/\s+/, 20).join(" ");
          $(this).val(trimmed + " ");
        }
        else {
            $('#display_count_title').text(words);
            $('#word_left_title').text(20-words);
        }
   });

      
    $("#word_count_body").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
      $('#display_count_body').text(words);
   });
  }); 

