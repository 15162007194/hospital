<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>课程信息列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" media="all">
</head>

<body>
    <!--数据查询-->
    <form class="layui-form">
        <div class="layui-input-inline w149">
            <select id="xq">
                <option value="0">选择学期</option>
                <option value="1" >2017-2018-2</option>
                <option value="2" >2018-2019-1</option>
            </select>
        </div>
        <div class="layui-input-inline w150">
            <select id="yxid">
                <option value="0">选择学院</option>
                <option value="1">经济学院</option>
                <option value="2">教科学院</option>
                <option value="3">体育学院</option>
                <option value="4">人文学院</option>
                <option value="5">外语学院</option>
                <option value="6">艺术学院</option>
                <option value="7">数理学院</option>
                <option value="8">化工学院</option>
                <option value="9">信电学院</option>
                <option value="10">机电学院</option>
                <option value="11">土木学院</option>
                <option value="12">环境学院</option>
                <option value="13">食品学院</option>
                <option value="14">管理学院</option>
                <option value="15">马克思学院</option>
                <option value="16">图书馆</option>
                <option value="17">创新创业学院</option>
                <option value="19">宣传部</option>
                <option value="21">学工处</option>
                <option value="22">院长办公室</option>
                <option value="23">教务处</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <input type="text" autocomplete="off" placeholder="请输入课程名称"  class="layui-input" id="kcm" value="">
        </div>
        <div class="layui-input-inline">
            <input type="text" autocomplete="off" placeholder="请输入任课教师"  class="layui-input" id="skls" value="">
        </div>

        <a class="layui-btn mgl-20" data-type="reload" id="queryBtn">查询</a>
        <a class="layui-btn mgl-20 layui-btn-normal" data-type="add" id="addBtn">添加</a>
    </form>
    <!--用户数据表格-->
    <table class="layui-hide" id="courselist" lay-filter="courselist"></table>

    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    </script>

    <script src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
    <script>
        layui.use('table', function(){
            var table = layui.table;
            table.render({
                elem: '#courselist'
                ,url:'${pageContext.request.contextPath}/courseinfo'
                ,title: '课程数据表'
                ,cols: [[
                    {type: 'checkbox', fixed: 'left'}
                    ,{field:'id', title:'id', width:100}
                    ,{field:'xqmc', title:'学期', width:120}
                    ,{field:'xymc', title:'学院名称', width:120}
                    ,{field:'kch', title:'课程号', width:120}
                    ,{field:'kxh', title:'课序号', width:120}
                    ,{field:'kcm', title:'课程名称', width:160}
                    ,{field:'skls', title:'授课老师', width:120}
                    ,{field:'lszc', title:'职称', width:100}
                    ,{field:'kcsx', title:'课程属性', width:100}
                    ,{field:'bjmc', title:'班级', width:160}
                    ,{field:'xkrs', title:'人数', width:100}
                    ,{field:'zxs', title:'总学时', width:100}
                    ,{field:'skxs', title:'授课学时', width:100}
                    ,{field:'sjxs', title:'实践学时', width:100}
                    ,{field:'syxs', title:'实验学时', width:100}
                    ,{field:'xf', title:'学分', width:100}
                    ,{field:'kclx', title:'课程类型', width:100}
                    ,{field:'sfcxk', title:'是否专业核心课 ', width:100,templet: function(res){
                        var sfcxk = "";
                        switch(res.sfcxk) {
                            case 0: sfcxk = ""; break;
                            case 1: sfcxk = "是";  break;
                        };
                        return sfcxk;
                    }}
                    ,{field:'bz', title:'备注', width:100}
                    ,{field:'kclx1', title:'课程类型1', width:100}
                    ,{field:'kclx2', title:'课程类型2', width:100}
                    ,{field:'kclx3', title:'课程类型3', width:100}
                    ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
                ]]
                ,page: true
            });

            var $ = layui.$, active = {
                reload: function(){
                    //执行重载
                    table.reload('courselist', {
                        page: {
                            curr: 1 //重新从第 1 页开始
                        }
                        ,where: {
                            //重新加载条件
                             xq : $('#xq').val(),
                             yxid : $('#yxid').val(),
                             kcm : $('#kcm').val(),
                             skls : $('#skls').val()
                        }
                    });
                },
                getCheckData: function(){ //获取选中数据
                    layer.open({
                        type: 1,
                        title: '批量处理',
                        area: '460px',
                        offset: '100px',
                        content: $("#addRecordBox"),
                        end: function() {
                            $("#addRecordBox").find('input').val("")
                        }
                    });
                },
                toedit:function (winTitle,kcid) {
                    layer.open({
                        type: 2,
                        title: winTitle,
                        shadeClose: false,
                        shade: 0.5,
                        maxmin: true, //开启最大化最小化按钮
                        area: ['1000px', '600px'],
                        content: '${pageContext.request.contextPath}/courseinfo/toedit/'+kcid
                    });
                }
            };

            $('#queryBtn').on('click', function(){
                active.reload();
            });

            $("#addBtn").click(function () {
                active.toedit("徐州工程学院教学工作量核算系统-修改课程信息",0);
            });

            //监听行工具事件
            table.on('tool(courselist)', function(obj){
                var data = obj.data;
                //console.log(obj)
                if(obj.event === 'del'){
                    layer.confirm('真的删除行么', function(index){
                        obj.del();
                        layer.close(index);
                        $ajax({
                            url:"${pageContext.request.contextPath}"+'/courseinfo/'+data.id,
                            method:'DELETE',
                            dataType:"json",
                            success:function (msg) {
                                if(msg.msgkey=="deleteError"){
                                    alert(msg.message);
                                }
                                else{
                                    alert(msg.message);
                                    window.location.reload();
                                }
                            }
                        })
                    });
                } else if(obj.event === 'edit'){
                    active.toedit("徐州工程学院教学工作量核算系统-修改课程信息",data.id);
                }
            });
        });
    </script>

</body>

</html>