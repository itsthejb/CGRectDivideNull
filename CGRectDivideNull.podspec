Pod::Spec.new do |s|
  s.name          = "CGRectDivideNull"
  s.version       = "0.0.1"
  s.summary       = "A more convenient CGRectDivide()"
  s.description   = "Allow NULL parameters to CGRectDivide()"
  s.homepage      = "https://github.com/itsthejb/NSURL-QueryDictionary/tree/develop"
  s.license       = { :type => 'MIT', :file => 'LICENSE' }
  s.author        = { "Jonathan Crooke" => "jon.crooke@gmail.com" }
  s.source        = { :git => "https://github.com/itsthejb/NSURL-QueryDictionary.git", :tag => "v" + s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.source_files  = s.name + '/*.{h,m}'
  s.frameworks    = 'Foundation'
  s.requires_arc  = true
end
