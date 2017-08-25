<?php
namespace Home\Controller;
use Think\Controller;
class OrdersController extends Controller {

	// 支付页面
    public function index(){

    	

    	if (IS_POST) {
    		# code...
    		$ids=$_POST['ids'];

    		$arr=array();

    		foreach ($ids as $key => $value) {
    			foreach ($_SESSION['goods'] as $k => $v) {
    				# code...
    				if ($value==$v[id]) {
    					$arr[]=$v;

    				}
    			}
    		}
    		$this->data1=$arr;
    	}else{

	    	$id=$_GET['id'];

	    	$model=M('goods');

	    	$datas=$model->where("id=$id")->select();
			$datas[0]['number']=1;
			$this->data1=$datas;
			
	    	$_SESSION['href']=__SELF__;
	    }

    	$addr=M('address');

    	$this->addr=$addr->where("uid=$_SESSION[lenovo_home_id]")->select();

    	$this->display();
    }

    // 付款
    public function money(){
    	$this->display();
    	
    }

    // code

    public function code(){
    	$model=M('orders');

  
    	$code=time().rand();
    	$time=time();
    	for ($i=0; $i < count($_POST[id]); $i++) {
    		$data=array(); 
    		$data['code']=$code;
    		$data['uid']=$_SESSION['lenovo_home_id'];
    		$data['aid']=$_POST['addr'];
    		$data['gid']=$_POST['id'][$i];
    		$data['price']=$_POST['price'][$i];
    		$data['num']=$_POST['number'][$i];
    		$data['time']=$time;
    		$data['sid']=1;
    		$model->add($data);
    	}
    	


		for ($i=0; $i < count($_POST[id]); $i++) {
    		unset($_SESSION[goods][$_POST[id][$i]]);
    	}
		$this->success("生产订单{$code} 成功",U('Orders/money'));
    	
    }
}