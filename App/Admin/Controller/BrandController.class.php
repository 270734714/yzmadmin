<?php
namespace Admin\Controller;
use Think\Controller;
class BrandController extends AllowController {
	// 品牌首页
    public function index(){

        $this->data=M('brand')->select();
        $this->display();

    }

    // 品牌添加

    public function add(){
        $this->display();

    }

    // 添加操作

    public function insert(){
        // 实例化数据
        $model=M('Brand');

        // 添加数据

        if ($model->add($_POST)) {
            # code...
            $this->success('添加成功',U('index'));
        }else{
            $this->error('添加失败');
        }
    }
   
    // 无刷新上次图片



    public function ajax_up(){
    	if (!empty($_FILES)) {
            //图片上传设置
           	$upload = new \Think\Upload();// 实例化上传类
           	$upload->autoSub=false;
            $upload->rootPath='./Uploads/Brand/';
            $images = $upload->upload();
            //判断是否有图
            if($images){
                $info=$images['Filedata']['savepath'].$images['Filedata']['savename'];
                //返回文件地址和名给JS作回调用
                echo $info;

            }else{
                $this->error($upload->getError());//获取失败信息
            }
        }
    }
}