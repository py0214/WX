<?php 

namespace app\api\controller\v1;


use app\api\model\Order as OrderModel;
use think\Exception;
use think\Log;

class Apay
{
    public function pay($id)
    {
        echo $id;
        
        OrderModel::where('id', '='+ $id)
        ->update(['status' => '2']);

    }
}