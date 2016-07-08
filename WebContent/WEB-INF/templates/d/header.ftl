
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="${Domain.base}/common/upload/favicon.ico" />
    <title>${title}</title>
   <meta name="keywords" content="${keywords}" />
   <meta name="description" content="${description}" />

    <link rel="stylesheet" href="${Domain.base}/common/d/base.pc.css" type="text/css" />
    <link rel="stylesheet" href="${Domain.base}/common/d/index.css" type="text/css" />
        <link rel="stylesheet" href="${Domain.base}/common/d/common.css" type="text/css" />    <link rel="stylesheet" href="${Domain.base}/common/d/index.css" type="text/css" />
        <script type="text/javascript" src="${Domain.base}/common/js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="${Domain.base}/common/d/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="${Domain.base}/common/d/public.common.min.js"></script>
        <script src="${Domain.base}/common/d/jquery.lazyload.min.js"></script>
        <script src="${Domain.base}/common/d/underscore.js"></script>
        <script type="text/javascript" src="${Domain.base}/common/d/jquery.slider.js"></script>



</head>
<body>
    <div  id="view_layout_1_843" class="mainSamrtView yibuSmartViewMargin"  >
<div class='yibuFrameContent layout_Block2_Item0' style='width:100%;border-style:none;'>
      <div style="width:100%;height:190px;background-color:;">
        <div class="page_header" style="width:1000px;height:190px;margin-left:auto;margin-right:auto;;">
         <div class='runTimeflowsmartView'><div  id="view_image_25_843" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden image_Style1_Item0' style='height:37px;width:205px;'>  
  <div class="megwh" style="height:100%; width:100%;">
        <a id="autosize_view_image_25_843" href="javascript:void(0);" target="_self"   style="cursor:default;"      >
            <input id="w_view_image_25_843" type="hidden" value="205" />
            <input id="h_view_image_25_843" type="hidden" value="37" />
            <img class="lazyload" src="${info.Logo()!Domain.base+"common/upload/logo.gif"}"  alt="${info.name}" style="border:none; position:relative;" />
        </a>
    </div>
<script type="text/javascript">
    $(function () {
        ChangeImage("view_image_25_843");
    });
</script>
</div>
</div>
<div  id="view_banner_27_843" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden banner_Style1_Item0 view_banner_27_843_Style1_Item0' style='height:44px;width:154px;'>    <div class="w_container_wrap renderfullScreen" ></div>
    <script>
        $(function () {
            setRenderFullScreen($('#view_banner_27_843'));
        })
    </script>


<div class="flowsmartView isflowcontainer w_container_content" refarea="Area_0" id="flowsmartView_27" style=width:154px;>
    
</div>
<script type="text/javascript">
    function setLayoutHeight() {
        var bannerheight = $("#view_banner_27_843").css("height");
        $("#view_banner_27_843").children(".yibuFrameContent").css("height", bannerheight);
    };
</script></div>
</div>
<div  id="view_navigator_35_843" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden navigator_Style3_Item0 view_navigator_35_843_Style3_Item0' style='height:40px;width:999px;'><!--nav-->
    <ul id=nav_view_navigator_35_843>
            <li class=w_nav_item style=width:20%;*width:19.6%>
                    <h3>
                        <a href="${Domain.base}" >
                            首页
                        </a>
                    </h3>
                            </li>
              <#list menu as item>
            <li class=w_nav_item style=width:20%;*width:19.6%>
                    <h3>
                        <a href=" <#switch item.type>
        <#case 1>
        <#if item.url=="">
         ${Domain.base}/about/${item.id}
        <#else>
            ${item.url}
        </#if>
              
         <#break>
         <#case 2>
              ${Domain.base}/news/list
         <#break>
          <#case 3>
              ${Domain.base}/products/list
         <#break>
       </#switch>" >
                            ${item.name}
                        </a>
                    </h3>
                            </li>
          </#list>
        
            
    </ul>

<!--/nav-->
<input type="hidden" id="HeightVariablesStr_view_navigator_35_843" value="$SubItem_height:40px;" />
<script>
    $(function () {
        slideMenu("nav_" + 'view_navigator_35_843');
        jQuery("#nav_" + 'view_navigator_35_843').parent("div").css("overflow", "visible");
        var isDivider = true;
        jQuery("#nav_" + 'view_navigator_35_843').children("li").each(function () {
            var topWidth = $(this).children("h3").children("a").css("border-top-width");
            var leftWidth = $(this).children("h3").children("a").css("border-left-width");
            var bottomWidth = $(this).children("h3").children("a").css("border-bottom-width");
            if (topWidth != "0" && topWidth != "0px") {
                isDivider = false;
                return false;
            }
            if (leftWidth != "0" && leftWidth != "0px") {
                isDivider = false;
                return false;
            }
            if (bottomWidth != "0" && bottomWidth != "0px") {
                isDivider = false;
                return false;
            }
            if ($(this).children("ul").length > 0) {
                var maxWidth = $(this).children("ul").width();
                $(this).children("ul").children("li").each(function () {
                    var a = $(this).children("a");
                    var currentWidth = GetCurrentStrWidth(a.html(), a.css("font-size")) + 20;

                    if (maxWidth < currentWidth)
                        maxWidth = currentWidth;
                });
                $(this).children("ul").css("width", maxWidth + "px");
            }

        });
        if (isDivider)
            jQuery("#nav_" + 'view_navigator_35_843').children("li:last").children("h3").children("a").css("border-right-width", "0px");//去掉最后一项的分隔线

        if ("False" == "False") {
            jQuery("#" + 'view_navigator_35_843').css("z-index", "999999");
            if ($.browser.msie) {
                jQuery("#" + 'view_navigator_35_843').parent(".runTimeflowsmartView").css("z-index", "999999");
            }
            if (jQuery("#" + 'view_navigator_35_843').parent().attr("class") != "runTimeflowsmartView") {//导航可能放在容器控件中了，需要把容器控件的z-index的值设大
                jQuery("#" + 'view_navigator_35_843').parent(".w_container_content").parent().parent().css("z-index", "999998");
            }
        }
        SetNavSelectedStyle("nav_" + 'view_navigator_35_843', 'nav');//选中当前导航
    })

</script>

</div>
</div>
</div>
        </div>
    </div>

   