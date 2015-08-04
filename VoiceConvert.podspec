#
#  Be sure to run `pod spec lint VoiceConvert.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "VoiceConvert"
  s.version      = "0.0.1"
  s.summary      = "iOS音频文件转换"
  s.homepage     = "https://github.com/AwakenDragon/VoiceConvert"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "AwakenDragon" => "940549652@qq.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "6.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "8.4"
  # s.osx.deployment_target = "10.10.4"
  # s.watchos.deployment_target = "1.0.1"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/AwakenDragon/VoiceConvert.git",:tag => s.version.to_s}


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'VoiceConvert' do |voiceConvert|
      voiceConvert.source_files = 'VoiceConvert/VoiceConvert/**/*'
      voiceConvert.public_header_files = 'VoiceConvert/VoiceConvert/**/*.h'
  end

  s.subspec 'amrwapper' do |amrwapper|
      amrwapper.source_files = 'VoiceConvert/amrwapper/**/*'
      amrwapper.public_header_files = 'VoiceConvert/amrwapper/**/*.h'
  end

  s.subspec 'opencore-amrnb' do |opencore-amrnb|
      opencore-amrnb.source_files = 'VoiceConvert/opencore-amrnb/**/*'
      opencore-amrnb.public_header_files = 'VoiceConvert/opencore-amrnb/**/*.h'
  end

  s.subspec 'opencore-amrwb' do |opencore-amrwb|
      opencore-amrwb.source_files = 'VoiceConvert/opencore-amrwb/**/*'
      opencore-amrwb.public_header_files = 'VoiceConvert/opencore-amrwb/**/*.h'
  end

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.frameworks = "Foundation"
  s.vendored_libraries = ['VoiceConvert/opencore-amrnb/libopencore-amrnb.a',
                          'VoiceConvert/opencore-amrwb/libopencore-amrwb.a']


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  
end
