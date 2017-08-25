<?php
namespace Admin\Controller;
use Think\Controller;
class OrdersController extends AllowController {
	// 订单首页
    public function index(){
    	$model=M('orders');

    	$sql="select yzm_orders.*,yzm_user.name uname,yzm_order_statu.name sname from yzm_orders,yzm_user,yzm_order_statu where yzm_orders.uid=yzm_user.id and yzm_orders.sid=yzm_order_statu.id group by yzm_orders.code";

    	// 发送sql语句
    	$this->data=$model->query($sql);

    	$this->display();
    }

    // 订单列表

    public function order_list($code){

    	$model=M('orders');
		$sql="select yzm_orders.*,yzm_goods.name gname,yzm_goods.img from yzm_goods,yzm_orders where yzm_orders.code='$code' and yzm_orders.gid=yzm_goods.id";

		$this->data=$model->query($sql);
		$this->display();


    }

    // 订单的详细收货地址

    public function orders_addr($id){
    	$model=M('address');


    	$this->data=$model->find($id);

    	$this->display();

    }

    // 订单状态的修改

    public function edit(){
    	$model=M('orders');
    	if (IS_POST) {
    		
    		if ($model->execute("update yzm_orders set sid=$_POST[sid] where code='$_POST[code]'")) {
    			# code...
    			$this->success('成功',U('index'));
    		}else{
    			$this->error('失败');
    		}
    	}else{

    		$code=$_GET['code'];
    		$this->data=$model->where("code = '$code'")->find();

    		$this->statu=M('order_statu')->select();
    		$this->display();
    	}

    }




// =====================================================================
    // 订单状态的管理

    public function statu_list(){
    	$model=M('order_statu');
    	$this->data=$model->select();
    	$this->display();
    }

    // 订单状态添加管理
    public function statu_add(){
    	$this->display();
    }
    // 订单状态插入管理
    public function statu_insert(){
    	$model=M('order_statu');
    	if ($model->add($_POST)) {
    		# code...
    		$this->success('成功',U('statu_list'));
    	}else{
    		$this->error('失败');
    	}
    }

}