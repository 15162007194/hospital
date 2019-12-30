<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>添加课程信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" media="all">
</head>

<body>

<blockquote class="layui-elem-quote layui-text" style="background-color: #33DF83;color:white;">
    本模块实现课程信息的维护，在进行教学工作量统计前,务必确保数据的准确性和合法性。
</blockquote>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>课程信息</legend>
</fieldset>

<form class="layui-form" action="" id="courseform">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">所在学院</label>
            <div class="layui-input-inline">
                <select name="yxid" lay-verify="required">
                    <option value="">选择学院</option>
                    <option value="1" ${courseInfo.yxid==1?"selected":""}>经济学院</option>
                    <option value="2" ${courseInfo.yxid==2?"selected":""}>教科学院</option>
                    <option value="3" ${courseInfo.yxid==3?"selected":""}>体育学院</option>
                    <option value="4" ${courseInfo.yxid==4?"selected":""}>人文学院</option>
                    <option value="5" ${courseInfo.yxid==5?"selected":""}>外语学院</option>
                    <option value="6" ${courseInfo.yxid==6?"selected":""}>艺术学院</option>
                    <option value="7" ${courseInfo.yxid==7?"selected":""}>数理学院</option>
                    <option value="8" ${courseInfo.yxid==8?"selected":""}>化工学院</option>
                    <option value="9" ${courseInfo.yxid==9?"selected":""}>信电学院</option>
                    <option value="10" ${courseInfo.yxid==10?"selected":""}>机电学院</option>
                    <option value="11" ${courseInfo.yxid==11?"selected":""}>土木学院</option>
                    <option value="12" ${courseInfo.yxid==12?"selected":""}>环境学院</option>
                    <option value="13" ${courseInfo.yxid==13?"selected":""}>食品学院</option>
                    <option value="14" ${courseInfo.yxid==14?"selected":""}>管理学院</option>
                    <option value="15" ${courseInfo.yxid==15?"selected":""}>马克思学院</option>
                    <option value="16" ${courseInfo.yxid==16?"selected":""}>图书馆</option>
                    <option value="17" ${courseInfo.yxid==17?"selected":""}>创新创业学院</option>
                    <option value="19" ${courseInfo.yxid==19?"selected":""}>宣传部</option>
                    <option value="21" ${courseInfo.yxid==21?"selected":""}>学工处</option>
                    <option value="22" ${courseInfo.yxid==22?"selected":""}>院长办公室</option>
                    <option value="23" ${courseInfo.yxid==23?"selected":""}>教务处</option>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">所在学期</label>
            <div class="layui-input-inline">
                <select name="xq" lay-verify="required">
                    <option value="">选择学期</option>
                    <option value="1" ${courseInfo.xq==1?"selected":""}>2017-2018-2</option>
                    <option value="2" ${courseInfo.xq==2?"selected":""}>2018-2019-1</option>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">课程号</label>
            <div class="layui-input-inline">
                <input type="text" name="kch" lay-verify="required" autocomplete="off" class="layui-input" value="${courseInfo.kch}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">课程名称</label>
            <div class="layui-input-inline">
                <input type="text" name="kcm" lay-verify="required" autocomplete="off" class="layui-input" value="${courseInfo.kcm}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">课序号</label>
            <div class="layui-input-inline">
                <input type="text" name="kxh" lay-verify="required|number" autocomplete="off" class="layui-input" value="1" value="${courseInfo.kxh}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">核心课程</label>
            <div class="layui-input-inline">
                <select name="sfcxk" lay-verify="required">
                    <option value="">是否是核心课程</option>
                    <option value="1" ${courseInfo.sfcxk==1?"selected":""}>是</option>
                    <option value="0" ${courseInfo.sfcxk==0?"selected":""} >否</option>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">授课老师</label>
            <div class="layui-input-inline">
                <input type="text" name="skls" lay-verify="required" autocomplete="off" class="layui-input" value="${courseInfo.skls}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">教师职称</label>
            <div class="layui-input-inline">
                <input type="text" name="lszc" lay-verify="required" autocomplete="off" class="layui-input" value="${courseInfo.lszc}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">课程属性</label>
            <div class="layui-input-inline">
                <input type="text" name="kcsx" lay-verify="required" placeholder="填写专业必修|选修|校任选" autocomplete="off" class="layui-input" value="${courseInfo.kcsx}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">授课班级</label>
            <div class="layui-input-inline" style="width:520px;">
                <input type="tel" name="bjmc" lay-verify="" autocomplete="off" class="layui-input" value="${courseInfo.bjmc}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">选课人数</label>
            <div class="layui-input-inline">
                <input type="text" name="xkrs" lay-verify="required|number" autocomplete="off" class="layui-input" value="${courseInfo.xkrs}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">总学时</label>
            <div class="layui-input-inline">
                <input type="text" name="zxs" lay-verify="required|number" autocomplete="off" class="layui-input" value="${courseInfo.zxs}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">授课学时</label>
            <div class="layui-input-inline">
                <input type="text" name="skxs" lay-verify="number" autocomplete="off" class="layui-input" value="${courseInfo.skxs}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">实践学时</label>
            <div class="layui-input-inline">
                <input type="text" name="sjxs" lay-verify="number" autocomplete="off" class="layui-input" value="${courseInfo.sjxs}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">实验学时</label>
            <div class="layui-input-inline">
                <input type="text" name="syxs" lay-verify="number" autocomplete="off" class="layui-input" value="${courseInfo.syxs}">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">学分</label>
            <div class="layui-input-inline">
                <input type="text" name="xf" lay-verify="required|number" autocomplete="off" class="layui-input" value="${courseInfo.xf}">

            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">课程类别</label>
            <div class="layui-input-inline">
                <select name="kclx" lay-verify="required">
                    <option value="">选择课程类别</option>
                    <option value="通识必修课" ${courseInfo.kclx=="通识必修课"?"selected":""}>通识必修课</option>
                    <option value="通识选修课"${courseInfo.kclx=="通识选修课"?"selected":""}>通识选修课</option>
                    <option value="学科基础课" ${courseInfo.kclx=="学科基础课"?"selected":""}>学科基础课</option>
                    <option value="专业选修课"${courseInfo.kclx=="专业选修课"?"selected":""}>专业选修课</option>
                    <option value="集中实践课"${courseInfo.kclx=="集中实践课"?"selected":""}>集中实践课</option>
                    <option value="-" ${courseInfo.kclx=="-"?"selected":""}>其它</option>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-inline">
                <select name="bz">
                    <option value="">无(不填写)</option>
                    <optgroup label="实践类课程类">
                        <option value="实习实训">实习实训</option>
                        <option value="学年论文">学年论文</option>
                        <option value="课程设计">课程设计</option>
                    </optgroup>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">课程类型1</label>
            <div class="layui-input-inline">
                <select name="kclx1">
                    <option value="">无(不填写)</option>
                    <optgroup label="网络、双语、计算机公共基础课类">
                        <option value="网络自主学习课">网络自主学习课</option>
                        <option value="双语课">双语课</option>
                        <option value="计算机公共基础课">计算机公共基础课</option>
                    </optgroup>
                    <optgroup label="实习实训类">
                        <option value="校内实习(实训)">校内实习(实训)</option>
                        <option value="校内金工实习">校内金工实习</option>
                        <option value="校内数控实习">校内数控实习</option>
                        <option value="校外集中实训(校企合作)">校外集中实训(校企合作)</option>
                        <option value="校外集中实习(市内)">校外集中实习(市内)</option>
                        <option value="校外集中实习(市外)">校外集中实习(市外)</option>
                        <option value="校外分散实习">校外分散实习</option>
                        <option value="寒暑假社会实践">寒暑假社会实践</option>
                    </optgroup>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">课程类型2</label>
            <div class="layui-input-inline">
                <select name="kclx2">
                    <option value="">无(不填写)</option>
                    <option value="艺术类课">艺术类课</option>
                </select>
                <!--隐藏域-->
                <input type="hidden" name="id" value="${empty courseInfo?0:courseInfo.id}">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="ajaxsavebtn">保存(ajax)</button>
            <button class="layui-btn layui-btn-primary btn-close">关闭</button>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block" style="color:red;">
            <!--错误消息显示-->
            <!--验证未通过的错误信息的提示-->
            <!--迭代requestScope中的allErrors:JSTL和EL-->
            <div class="layui-form-item">
                <div class="layui-input-block" style="color:red;">
                    <!--呈现错误信息-->
                    <c:forEach items="${allErrors}" var="error">
                        ${error.defaultMessage} &nbsp;&nbsp;
                    </c:forEach>

                    <div class="ajaxerrordiv">


                    </div>
                </div>
            </div>
        </div>
    </div>
