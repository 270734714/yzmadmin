<?php
namespace Home\Controller;
use Think\Controller;
class PersonController extends Controller {

	//个人中心页面
    public function index(){
    	$this->display();
    }

    // 地址
    public function addr(){
    	$this->display();
    }

     // 密码
    public function mima(){
    	$this->display();
    }

     // 信息
    public function info(){
    	$this->display();
    }

    // 购物车添加页面

    public function addr_add(){
        
        $this->display();
    }

    // 添加地址

    public function addr_insert(){
        $model=M('address');

        $_POST['uid']=$_SESSION['lenovo_home_id'];

        if ($model->add($_POST)) {
            $this->success('添加成功',$_SESSION['href']);

        }else{
            $this->success('添加失败');

        }
    }
 

}