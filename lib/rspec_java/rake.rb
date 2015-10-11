require 'fileutils'

module RspecJava::Rake
  extend ::Rake::DSL

  def self.define_tasks
    namespace :rspec_java do
      desc 'initialize rspec and utilities'
      task :init do
        system('rspec --init')

        # FilUtils.cp('../spec/java_helper.rb', )
      end
    end
  end
end
