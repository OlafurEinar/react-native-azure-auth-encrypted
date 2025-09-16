require "json"

package = JSON.parse(File.read(File.join(__dir__, "./package.json")))

Pod::Spec.new do |s|
  s.name         = "AzureAuth"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package['repository']['baseUrl']
  s.license      = package['license']
  s.authors      = package['author']
  s.platforms    = { :ios => "13.0" }
  s.source       = { :git => "https://github.com/OlafurEinar/react-native-azure-auth-encrypted.git", :tag => "v#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end