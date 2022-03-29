//QQ:290948585 xiaohei www.dtmuban.com ST06 20171016-20200807
$(function () {
    function c(a) {
        var c = -a * b;
        $("#focus ul").stop(!0, !1).animate({
            left: c
        }, 300);
        $("#focus .btnd span").removeClass("on").eq(a).addClass("on");
        $("#focus .btnd span").stop(!0, !1).animate({
            opacity: "0.4"
        }, 300).eq(a).stop(!0, !1).animate({
            opacity: "1"
        }, 300)
    }
    for (var b = $("#focus").width(), d = $("#focus ul li").length, a = 0, g, e = "<div class='btnBg'></div><div class='btnd'>", f = 0; f < d; f++) e += "<span></span>";
    e += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
    $("#focus").append(e);
    $("#focus .btnBg").css("opacity",
        .5);
    $("#focus .btnd span").css("opacity", .4).mouseover(function () {
        a = $("#focus .btnd span").index(this);
        c(a)
    }).eq(0).trigger("mouseover");
    $("#focus .preNext").css("opacity", .2).hover(function () {
        $(this).stop(!0, !1).animate({
            opacity: "0.5"
        }, 300)
    }, function () {
        $(this).stop(!0, !1).animate({
            opacity: "0.2"
        }, 300)
    });
    $("#focus .pre").click(function () {
        --a; - 1 == a && (a = d - 1);
        c(a)
    });
    $("#focus .next").click(function () {
        a += 1;
        a == d && (a = 0);
        c(a)
    });
    $("#focus ul").css("width", b * d);
    $("#focus").hover(function () {
        $(".preNext").show();
        clearInterval(g)
    }, function () {
        $(".preNext").hide();
        g = setInterval(function () {
            c(a);
            a++;
            a == d && (a = 0)
        }, 4E3)
    }).trigger("mouseleave")
});

//点击显示
$(function(){
  window.onload=function(){
    var wenzi=document.getElementById('floatTools');
    var div=document.getElementById('contactInfo');
    wenzi.onfocus=function(){
      if(div.style.display=='block'){ // == 判断div.display是否为显示
        div.style.display='none'; //= 赋值也可了解成改变
      } else {
        div.style.display='block';
      }
    }
  };
});

//xiaohei
function APlayinfo(v) {
  $('#ab-video').html(player(v,400,250,1));
  $('#ab-video,.ab_hide').show();
}
function APlayxh(v) {
  $('#ab-video').html(player(v,400,400,1));
  $('#ab-video,.ab_hide').show();
}


$(function () {
    var c = $(".tbCur").get(0).dataset.cont;
    $("#" + c).css("display", "block");
    $(".tabBoxCon").on("mouseover", "li", function (b) {
        b = $(".tbCur");
        b.removeClass("tbCur");
        b = b.get(0).dataset.cont;
        $("#" + b).css("display", "none");
        this.classList.add("tbCur");
        b = this.dataset.cont;
        $(this).offset().top;
        $("#" + b).css("display", "block")
    })
});

$(".close_businesscard").click(function () {
    $(".businesscard").hide()
});
$(".qrCode span").hover(function () {
    $(this).siblings("img").toggleClass("on")
});

function removeElement(c) {
    document.getElementById(c).style.display = "none"
}

jQuery(function () {
    jQuery(".zc").mouseover(function () {
        jQuery(this).addClass("drop-down").siblings().removeClass("");
        jQuery(".zc .drop-down-con").show()
    }).mouseout(function () {
        jQuery(".zc .drop-down-con").hide()
    })
});

jQuery(".r_soo").hover(function () {
    jQuery(".r_so").css("display", "block")
}, function () {
    jQuery(".r_so").css("display", "none")
});

$("#toggle").click(function () {
    $(this).text($(".fsearch").is(":hidden") ? "隐藏条件搜索" : "展开更多条件搜索");
    $(".fsearch").slideToggle()
});

jQuery(".qr-code").hover(function () {
    jQuery(".qr-code-h").css("display", "block")
}, function () {
    jQuery(".qr-code-h").css("display", "none")
});

$(".reach-txt li").click(function () {
    $(this).addClass("hover").siblings().removeClass("hover")
});

jQuery("#navxh").hover(function () {
    jQuery(".category_new").css("display", "block")
}, function () {
    jQuery(".category_new").css("display", "none")
});

function setTab(c, b, d) {
    for (i = 1; i <= d; i++) {
        var a = document.getElementById(c + i),
            g = document.getElementById("con_" + c + "_" + i);
        a.className = i == b ? "hover" : "";
        g.style.display = i == b ? "block" : "none"
    }
}

$(".cate-item").hover(function () {
    $(this).children(".cate-more").show()
}, function () {
    $(this).children(".cate-more").hide()
});

