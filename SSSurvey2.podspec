Pod::Spec.new do |s|
  s.name             = "SSSurvey2"
  s.version          = "0.0.1"
  s.summary          = "Perform Survey"
  s.description      = <<-DESC
IT is a framework which will be useful for performing the different surveys.
                   DESC
  s.homepage         = "https://github.com/Akshay898989/SSSurvey2"
  s.license          = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author           = { "akshay.gupta8989" => "akshay.gupta8989@gmail.com" }
  s.source           = { :git => "https://github.com/Akshay898989/SSSurvey2.git", :tag => s.version }

    s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  s.requires_arc = true
  s.source_files = 'SSSurvey2/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
end
