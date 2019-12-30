<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>添加用户信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="./plugins/layui/css/layui.css" media="all">
</head>

<body>

    <blockquote class="layui-elem-quote layui-text">
        本模块主要实现用户信息的添加，内容包括用户名、初始密码、所属部门名称、角色等。
    </blockquote>

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>用户信息</legend>
    </fieldset>

    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="text" name="name" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                    <input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">所属学院</label>
                <div class="layui-input-inline">
                    <select name="collegeid" lay-filter="collegeid" lay-verify="required">
                        <option value=""></option>
                        <option value="0" selected="">信电工程学院</option>
                        <option value="1">数理工程学院</option>
                        <option value="2">化工学院</option>
                        <option value="3">土木学院</option>
                        <option value="4">食品工程学院</option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">所属角色</label>
                <div class="layui-input-inline">
                    <select name="roleid" lay-filter="roleid" lay-verify="required">
                        <option value="">请选择</option>
                        <option value="0">教务处</option>
                        <option value="1" selected="">学院教务科</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <script src="./plugins/layui/layui.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
    <script>
        layui.use(['form', 'layedit', 'laydate'], function() {
            var form = layui.form,
                layer = layui.layer,
                layedit = layui.layedit,
                laydate = layui.laydate;

            //自定义验证规则
            form.verify({
                title: function(value) {
                    if (value.length < 5) {
                        return '标题至少得5个字符啊';
                    }
                },
                pass: [/(.+){6,12}$/, '密码必须6到12位'],
                content: function(value) {
                    layedit.sync(editIndex);
                }
            });

            //监听提交
            form.on('submit(demo1)', function(data) {
                layer.alert(JSON.stringify(data.field), {
                    title: '最终的提交信息'
                })
                return false;
            });


        });
    </script>

</body>

</html>