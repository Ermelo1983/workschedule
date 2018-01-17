var typeaheadHelper = {
    highlight: function (match, query) {
        $.each(query.split(/\s+/), function (index, word) {
            if (word) {
                word = word.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&');
                match = match.replace(new RegExp('(' + word + ')(?=[^>]*(<|$))', 'i'), function ($1, match) {
                    return match ? '<strong class="highlight">' + match + '</strong>' : $1;
                });
            }
        });
        return match;
    }
};
