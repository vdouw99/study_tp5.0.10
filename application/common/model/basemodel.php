<?php
/**
 * Created by PhpStorm.
 * User: sf
 * Date: 2017/10/9
 * Time: 21:57
 */

namespace app\common\model;

class Basemodel extends \think\Model
{
    protected $autoWriteTimestamp = true;

    /**
     * 根据ID更新数据
     * @param $id
     * @param $data
     * @return false|int
     */
    public function updateById($id, $data)
    {
        return $this->allowField(true)->save($data, ['id' => $id]);
    }
}