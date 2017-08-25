<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends AllowController {
	// 后台首页
    public function index(){
    	$this->display();
    }

    // 清除缓存

    public function clears(){
    	// 路径
    	$path="./App/Runtime";

    	// 遍历目录

    	delDir($path);

    	$this->success('清除成功',U('Index/index'));

    }

   

    
}