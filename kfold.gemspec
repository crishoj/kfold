# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{kfold}
  s.version = "0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christian Rishøj"]
  s.cert_chain = ["/Users/crjensen/Documents/Certificates/gem-public_cert.pem"]
  s.date = %q{2011-01-10}
  s.default_executable = %q{kfold}
  s.description = %q{Create k-fold splits from datafiles (useful for cross-validation in supervised machine learning)}
  s.email = %q{christian@rishoj.net}
  s.executables = ["kfold"]
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README", "bin/kfold", "lib/kfold.rb", "lib/kfold/data_file.rb"]
  s.files = ["CHANGELOG", "LICENSE", "Manifest", "README", "Rakefile", "bin/kfold", "lib/kfold.rb", "lib/kfold/data_file.rb", "spec/helper.rb", "spec/kfold/data_file_spec.rb", "spec/kfold/sample_data_file.conll", "kfold.gemspec"]
  s.homepage = %q{http://github.com/crishoj/kfold}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Kfold", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{kfold}
  s.rubygems_version = %q{1.3.7}
  s.signing_key = %q{/Users/crjensen/Documents/Certificates/gem-private_key.pem}
  s.summary = %q{Create k-fold splits from datafiles (useful for cross-validation in supervised machine learning)}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<commander>, [">= 0"])
    else
      s.add_dependency(%q<commander>, [">= 0"])
    end
  else
    s.add_dependency(%q<commander>, [">= 0"])
  end
end
