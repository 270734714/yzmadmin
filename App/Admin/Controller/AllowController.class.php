<?php
namespace Admin\Controller;
use Think\Controller;
class AllowController extends Controller {
	// 安全性检测

	public function _initialize(){
		if (session('lenovo_admin_id') && session('lenovo_admin_name')) {
			# code...
		}else{
			$this->error('请登录',U('Login/index'));

			exit;
		}
	}

}