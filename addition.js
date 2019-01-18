// First make sure the wrapper app is loaded
document.addEventListener("DOMContentLoaded", function() {
    const cssPath = '||CSSPATH||';

    $.ajax({
        url: cssPath,
        success: function(css) {
            $("<style></style>").appendTo('head').html(css);
        }
    });
});
