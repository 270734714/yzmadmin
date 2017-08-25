<?php
namespace Admin\Controller;
use Think\Controller;
class AdminController extends AllowController {
	// 管理员首页
    public function index(){
    	// 实例化数据库
    	$model=M('admin');
    	// 查询总数据
    	$tot=$model->count();

    	// 实例化分页

    	$page=new \Think\Page($tot,5);

    	// 获取当前页
    	$p=isset($_GET['p'])?$_GET['p']:1;

    	$this->data=$model->order('id desc')->page($p.',5')->select();

    	// 分配分页
    	$this->pages=$page->show();

    	$this->tot=$tot;

    	$this->display();
    	
    }

    // 添加页面及操作

    public function add(){
    	if (IS_POST) {
    		// 实例化数据模型
    		$model=D('admin');

    		$model->create();
    		$model->time=time();
    		$model->statu=0;
    		$model->password=md5($_POST['password']);

    		if ($model->add()) {
    			# code...
    			$this->success('添加成功',U("Index"));
    		}else{
    			$this->error('添加失败');

    		}
    	}else{
    		$this->display();	
    	}
    }
}