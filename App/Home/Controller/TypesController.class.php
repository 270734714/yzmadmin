<?php
namespace Home\Controller;
use Think\Controller;
class TypesController extends Controller {

	// 分类页面
    public function index(){
    	// 接受数据

    	$id=$_GET['id'];
    	$cen=$_GET['cen'];

    	// 实例化分类

    	$class=M('classs');

    	$data=$class->find($id);
    	$this->data=$data;

    	if ($cen==3) {
    		// 如果是三级分类
    		# code...
    		$goods=M('goods')->where("cid=$id")->select();
    	}else if($cen==2){
    		// 二级分类
    		$class=M('classs')->field("id")->where("pid=$id")->select();
    		$arr=array();
    		foreach ($class as $key => $value) {
    			# code...
    			$arr[]=$value[id];

    		}
    		$str=join(",",$arr);

    		$goods=M('goods')->where("cid in ($str)")->select();

    	}else{
    		// 一级该分类
    		$class=M('classs')->field("id")->where("path like '%,$id,%'")->select();
    		$arr=array();
    		foreach ($class as $key => $value) {
    			# code...
    			$arr[]=$value[id];

    		}
    		$str=join(",",$arr);

    		$goods=M('goods')->where("cid in ($str)")->select();
    	}

    	$this->goods=$goods;
    	$this->display();
    }
}