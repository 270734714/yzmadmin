<?php
namespace Admin\Controller;
use Think\Controller;
class SysController extends AllowController {
	// 系统首页
    public function index(){

    	if (IS_POST) {
    		// 获取公共配置文件汇总的数据
    		$arr=include "./App/Common/Conf/config.php";

    		// 判断是否修改logo

    		if ($_POST['LOGO']!=$_POST['oldlogo']) {
				unlink("./Uploads/{$_POST[oldlogo]}");
    		}
    		unset($_POST['oldlogo']);
    		// 合并数组
    		$brr=array_merge($arr,$_POST);

    		// 遍历字符串写入源文件
    		foreach ($brr as $key => $value) {
    			$str.="'$key' => '$value',\n";
    		}

    		// 拼接字符串
    		$newStr="<?php return array( \n$str \n)?>";

    		// 写入文件
    		file_put_contents('./App/Common/Conf/config.php',$newStr);

    		$this->success('配置成功');
    	}else{
    		$this->display();
    	}

    }
    // ======================================================================

    // 轮播首页

    public function lunbo_list(){
    	// 实例化数据
    	$model=M('slider');
    	// 数据总数
 	   	$tot=$model->count();

    	$this->tot=$tot;

    	$this->data=$model->order('sort desc')->select();
    	$this->display();
    }

    // 轮播添加页面
    public function lunbo_add(){
    	$this->display();
    }
    // 轮播添加页面
    public function lunbo_edit($id){

    	$model=M('slider');
    	$this->data=$model->find($id);

    	$this->display();
    }

    // 轮播图的更新
    public function lunbo_save(){
    	$model=M('Slider');

    	if ($model->save($_POST)) {
    		# code...
    		if ($_POST['img']==$_POST['oldimg']) {
    			# code...
    		}else{
    			unlink("./Uploads/Lunbo/sm_{$_POST[oldimg]}");
    			unlink("./Uploads/Lunbo/{$_POST[oldimg]}");
    			unlink("./Uploads/Lunbo/lg_{$_POST[oldimg]}");
    			unlink("./Uploads/Lunbo/md_{$_POST[oldimg]}");
    		}
    		$this->success('修改成功',U('lunbo_list'));
    	}else{
    		$this->error('修改失败');
    	}
    }

    // 处理ajax修改状态

    public function ajax_sorts(){
    	if (M('slider')->save($_POST)) {
    		# code...
    		echo "1";
    	}else{
    		echo "0";
    	}
    }


    // 处理ajax删除数据

    public function ajax_dels(){

    	$id=$_POST['id'];
    	$model=M('Slider');
    	$data=$model->find($id);
    	if ($model->delete($id)) {
    		# code...
    		
    		
    		unlink("./Uploads/Lunbo/sm_{$data[img]}");
    		unlink("./Uploads/Lunbo/{$data[img]}");
    		unlink("./Uploads/Lunbo/lg_{$data[img]}");
    		unlink("./Uploads/Lunbo/md_{$data[img]}");

    		echo "1";

    		
    	}else{
    		echo "0";
    	}
    	
    }
    // 插入数据

    public function lunbo_insert(){
    	$model=M('slider');

    	if ($model->add($_POST)) {
    		$this->success('添加成功',U('lunbo_list'));
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
            $upload->rootPath='./Uploads/Lunbo/';

            $images = $upload->upload();
            //判断是否有图
            if($images){
                $info=$images['Filedata']['savepath'].$images['Filedata']['savename'];
                //返回文件地址和名给JS作回调用
                $path=$info;
                // 对图片进行裁剪和水印处理
                $image=new \Think\Image();
                // 打开文件-并进行缩放
                $image->open('./Uploads/Lunbo/'.$path)->thumb(800,800)->save('./Uploads/Lunbo/lg_'.$path);
                $image->open('./Uploads/Lunbo/'.$path)->thumb(500,500)->save('./Uploads/Lunbo/md_'.$path);
                $image->open('./Uploads/Lunbo/'.$path)->thumb(100,100)->save('./Uploads/Lunbo/sm_'.$path);
                // 打开文件-并进行水印

                echo $info;

            }else{
                $this->error($upload->getError());//获取失败信息
            }
        }
    }


    public function ajax_ups(){
    	if (!empty($_FILES)) {
            //图片上传设置
           	$upload = new \Think\Upload();// 实例化上传类
           	$upload->autoSub=false;
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