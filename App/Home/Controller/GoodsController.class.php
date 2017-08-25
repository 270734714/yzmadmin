<?php
namespace Home\Controller;
use Think\Controller;
class GoodsController extends Controller {

	// 商品页面
    public function index(){

    	// 获取id
    	$id=$_GET['id'];

    	// 查询数据库

    	$model=M('goods');

    	// 查询商品信息
    	$data=$model->find($id);

    	// 分配数据

    	$this->data=$data;

    	// 查商品图片
    	$this->imgs=M('goods_img')->where("gid =$id")->select();

    	// 销量

    	$this->xiaoliang=$model->order('xl desc')->limit(6)->select();
    	$this->tuijian=$model->order('rand()')->limit(6)->select();
    	$this->display();


    }
}