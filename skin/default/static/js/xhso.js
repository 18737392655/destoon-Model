//搜索TAB更新于20200723 - dtmuban.com
$(function () {
    $(document).click(function (event) {
        var eo = $(event.target);
        if ($(".reach-txt").is(":visible") && eo.attr("class") != "option" && !eo.parent(".option").length);
        //$('.option').hide();
    });
    $(".option li").click(function () {
        var check_value = $(this).text();
        var bValue = $('.option li:eq(1)').html();
        var cValue = $('.option li:eq(2)').html();
        var aValue = $('.option li:eq(3)').html();
        var qValue = $('.option li:eq(4)').html();
        $(this).parent().siblings(".reach-txt").text(check_value);
        $("#select_value").val(check_value);
        if (check_value == bValue) {
            $('#destoon_kw').prop('placeholder', '请输入您要采购的产品关键词');
        } else if (check_value == cValue) {
            $('#destoon_kw').prop('placeholder', '请输入您要查找的公司关键词');
        } else if (check_value == aValue) {
            $('#destoon_kw').prop('placeholder', '请输入您要查询的资讯关键词');
        } else if (check_value == qValue) {
            $('#destoon_kw').prop('placeholder', '请输入您要查询的关键词');
        } else {
            $('#destoon_kw').prop('placeholder', '请输入您感兴趣的产品关键词');
        }
    });
})