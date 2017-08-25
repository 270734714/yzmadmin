<?php
namespace Admin\Controller;
use Think\Controller;
class AdsController extends AllowController {
	// 广告首页
    public function index(){

    	$model=M('ads');

    	$this->data=$model->select();
    	$this->display();
    }

    // 广告的添加页面

    public function add(){
    	if (IS_POST) {
    		$model=M('ads');

    		if ($model->add($_POST)) {
    			# code...
    			$this->success('添加成功',U('index'));
    		}else{
    			$this->error('添加失败');

    		}
    	}else{
    		$this->display();
    	}
    	
    }

// ===============================================================

    // 分类广告首页

    public function class_list(){
    	// 实例化
    	$model=M('classads');
    	// sql

    	$this->data=$model->field("yzm_classads.*,yzm_classs.cname")->join("yzm_classs on yzm_classs.id=yzm_classads.cid")->select();
    	$this->display();
    }

    // 分类广告添加页

    public function class_add(){

    	if (IS_POST) {
    		$model=M('classads');

    		if ($model->add($_POST)) {
    			# code...
    			$this->success('添加成功',U('class_list'));
    		}else{
    			$this->error('添加失败');

    		}
    	}else{
    		// 实例化

    		$model=M('classs');

    		// 查询顶级分类

    		$this->data=$model->where("pid=0")->select();
    		$this->display();
    	}
    	
    }

    // 分类广告修改页

    public function class_edit(){
    	$this->display();
    }

    // 分类广告删除

    public function class_del(){
    }

    // 无刷新上次图片

    public function ajax_up(){
    	if (!empty($_FILES)) {
            //图片上传设置
           	$upload = new \Think\Upload();// 实例化上传类
           	$upload->autoSub=false;
           	$upload->rootPath='./Uploads/Ads/';
            $images = $upload->upload();
            //判断是否有图
            if($images){
                $info=$images['Filedata']['savepath'].$images['Filedata']['savename'];
                //返回文件地址和名给JS作回调用
                $path=$info;

                echo $info;

            }else{
                $this->error($upload->getError());//获取失败信息
            }
        }
    }
}