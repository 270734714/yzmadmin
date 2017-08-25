<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends Controller {
	// 登录首页
    public function index(){
    	$this->display();
    }

    // 处理登录

    public function check(){
    	$model=M('admin');

    	$pass=md5($_POST['password']);

    	if ($data=$model->where("username='$_POST[username]' and password='$pass' and statu=0 ")->find()) {
    		# code...
    		$arr[id]=$data[id];
    		$arr['logintime']=time();
    		$arr['loginnum']=$data['loginnum']+1;

    		$model->save($arr);
    		session('lenovo_admin_id',$data['id']);
    		session('lenovo_admin_name',$data['username']);

    		$this->success('登录成功',U('Index/index'));
    	}else{

    		
    		$this->error('登录失败');
    	}
    }

    // 退出

    public function logout(){
    	$_SESSION=array();

    	session(null);
		$this->success('Bye Bye',U('index'));
    }
}