<?php

namespace Home\Model;

use \Think\Model;

class UserModel extends Model{

	// 数据模型
	protected $_validate = array(
		// array(验证字段1,验证规则,错误提示,[验证条件,附加规则,验证时间]),

		array('name','require','名字必须'),
		array('name','6,12','名字6-12位之间',1,'length',1),
		array('name','','用户名已存在',1,'unique',1),
		array('pass','require','密码存在'),
		array('pass','repass','密码不一致',1,'confirm',1),
		array('code','checkCode','验证码有误',1,'callback',1),

	);


	public function checkCode(){
		$verify = new \Think\Verify();
		$id='';
	    return $verify->check($_POST['code'], $id);
	}

	 protected $_auto = array ( 
         array('statu','0'),  // 新增的时候把status字段设置为1
         array('pass','md5',1,'function') , // 对password字段在新增和编辑的时候使md5函数处理
         array('time','time',1,'function'), // 对update_time字段在更新的时候写入当前时间戳
     );
}




 ?>