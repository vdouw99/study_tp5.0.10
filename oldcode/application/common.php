<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件

// 切换“生活服务分类”中某个分类的“发布状态”
function status($status)
{
    if ($status == 1) {
        $str = '<span class="label label-success radius">正常</span>';
    } elseif ($status == 0) {
        $str = '<span class="label label-danger radius">待审</span>';
    } elseif ($status == -1) {
        $str = '<span class="label label-danger radius">删除</span>';
    }
    return $str;
}

/**
 * @param $url
 * $param int $type get:0 post:1
 * $param array $data
 */
function doCurl($url, $type = 0, $data = [])
{
    $ch = curl_init(); //初始化
    //设置选项
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    // curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    if ($type == 1) {  //post
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    }
    //执行并获取内容
    $output = curl_exec($ch);
    //释放curl句柄
    curl_close($ch);
    return $output;
}