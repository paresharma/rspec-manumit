require 'fileutils'

namespace :rspec_java do
  desc 'initialize rspec and utilities'
  task :init do
    system('rspec --init')

    FilUtils.cp()
  end
end
