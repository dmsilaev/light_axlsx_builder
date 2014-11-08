require 'bundler/gem_tasks'

require 'rake/testtask'

# Added by devtools
require 'devtools'
Devtools.init_rake_tasks

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/test*.rb']
end

task default: :test
