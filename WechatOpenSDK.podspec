Pod::Spec.new do |s|
  s.name                = "WechatOpenSDK"
  s.version             = "1.8.7.1"
  s.summary             = "WeChat SDK for iOS: Supports 64-bit builds, Libraries necessary for features such as Share to WeChat, WeChat login, Favorites, WeChat Pay, and others. Integrate via CocoaPods or download the SDK."
  s.requires_arc        = true
  s.homepage            = "http://open.weixin.qq.com/"
  s.license             = { :type => 'LGPL', :text => <<-LICENSE
                                                   ® 1998 - 2020 Tencent All Rights Reserved.
                                                   LICENSE
                          }
  s.author              = { "weixinapp" => "weixinapp@qq.com" }
  s.platform            = :ios, "8.0"
  s.source              = { :git => "https://github.com/purpen/WechatOpenSDK.git", :tag => "v#{s.version}" }
  s.source_files        = 'SDKExport/*.{h,m}'
  s.vendored_libraries  = 'SDKExport/libWeChatSDK.a'
  s.frameworks 			    = 'Security', 'CoreTelephony', 'SystemConfiguration', 'CFNetwork'
  s.libraries           = 'z', 'sqlite3.0', 'c++'
end