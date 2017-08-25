<?php 

 function delDir($path){
	// 遍历目录
	$files=scandir($path);

	foreach ($files as $key => $value) {
		
		if ($value !='.' && $value !='..') {
			# code...
			$newPath=$path.'/'.$value;
			if (is_dir($newPath)) {
				# code...
				delDir($newPath);
			}else{
				unlink($newPath);
			}
		}
	}

	rmdir($path);
}


 ?>