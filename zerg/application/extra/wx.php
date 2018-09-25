<?php
/**
 * Created by PhpStorm.
 * User: xiaoyu
 * Date: 2018/2/4
 * Time: 11:43
 */
//微信的配置
return [
    'app_id' => 'wxca33e002e139de38',
    'app_secret' => '9cc2a427f9ca7f5fdfa8f5289e690ace',
    // 微信使用code换取用户openid及session_key的url地址
    'login_url' => "https://api.weixin.qq.com/sns/jscode2session?".
        "appid=%s&secret=%s&js_code=%s&grant_type=authorization_code",
];