//QQ:290948585 xiaohei www.dtmuban.com 20171016
//左侧漂浮楼层导航定位
jQuery(function(){
    var rollSet = $(".industry-bar");
    var offset = rollSet.offset();
    var fwidth = $(".footer").height();
    $(window).scroll(function() {
        var scrollTop = $(window).scrollTop();
        var scrollBtm = $(document).height() - $(window).scrollTop() - $(".industry-bar").height();
        if (offset.top < scrollTop) {
            if (scrollBtm > fwidth) {
                rollSet.removeClass("absolute").addClass("fixed")
            } else {
                rollSet.removeClass("fixed").addClass("absolute")
            }
        } else {
            rollSet.removeClass("fixed")
        }
    })
});
//置顶
      $('.gotop').click(function (e) {
            e.preventDefault();
            $(document.body).animate({ scrollTop: 0 }, 800);
        });
            $(document).ready(function () {
            $('#nav').onePageNav();
            $('.ck-slide').ckSlide({
                autoPlay: true
           });
        });
      //$(".mrtb-con").each(function () {
            //new SetTab($(this), 3000, 0);
      //});
