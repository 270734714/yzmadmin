<?php
namespace Admin\Controller;
use Think\Controller;
class TypesController extends AllowController {
	// 分类首页
    public function index(){
    	// 数据模型
    	$model=M('classs');
    	// 查询数据
 	
 		$this->tot=$model->count();
    	$this->data=$model->field(" * ,concat(path,id) pp")->order('pp asc')->select();
    	
    	// SELECT *,concat(path,id) pp FROM `yzm_classs` ORDER BY pp asc
    	$this->display();
    }


    // 添加页面

    public function add(){
    	$this->display();
    }

    // 添加操作

    public function insert(){
    	// 实例化数据模型
    	$model=M('classs');

    	if ($model->add($_POST)) {
    		# code...
    		$this->success('添加成功',U('index'));
    	}else{
    		$this->error('添加失败',U('add'));

    	}
    }
}