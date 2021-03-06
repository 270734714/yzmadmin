<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>后台管理系统</title>
	<link rel="shortcut icon" href="/Public/admin/img/1.png">
	<link rel="stylesheet" href="/Public/admin/bs/css/bootstrap.min.css">
	<script src="/Public/admin/bs/js/jquery.min.js"></script>
	<script src="/Public/admin/bs/js/bootstrap.min.js"></script>



	<link rel="stylesheet" href="/Public/muban/css/style.default.css" type="text/css" />
	<script type="text/javascript" src="/Public/muban/js/plugins/jquery-1.7.min.js"></script>
	<script type="text/javascript" src="/Public/muban/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
	<script type="text/javascript" src="/Public/muban/js/plugins/jquery.cookie.js"></script>
	<script type="text/javascript" src="/Public/muban/js/plugins/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="/Public/muban/js/plugins/jquery.flot.min.js"></script>
	<script type="text/javascript" src="/Public/muban/js/plugins/jquery.flot.resize.min.js"></script>
	<script type="text/javascript" src="/Public/muban/js/plugins/jquery.slimscroll.js"></script>
	<script type="text/javascript" src="/Public/muban/js/custom/general.js"></script>
	<script type="text/javascript" src="/Public/muban/js/custom/dashboard.js"></script>
	
</head>
<body>

    <div class="topheader">
        <div class="left">
            <h1 class="logo">xl.<span>Admin</span></h1>
            <span class="slogan">后台管理系统</span>
            
            <div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="请输入" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="ajax/notifications.html"><span>9</span></a>
        	</div>-->
            <div class="userinfo">
            	<img src="images/thumbs/avatar.png" alt="" />
                <span>管理员</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	切换主题: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
                <div class="userdata">
                	<h4>Juan</h4>
                    <span class="email">youremail@yourdomain.com</span>
                    <ul>
                    	<li><a href="editprofile.html">编辑资料</a></li>
                        <li><a href="accountsettings.html">账号设置</a></li>
                        <li><a href="help.html">帮助</a></li>
                        <li><a href="index.html">退出</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li class="current"><a href="#"><span class="icon icon-flatscreen"></span>首页</a></li>
            <li><a href="manageblog.html"><span class="icon icon-pencil"></span>博客管理</a></li>
            <li><a href="messages.html"><span class="icon icon-message"></span>查看消息</a></li>
            <li><a href="reports.html"><span class="icon icon-chart"></span>统计报表</a></li>
        </ul>
        
       <div class="headerwidget">
        	<div class="earnings">
            	<div class="one_half">
                	<h4>Today's Earnings</h4>
                    <h2>$640.01</h2>
                </div><!--one_half-->
                <div class="one_half last alignright">
                	<h4>Current Rate</h4>
                    <h2>53%</h2>
                </div><!--one_half last-->
            </div><!--earnings-->
        </div><!--headerwidget-->
        
    </div><!--header-->
    
    <div class="vernav2 iconmenu">
    	<ul>
        	<li><a href="#formsub" class="editor">管理员管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="<?php echo U('Admin/index');?>">管理员列表</a></li>
                </ul>
            </li>
			<li><a href="#member" class="elements">会员管理</a>
            	<span class="arrow"></span>
            	<ul id="member">
               		<li><a href="<?php echo U('User/index');?>">会员列表</a></li>
                </ul>
            </li>
            <li><a href="#classify" class="widgets">分类管理</a>
            	<span class="arrow"></span>
            	<ul id="classify">
               		<li><a href="<?php echo U('Types/index');?>">分类列表</a></li>
                </ul>
            </li>
		    <li><a href="#brand" class="typo">品牌管理</a>
            	<span class="arrow"></span>
            	<ul id="brand">
               		<li><a href="<?php echo U('Brand/index');?>">品牌列表</a></li>
                </ul>
            </li>
			<li><a href="#goods" class="tables">商品管理</a>
            	<span class="arrow"></span>
            	<ul id="goods">
               		<li><a href="<?php echo U('Goods/index');?>">商品列表</a></li>
                </ul>
            </li>
		    <li><a href="#order" class="addons">订单管理</a>
            	<span class="arrow"></span>
            	<ul id="order">
               		<li><a href="<?php echo U('Orders/index');?>">订单列表</a></li>
               		<li><a href="<?php echo U('Orders/statu_list');?>">订单状态列表</a></li>
                </ul>
            </li>
			<li><a href="#comment" class="widgets">评论管理</a>
            	<span class="arrow"></span>
            	<ul id="comment">
               		<li><a href="<?php echo U('Comment/index');?>">评论列表</a></li>
                </ul>
            </li>
			<li><a href="#ads" class="arrow">广告管理</a>
				<span class="arrow"></span>
				<ul id="ads">
						<li><a href="<?php echo U('Ads/class_list');?>">分类广告</a></li>
						<li><a href="<?php echo U('Ads/index');?>">广告管理</a></li>
				</ul>
			</li>
		    <li><a href="#sys" class="widgets">系统管理</a>
            	<span class="arrow"></span>
            	<ul id="sys">
               		<li><a href="<?php echo U('Sys/index');?>">系统配置</a></li>
               		<li><a href="<?php echo U('Sys/lunbo_list');?>">轮播图管理</a></li>
                </ul>
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
        
