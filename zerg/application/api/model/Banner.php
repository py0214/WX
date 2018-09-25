<?php


namespace app\api\model;


use think\Db;
use think\Exception;
use think\Model;

class Banner extends BaseModel
{
//[ SQL ] SHOW COLUMNS FROM `user` [ RunTime:0.001582s ]
    
    // php think optimize:schema

    protected $hidden = ['update_time','delete_time'];

    public function items()
    {
        return $this->hasMany('BannerItem', 'banner_id', 'id');
    }

    public static function getBannerByID($id)
    {
        $banner = self::with(['items', 'items.img'])
            ->find($id);
        
        return $banner;
    }
}