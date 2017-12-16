
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fake_uuid"
  spec.version       = "0.1.0"
  spec.authors       = ["Lance Hampton"]
  spec.email         = ["lance.hampton@gmail.com"]

  spec.summary       = %q{This should produce human readable uuid's.}
  spec.description   = %q{This should produce human readable uuid's.  Beware collisions.}
  spec.homepage      = "https://github.com/LanceH"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
