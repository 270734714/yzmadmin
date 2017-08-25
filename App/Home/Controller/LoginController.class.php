<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends Controller {

	// 登录首页
    public function index(){
    	$this->display();
    }

    // 注册页面
    public function reg(){
    	$this->display();
    	
    }

    // 验证码

    public function yzm(){
    	$v=new \Think\Verify;
    	$v->codeSet="123";
    	$v->entry();
    }

    // 注册


    public function insert(){
    	$model=D('User');
    	header('content-type:text/html;charset=utf-8;');
    	if (!$model->create()) {
    		# code...
    		$this->error($model->getError());
    	}else{
    		if ($model->add()) {
    			# code...
    			$this->success('注册成功',U('index'));
    		}else{
    			$this->error('注册失败');
    		}
    	}

    }

    // 处理登录

    public function check(){
    	$model=M('user');

    	// 接受数据

    	$name=$_POST['name'];
    	$pass=md5($_POST['pass']);

    	$data=$model->where("name='$name' and pass='$pass' and statu=0")->find();

    	if ($data) {
    		# code...
    		session('lenovo_home_id',$data[id]);
    		session('lenovo_home_name',$data[name]);
    		$this->success('登录成功',U('Index/index'));

    	}else{
    		$this->error('登录失败');
    	}
    }

    // 退出

    public function logout(){
    	$_SESSION=array();
    	session(null);
		$this->success('退出成功',U('Index/index'));


    }

    public function allow(){
		$this->error('请登录',U('Login/index'));

    }

}