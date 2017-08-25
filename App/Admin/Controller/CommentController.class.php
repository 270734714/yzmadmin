<?php
namespace Admin\Controller;
use Think\Controller;
class CommentController extends AllowController {
	// 评论首页
    public function index(){

    	// 实例化

    	$model=M('Comment');

    	// 查询多少数据
    	// sql语句

    	$sqlTot="select count(*) tot from yzm_comment,yzm_user,yzm_goods where yzm_comment.uid=yzm_user.id and yzm_comment.gid=yzm_goods.id order by yzm_comment.id desc";

    	$tots=$model->query($sqlTot);

    	$this->tot=$tots[0]['tot'];

    	// sql语句

    	$sql="select yzm_comment.*,yzm_user.name uname,yzm_goods.img,yzm_goods.name gname from yzm_comment,yzm_user,yzm_goods where yzm_comment.uid=yzm_user.id and yzm_comment.gid=yzm_goods.id order by yzm_comment.id desc";

    	// 发送sql语句

    	$this->data=$model->query($sql);
    	$this->display();
    }

    // ajax修改状态

    public function ajax_statu(){
    	$model=M('Comment');

    	if ($model->save($_POST)) {
    		# code...
    		echo "1";
    	}else{
    		echo "0";
    	}
    }
}