$.fn.fixedDiv = function (c) {
    function b() {
        e = g.offset().top - a.outerHeight(!0);
        d = $(document).scrollTop();
        d > f && d < e ? (a.css({
            position: "fixed",
            top: "0",
            display: "block"
        }), window.XMLHttpRequest || a.css({
            position: "absolute",
            top: d
        })) : d > e ? a.css({
            position: "absolute",
            top: e,
            display: "none"
        }) : (a.removeAttr("style"), a.css({
            position: "static",
            top: "auto"
        }), window.XMLHttpRequest || a.css({
            position: "static",
            top: "auto"
        }))
    }
    var d = 0,
        a = $(this),
        g = $(c),
        e;
    var f = a.offset().top;
    b();
    $(window).scroll(b)
};

$(".sell-b-pop .close,.sell-r-pop .close").click(function () {
    $(this).parent().fadeOut()
});

$("#close-btn").click(function () {
    $(".browser-warning").hide()
});

function Switch() {
    var c = document.getElementById("bt"),
        b = document.getElementById("light"),
        d = document.getElementById("lighton");
    "daytime" == document.body.className ? (document.body.className = "night", c.title = "关灯", b.style.display = "block", d.style.display = "none") : (document.body.className = "daytime", c.title = "开灯", b.style.display = "none", d.style.display = "block")
}

jQuery(".weixinMaina").hover(function () {
    jQuery(".weixinBota").css("display", "block")
}, function () {
    jQuery(".weixinBota").css("display", "none")
});

jQuery(".so_li").hover(function () {
    jQuery(".selectbox-wrapper").css("display", "block")
}, function () {
    jQuery(".selectbox-wrapper").css("display", "none")
});

var goNav1 = jQuery("#floatSearch"),
    sct1 = 270;

function heartBeat1() {
    try {
        document.documentElement.scrollTop + document.body.scrollTop > sct1 ? goNav1.fadeIn() : goNav1.fadeOut()
    } catch (c) {}
}

function callback1() {
    try {
        document.documentElement.scrollTop + document.body.scrollTop > sct1 ? goNav1.fadeIn() : goNav1.fadeOut(), window.setInterval("heartBeat1()", 1)
    } catch (c) {}
}
callback1();
$(function () {
    $(".mrb-box").each(function (c) {
        $(this).mouseover(function (b) {
            $(this).addClass("mrb-box_active")
        }).mouseout(function (b) {
            $(this).removeClass("mrb-box_active")
        })
    })
});

function getCookie(c) {
    var b;
    return (b = document.cookie.match(new RegExp("(^| )" + c + "=([^;]*)(;|$)"))) ? unescape(b[2]) : null
}

function setCookie(c, b) {
    var d = new Date;
    d.setTime(d.getTime() + 6E4);
    document.cookie = c + "=" + escape(b) + ";expires=" + d.toGMTString()
}
$(".topSlide").hover(function () {
    $(this).addClass("on");
    $(this).children("p").slideDown(200)
}, function () {
    $(this).removeClass("on");
    $(this).children("p").slideUp(0)
});
$(".cateMenu").hover(function () {
    $(this).toggleClass("on")
});
$(".cateMenu ul li").hover(function () {
    $(this).toggleClass("on");
    $(this).children(".categoryTit").toggleClass("on")
});

function backTop() {
    200 < $(window).scrollTop() ? $(".backTop").fadeIn() : $(".backTop").fadeOut()
}
backTop();
$(window).scroll(backTop);
$(".backTop,#backTop").click(function () {
    $("body,html").animate({
        scrollTop: 0
    }, 1E3);
    return !1
});

$(".wapimg").hover(function () {
    $(".proCodeimg").show()
}, function () {
    $(".proCodeimg").hide()
});

function dmarquee(c, b, d, a) {
    this.t;
    this.p = !1;
    this.o = Dd(a);
    this.h = this.o.innerHTML;
    if (!(10 > this.h.length)) {
        this.o.innerHTML = '<div id="' + a + '_tmp"><div>' + this.h + "</div></div>";
        var g = Number(Dd(a).style.height.replace("px", "")),
            e = Dd(a + "_tmp").scrollHeight;
        if (-1 != c)
            if (2 * e <= g) this.o.innerHTML = this.h;
            else {
                this.o.innerHTML = e >= g ? this.h + this.h : this.h + this.h + this.h;
                this.o.scrollTop = 0;
                var f = this;
                this.o.onmouseover = function () {
                    f.p = !0
                };
                this.o.onmouseout = function () {
                    f.p = !1
                };
                this.start = function () {
                    this.t = setInterval(function () {
                            f.scrolling()
                        },
                        b);
                    this.p || (this.o.scrollTop += 1)
                };
                this.scrolling = function () {
                    0 != this.o.scrollTop % c ? (this.o.scrollTop += 1, this.o.scrollTop == e && (this.o.scrollTop = 0)) : (clearInterval(this.t), setTimeout(function () {
                        f.start()
                    }, d))
                };
                setTimeout(function () {
                    f.start()
                }, d)
            }
    }
}
$(function () {
    var c = $("#ab-video").height(),
        b = $("#ab-video").offset().top;
    $(document).scroll(function () {
        var a = $(this).scrollTop();
        a > b - 50 && a < c + b ? $("video").trigger("play") : $("video").trigger("pause")
    });
    $("#ab-video").bind("contextmenu", function () {
        return !1
    });
    if (1 == x) {
        var d = document.getElementById("ab-video");
        d.parentNode.removeChild(d)
    }
});