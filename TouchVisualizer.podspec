# frozen_string_literal: true

require 'json'
package = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'TouchVisualizer'
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = <<-DESC
                  react-native-touch-visualizer
  DESC
  s.homepage     = 'https://github.com/mkuczera/react-native-touch-visualizer'
  s.license      = 'MIT'
  s.author = { 'author' => 'm.kuczera@gmail.com' }
  s.platform     = :ios, '9.0'
  s.source       = { git: 'https://github.com/zachgibson/react-native-touch-visualizer.git', tag: 'master' }
  s.source_files = '*.{h,m}'
  s.requires_arc = true

  s.dependency 'React'
end