</form>



<script src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/plugins/ext.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form,
            layer = layui.layer,
            layedit = layui.layedit,
            laydate = layui.laydate;
        $ = layui.$;

        //监听提交
        form.on('submit(savebtn)', function(data) {
            var form = document.getElementById('courseform');
            form.action = "${pageContext.request.contextPath}/courseinfo/valid";
            form.method = "post";
            form.submit();

        });

        //监听提交
        form.on('submit(ajaxsavebtn)', function(data) {
            //laiui把表单数据封装到data中
            //表单中给用户输入的课程信息封装成为json对象
            var json=JSON.stringify(data.field)
            //发起ajax请求

            var method=(data.field.id)==0?"post":"put";

            //alert(method);
            //if(true) return ;

            $(".ajaxerrordiv").html("");
            $.ajax({
                url:"${pageContext.request.contextPath}/courseinfo",
                type:method,
                data:json,
                contentType:"application/json",
                beforeSend:function(XMLHttpRequest){
                    //请求发送前
                    progressLoad("系统正在执行数据提交操作，请稍后...");
                },
                success:function(result){
                    progressClose();
                    //请求发送成功后
                    var msgkey=result.msgkey;
                    var  message=result.message;
                    if(msgkey=="validerror"){
                        //对json数组进行遍历
                        var errorMsg="";
                        $.each( result.data,function(index,value) {
                            errorMsg+=value.defaultMessage+" ";
                        });
                        //将错误消息放在某个DOM元素里面
                        $(".ajaxerrordiv").html(errorMsg);
                    }
                    else{
                        //成功后  关闭当前窗体
                        $(".btn-close").click();
                        window.parent.location.reload();
                        //数据表格reload
                    }
                },
                complete:function(XMLHttpRequest,textStatus){
                    //请求发送完成
                    progressClose();
                },
                error:function(XMLHttpRequest,textStatus){
                    //请求发送失败
                }
            });
            //将layui表单域值转换为JSON串：JSON.stringify(data.field)
            return false;
        });

        $(".btn-close").click(function(){
            //关闭父窗口
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
        });
    });
</script>


</body>

</html>