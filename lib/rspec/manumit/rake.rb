require_relative './project_initializer'

module RSpec::Manumit::Rake
  extend ::Rake::DSL

  def self.define_tasks
    namespace 'rspec:manumit' do
      desc 'initialize rspec and utilities'
      task :init do
        RSpec::Manumit::ProjectInitializer.new.run
      end
    end
  end
end

RSpec::Manumit::Rake.define_tasks
