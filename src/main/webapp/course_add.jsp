<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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

    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">所在学院</label>
                <div class="layui-input-inline">
                    <select name="yxid" lay-verify="required">
                        <option value="">选择学院</option>
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
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">所在学期</label>
                <div class="layui-input-inline">
                    <select name="xq" lay-verify="required">
                        <option value="">选择学期</option>
                        <option value="1" >2017-2018-2</option>
                        <option value="2" >2018-2019-1</option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">课程号</label>
                <div class="layui-input-inline">
                    <input type="text" name="kch" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">课程名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="kcm" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">课序号</label>
                <div class="layui-input-inline">
                    <input type="text" name="kxh" lay-verify="required|number" autocomplete="off" class="layui-input" value="1">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">核心课程</label>
                <div class="layui-input-inline">
                    <select name="sfcxk" lay-verify="required">
                        <option value="">是否是核心课鹅城</option>
                        <option value="1" >是</option>
                        <option value="0" >否</option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">授课老师</label>
                <div class="layui-input-inline">
                    <input type="text" name="skls" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">教师职称</label>
                <div class="layui-input-inline">
                    <input type="text" name="lszc" lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">课程属性</label>
                <div class="layui-input-inline">
                    <input type="text" name="kcsx" lay-verify="required" placeholder="填写专业必修|选修|校任选" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">授课班级</label>
                <div class="layui-input-inline" style="width:520px;">
                    <input type="tel" name="bjmc" lay-verify="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">选课人数</label>
                <div class="layui-input-inline">
                    <input type="text" name="xkrs" lay-verify="required|number" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">总学时</label>
                <div class="layui-input-inline">
                    <input type="text" name="zxs" lay-verify="required|number" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">授课学时</label>
                <div class="layui-input-inline">
                    <input type="text" name="skxs" lay-verify="number" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">实践学时</label>
                <div class="layui-input-inline">
                    <input type="text" name="sjxs" lay-verify="number" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">实验学时</label>
                <div class="layui-input-inline">
                    <input type="text" name="syxs" lay-verify="number" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">学分</label>
                <div class="layui-input-inline">
                    <input type="text" name="xf" lay-verify="required|number" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">课程类别</label>
                <div class="layui-input-inline">
                    <select name="kclx" lay-verify="required">
                        <option value="">选择课程类别</option>
                        <option value="通识必修课">通识必修课</option>
                        <option value="通识选修课">通识选修课</option>
                        <option value="学科基础课" >学科基础课</option>
                        <option value="专业选修课">专业选修课</option>
                        <option value="集中实践课">集中实践课</option>
                        <option value="-" >其它</option>
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
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">保存</button>
                <button class="layui-btn layui-btn-primary btn-close">关闭</button>
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
                $ = layui.$;

            //监听提交
            form.on('submit(demo1)', function(data) {
                layer.alert(JSON.stringify(data.field), {
                    title: '最终的提交信息'
                })
                $(".btn-close").click();
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