<#include "header.ftl">


    <div class="page_main" style="width:1000px;margin-left:auto;margin-right:auto;background-color:;">
    <div id="yibuLayout_center" class="yibuTemplateBody" style="min-height:100px; width:100%;;">
    <div  id="view_main_1_1265" class="mainSamrtView yibuSmartViewMargin"  >
<div class='yibuFrameContent main__Item0' style='height:860px;width:100%;border-style:none;'><div class='runTimeflowsmartView'><div  id="view_banner_11_1265" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden banner_Style1_Item0 view_banner_11_1265_Style1_Item0' style='height:35px;width:588px;'>    <script>
        $(function () {
            $("#view_banner_11_1265").children("div").css("overflow", "visible");
        })
    </script>


<div class="flowsmartView isflowcontainer w_container_content" refarea="Area_0" id="flowsmartView_11" >
    
</div>
<script type="text/javascript">
    function setLayoutHeight() {
        var bannerheight = $("#view_banner_11_1265").css("height");
        $("#view_banner_11_1265").children(".yibuFrameContent").css("height", bannerheight);
    };
</script></div>
</div>
<div  id="view_banner_12_1265" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden banner_Style1_Item0 view_banner_12_1265_Style1_Item0' style='height:35px;width:412px;'>    <script>
        $(function () {
            $("#view_banner_12_1265").children("div").css("overflow", "visible");
        })
    </script>


<div class="flowsmartView isflowcontainer w_container_content" refarea="Area_0" id="flowsmartView_12" >
    
</div>
<script type="text/javascript">
    function setLayoutHeight() {
        var bannerheight = $("#view_banner_12_1265").css("height");
        $("#view_banner_12_1265").children(".yibuFrameContent").css("height", bannerheight);
    };
</script></div>
</div>
<div  id="view_list_18_1265" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden list_Style2_Item0' style='height:159px;width:330px;'><!--list-->
    <ul>
    
            <#list newsPage.list as item>
            <li class="w_list_item">
                <span class="w_list_date">
2014-09-23                
                </span>
               
                <a href="${Domain.base}/news/${item.id}" target="_self">${item.title}</a>
            </li>
            
            </#list>
           
    </ul>


</div>
</div>
<div  id="view_list_24_1265" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden list_Style6_Item0 view_list_24_1265_Style6_Item0' style='height:150px;width:526px;'><div id="bakload" style="position: absolute;left: 50%; top: 30%;  z-index:10; display:none; ">
    <img class="bak-loadimg" src="/plugins/designer/content/css/images/grayloading.gif">
</div>
<!--list-->
   <div style="height:90%;">
        <ul class="w_piclist clearfix">
              
              <#list productsPage.list as item> 
                <li class="w_piclist_item">
                    <div class="w_piclist_img">
                        <a href="${Domain.base}/products/${item.id}" target="_self"><img class="lazyload" data-original="${item.Img()}" /></a>
                    </div>
                    <div class="w_piclist_content">
                        <span class="w_piclist_title"><a href="${Domain.base}/products/${item.id}" target="_self" title="${item.title}">${item.title}</a></span>
                       
                </li>
             
                 </#list> 
        </ul>
    </div>
<!--/list-->
<script type="text/javascript">
    $(function () {

        $("img.lazyload").lazyload({ skip_invisible: false, effect: "fadeIn", failure_limit: 15, threshold: 100 });

    });

</script></div>
</div>
<div  id="view_image_25_1265" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden image_Style1_Item0' style='height:34px;width:536px;'>    <div class="megwh" style="height:100%; width:100%;">
        <a id="autosize_view_image_25_1265" href="${Domain.base}/products/list" target="_blank" >
           
            <img class="lazyload" src="${Domain.base}/common/d/img/more.png" alt="" style="border:none; position:relative;" />
        </a>
    </div>

</div>
</div>
<div  id="view_image_26_1265" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden image_Style1_Item0' style='height:34px;width:464px;'>  '  <div class="megwh" style="height:100%; width:100%;">
        <a id="autosize_view_image_26_1265" href="${Domain.base}/news/list" target="_self" >
          
            <img class="lazyload" src="${Domain.base}/common/d/img/more.png"  alt=""  />
        </a>
    </div>

</div>
</div>
<div  id="view_photoalbum_32_1265" class="yibuSmartViewMargin absPos"  >
<div class='yibuFrameContent overflow_hidden photoalbum_Style2_Item0 view_photoalbum_32_1265_Style2_Item0' style='height:530px;width:880px;'
<div class="w_slider_2 renderfullScreen w_slider_2_32">

    <div class="w_slider_img">
        <ul>
        
        <#list info.Img() as item>
                   <img src="${item}" /> 
               
                 </#list>
             
        </ul>
    </div>
   <!-- 下面是前/后按钮代码，如果不需要删除即可 -->
    <a   style="display:none;"    class="prev" href="javascript:void(0)"></a>
    <a   style="display:none;"    class="next" href="javascript:void(0)"></a>
 
    <div class="w_slider_num" ><ul></ul></div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
              
              setRenderFullScreen($("#view_photoalbum_32_1265"));
              
    });
  
    $(".w_slider_2_32").slide({
        titCell: $(".w_slider_2_32 .w_slider_num ul"),
        mainCell: $(".w_slider_2_32 .w_slider_img ul"),
        effect: "fade",
        autoPlay: "true",
        autoPage: true,
        trigger: "click",
        interTime: "3000"
    });
</script></div>
</div>
</div></div>
</div>

    </div>
    </div>
   
<#include "footer.ftl">