<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {

	// 前台首页
    public function index(){

    	// 遍历分类	
    	$class=M('classs');

    	$data=$class->select();
    	// 格式化数据
    	$class1=$this->getClass($data);

    	// 遍历分类广告

    	$ads=M('classads');
    	foreach ($class1 as $key => &$value) {
    		$value['ads_xiao']=$ads->where("pos=0 and cid=$value[id]")->limit(2)->select();
    		$value['ads_da']=$ads->where("pos=1 and cid=$value[id]")->limit(1)->select();
    	}

    	// 遍历商品

    	$goods=M('goods');
    	foreach ($class1 as $key => &$value) {
    		$value['zizi']=array();
    		
    		foreach ($value[zi] as $k => $v) {
    			foreach ($v[zi] as $k1 => $v1) {
    				$value['zizi'][]=$v1[id];
    			}
    		}

    		$str=join(',',$value['zizi']);
  			$value['goods']=$goods->where("cid in($str)")->limit(8)->select();
    	}
    	$this->class=$class1;
    	

    	// 查询轮播图

    	$this->lunbo=M('slider')->order("sort desc")->select();

    	// 遍历广告

    	$this->ads=$ads->select();

    	// 明星产品

    	$this->mingxing=$goods->limit(6)->select();

    	$this->display();
    }

    // 递归处理分类

    public function getClass($data,$pid=0){

    	$newArr=array();

    	foreach ($data as $key => $value) {
    		if ($value['pid']==$pid) {
    			# code...
    			$newArr[$value[id]]=$value;

    			$newArr[$value[id]]['zi']=$this->getClass($data,$value['id']);
    		}
    		
    	}

    	return $newArr;
    }
}