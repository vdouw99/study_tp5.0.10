<?php
/**
 * Created by PhpStorm.
 * User: sf
 * Date: 2017/10/21
 * Time: 17:18
 */

namespace app\home\controller;

class Basecontroller extends \app\common\controller\Commoncontroller
{
    public $memberUname;

    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        if (session('memberUser', '', 'memberUser') && session('memberUser', '', 'memberUser')['username']) {
            //$this->error('请先登录', '/index.php/index/login/index');
            $this->memberUname = session('memberUser', '', 'memberUser')['username'];
        } else {
            $this->memberUname = '';
        }
    }
}