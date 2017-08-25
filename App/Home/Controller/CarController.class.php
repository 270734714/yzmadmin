<?php
namespace Home\Controller;
use Think\Controller;
class CarController extends Controller {

	// 购物车页面
    public function index(){

    	$this->data=$_SESSION['goods'];
    	$this->display();
    }


    // 加入购物车相关操作

    public function addCar(){
    	// 接受数据
    	$id=$_GET['id'];

    	// 获取数据相关信息

    	$model=M('goods');

    	$_SESSION['goods'][$id]=$model->find($id);
    	$_SESSION['goods'][$id]['number']=1;

    	$this->success('加入购物车成功',U('Car/index'));
    }

    // ajax的删除

    public function ajax_del(){
    	$id=$_POST['id'];

    	unset($_SESSION['goods'][$id]);

    	echo 1;
    }
}