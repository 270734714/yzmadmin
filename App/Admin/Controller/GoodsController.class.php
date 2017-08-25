<?php
namespace Admin\Controller;
use Think\Controller;
class GoodsController extends AllowController {
	// 商品首页
    public function index(){
    	// 实例化商品
    	$model=M('Goods');

    	// 计算数据总数
    	$sqlTot="select count(*) tot from yzm_goods,yzm_classs where yzm_goods.cid=yzm_classs.id ";

    	// 发送语句
    	$tots=$model->query($sqlTot);
    	$tot=$tots[0]['tot'];

    	// 分页
    	$page=new \Think\Page($tot,5);
    	$this->tot=$tot;

    	// sql语句
    	$sql="select yzm_goods.*,yzm_classs.cname from yzm_goods,yzm_classs where yzm_goods.cid=yzm_classs.id limit $page->firstRow,$page->listRows";
    	// 发送sql语句

    	$this->pages=$page->show();

    	$this->data=$model->query($sql);
    	$this->display();
    }

    // 商品添加页面

    public function add(){

    	$model=M('classs');
    	$this->data=$model->field(" * ,concat(path,id) pp")->order('pp asc')->select();

        $this->brand=M('brand')->select();
    	$this->display();
    }

    // 数据的插入

    public function insert(){
    	$model=M('Goods');

    	$model->create();
    	if($model->add()){
    		// 获取上传的ID
    		$id=$model->getLastInsID();

    		// 获取更多图片

    		$imgs=$_POST['imgs'];
			$arr=explode(',',$imgs);
    		array_shift($arr);

    		// 插入数据库
    		$goods=M('Goods_img');
    		foreach ($arr as $key => $value) {
    			$data=array();
    			$data['gid']=$id;
    			$data['img']=$value;
    			$goods->add($data);
    		}
    		$this->success('上传成功',U('index'));

    	}else{
    		$this->error('上传失败');
    	}


    }
    // 查看商品的详细图片

    public function info($id){
    	$model=M('goods_img');

    	$this->data=$model->where("gid = $id")->select();



    	$this->display();

    }

    // 无刷新上次图片

    public function ajax_up(){
    	if (!empty($_FILES)) {
            //图片上传设置
           	$upload = new \Think\Upload();// 实例化上传类
           	$upload->autoSub=false;
           	$upload->rootPath='./Uploads/Goods/';
            $images = $upload->upload();
            //判断是否有图
            if($images){
                $info=$images['Filedata']['savepath'].$images['Filedata']['savename'];
                //返回文件地址和名给JS作回调用
                $path=$info;
                // 对图片进行裁剪和水印处理
                $image=new \Think\Image();
                // 打开文件-并进行缩放
                $image->open('./Uploads/Goods/'.$path)->thumb(540,540)->save('./Uploads/Goods/lg_'.$path);
                $image->open('./Uploads/Goods/'.$path)->thumb(200,200)->save('./Uploads/Goods/md_'.$path);
                $image->open('./Uploads/Goods/'.$path)->thumb(90,90)->save('./Uploads/Goods/sm_'.$path);
                // 打开文件-并进行水印

                echo $info;

            }else{
                $this->error($upload->getError());//获取失败信息
            }
        }
    }
}