# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "no-style-please"
  spec.version       = "0.4.7"
  spec.authors       = ["Node Father"]
  spec.email         = ["spartan@secretnodes.org"]

  spec.summary       = "A free high performance API for the Secret Network by Secret LLC"
  spec.homepage      = "https://github.com/riggraz/no-style-please"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7.1"

end
