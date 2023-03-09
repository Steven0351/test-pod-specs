Pod::Spec.new do |s|
  s.name = 'UsingPortals'
  s.version = '0.4.0'
  s.summary = 'Using Portals'
  s.homepage = 'www.example.com'
  s.license = 'Commercial'
  s.ios.deployment_target = '13.0'
  s.authors = { 'Ionic Team' => 'hi@ionicframework.com' }
  s.source = { git: 'https://github.com/Steven0351/cocoapod-resources.git', tag: s.version.to_s }
  s.source_files = 'Sources/UsingPortals/*.swift'
  s.dependency 'IonicPortals', '~> 0.7.0'
  s.script_phase = {
    name: 'Build great app',
    script: %(
    cd ${SRCROOT}/UsingPortals/web/GreatApp
    /nix/store/2azk9y3csqq9fi35djlqllcidr4c19r4-nodejs-18.7.0/bin/npm install
    /nix/store/2azk9y3csqq9fi35djlqllcidr4c19r4-nodejs-18.7.0/bin/npm run build
    mv build great
    )
  }
  s.preserve_paths = 'web/GreatApp'
  s.resource = 'web/GreatApp/great'
  s.swift_version = '5.4'
end
