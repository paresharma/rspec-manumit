require_relative '../project_initializer'

module RspecJava::Rake
  extend ::Rake::DSL

  def self.define_tasks
    namespace :rspec_java do
      desc 'initialize rspec and utilities'
      task :init do
        system('rspec --init')

        RspecJava::ProjectInitializer.new.run
      end
    end
  end
end

RspecJava::Rake.define_tasks
