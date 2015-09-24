ME.gemspec

$:.push File.expand_path("../lib", __FILE__)
require "NAME/version"

Gem::Specification.new do |s|
        s.name                  = "NAME"
        s.version               = NAME::VERSION
        s.authors               = ["Your Name"]
        s.email                 = ["email@sit.com"]
        s.homepage              = "domain.com"
        s.summary               = %q{description}
        s.description           = %q{long description}

        s.rubyforge_project = "NAME"

        s.files                 = 'git ls-files'.split("\n")
        s.test_files            = 'git ls-files -- {test,spec,features}/*'.split("\n")
        s.executables           = 'git ls-files -- bin/*'.split("\n").map{ |f| File.basename(f)}
        s.require_paths         = ["lib"]
end

