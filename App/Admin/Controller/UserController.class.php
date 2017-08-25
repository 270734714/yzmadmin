<?php
namespace Admin\Controller;
use Think\Controller;
class UserController extends AllowController {
	// 用户首页
    public function index(){
        // 实例化数据
        $model=M('user');

        // 查询数据
        $tot=$model->count();

        // 实例化分页类

        $page=new \Think\Page($tot,5);

        // 获取页码

        $p=isset($_GET['p'])?$_GET['p']:1;

        $this->data=$model->order('id desc')->page("$p,5")->select();


        // 分配分页
        $this->page=$page->show();
        $this->tot=$tot;
    	$this->display();
    }

    // 重置

    public function reset($id){
        $model=M('User');

        $data[id]=$id;
        $data['pass']=md5('123');

        if ($model->save($data)) {
            # code...
            $this->success('重置成功');
        }else{
            $this->error('重置失败');

        }


    }

    // ajax 获取用户基本信息

    public function ajax_user_info(){
        $id=$_POST['id'];

        $this->data=M('userinfo')->where("uid =$id")->find();

        if ($this->data) {
            # code...
            echo $this->fetch();
        }else{
            echo 0;
        }
       
    }
}