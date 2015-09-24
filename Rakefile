# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'autolayout_bug'
  app.pods do
    pod 'pop',                git: 'https://github.com/facebook/pop.git'
    pod 'RestKit',            git: 'https://github.com/RestKit/RestKit.git', branch: 'development'
    pod 'RestKit/Testing',    git: 'https://github.com/RestKit/RestKit.git', branch: 'development'
    pod 'NYSegmentedControl', git: 'https://github.com/paddingtonsbear/NYSegmentedControl.git', branch: 'master'
    pod 'SDWebImage',         '3.7.1'
    # pod 'Facebook-iOS-SDK',   '~> 4.1.0'
    pod 'FBSDKCoreKit'
    pod 'SSKeychain',         '1.2.3'
    pod 'HIPImageCropper',    '2.0.0'
    pod 'HUMSlider',          '~> 1.0'
    pod 'UAProgressView',     '0.1.2'
    pod 'SZTextView', '1.2.1'
    pod 'TTTAttributedLabel'
  end
end
