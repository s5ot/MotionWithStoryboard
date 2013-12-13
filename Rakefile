# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
  require 'yaml'
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'MotionWithStoryboard'

  app.development do
    app.codesign_certificate = 'iPhone Developer: Sogo Ohta'
    app.provisioning_profile = '/Users/sogo/Library/MobileDevice/Provisioning Profiles/development_provisioning_file.mobileprovision'
    app.files << Dir.glob("./config/*.rb")
  end
end