<ol class="breadcrumb">
	<li><a href="#"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
	<li><a href="#">评论管理</a></li>
	<li class="active">评论列表</li>

	<button class="btn btn-primary btn-xs pull-right"><span class="glyphicon glyphicon-refresh"></span></button>
</ol>

<!-- 面版 -->
<div class="panel panel-default">
	<div class="panel-heading">
		
		<button class="btn btn-success">评论列表</button>
		<p class="pull-right tots" >共有 <?php echo ($tot); ?> 条数据</p>
		<form action="" class="form-inline pull-right">
			<div class="form-group">
				<input type="text" name="" class="form-control" placeholder="请输入你要搜索的内容" id="">
			</div>
			
			<input type="submit" value="搜索" class="btn btn-success">
		</form>


	</div>
	<table class="table-bordered table table-hover">
		<th>ID</th>
		<th>商品名</th>
		<th>商品图片</th>
		<th>评论者</th>
		<th>内容</th>
		<th>时间</th>
		<th>状态</th>
		<th>星级</th>
		<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$admin): $mod = ($i % 2 );++$i;?><tr>
			<td><?php echo ($admin[id]); ?></td>
			<td><?php echo ($admin[gname]); ?></td>
			<td><img src="/lenovo/Uploads/Goods/sm_<?php echo ($admin[img]); ?>" alt=""></td>
			<td><?php echo ($admin[text]); ?></td>
			<td><?php echo ($admin[uname]); ?></td>
			<td><?php echo date('Y-m-d H:i:s',$admin['time']);?></td>
			
			<td>
				<select name="" id="">
					<?php switch($admin["statu"]): case "0": ?><option selected value="0">未审核</option>
							<option value="1">正常</option>
							<option value="2">禁用</option><?php break;?>
						<?php case "1": ?><option  value="0">未审核</option>
							<option selected value="1">正常</option>
							<option value="2">禁用</option><?php break;?>
						<?php case "2": ?><option  value="0">未审核</option>
							<option  value="1">正常</option>
							<option selected value="2">禁用</option><?php break; endswitch;?>
					
				</select>
				<button onclick="statu1(this,<?php echo ($admin[id]); ?>)" class="btn btn-danger">提交</button>
			</td>
			<td><?php echo str_repeat('<span style="color:red;" class="glyphicon glyphicon-star"></span>',$admin[star]); echo str_repeat('<span style="color:red;" class="glyphicon glyphicon-star-empty"></span>',5-$admin[star]);?></td>
			
		</tr><?php endforeach; endif; else: echo "" ;endif; ?>

		
	</table>
	<!-- 分页效果 -->
	<div class="panel-footer">

		<nav style="text-align:center;">
			<?php echo ($pages); ?>
		</nav>

	</div>
</div>
<script>
	
	function statu1(obj,id){
		// 获取上一个select
		statu=$(obj).prev().val();
		// ajax提交数据


		$.post("<?php echo U('ajax_statu');?>",{statu:statu,id:id},function(data){
			if (data==1) {

			}else{
				alert('修改失败');
			}
		});
	}
</script>
	</div><!-- centercontent -->
</div><!--bodywrapper-->

	<!-- 修改密码的摸态框 -->
	<div class="modal fade" id="editPass">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title">修改密码</h4>
				</div>
				<div class="modal-body">
					<form action="">
						<div class="form-group">
							<label for="">原密码</label>
							<input type="password" name="" class="form-control" placeholder="请输入原密码" id="">
						</div>
						<div class="form-group">
							<label for="">新密码</label>
							<input type="password" name="" class="form-control" placeholder="请输入新密码" id="">
						</div>
						<div class="form-group">
							<label for="">确认密码</label>
							<input type="password" name="" class="form-control" placeholder="请再次输入密码" id="">
						</div>
						<div class="form-group pull-right">
							<input type="submit" value="提交" class="btn btn-success">
							<input type="reset" value="重置" class="btn btn-danger">
						</div>

						<div style="clear:both"></div>
					</form>
				</div>
				
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
</body>
<script>


	// 菜单切换
	$(".panel-title").click(function(){
		$(".list-group").hide();
		$(this).parent().next().toggle(500);
	});

	str="<?php echo (CONTROLLER_NAME); ?>";

	$("#"+str).click();
	
</script>
</html>