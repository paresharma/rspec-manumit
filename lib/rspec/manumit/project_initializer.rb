require 'fileutils'

module RSpec::Manumit
  class ProjectInitializer
    attr_reader :destination, :stream, :template_path

    MANUMIT_HELPER_FILE = 'spec/manumit_helper.rb'
    FEATURE_SPEC_FILE =  'spec/features/homepage_spec.rb'

    def initialize
      @destination = Dir.getwd
      @stream = $stdout
      @template_path = File.expand_path('../project_initializer', __FILE__)
    end

    def run
      system('rspec --init')
      copy_template MANUMIT_HELPER_FILE
      copy_template FEATURE_SPEC_FILE
    end

    private

    def copy_template(file)
      destination_file = File.join(destination, file)
      return report_exists(file) if File.exist?(destination_file)

      report_creating(file)
      FileUtils.mkdir_p(File.dirname(destination_file))
      File.open(destination_file, 'w') do |f|
        f.write File.read(File.join(template_path, file))
      end
    end

    def report_exists(file)
      stream.puts "   exist   #{file}"
    end

    def report_creating(file)
      stream.puts "  create   #{file}"
    end
  end
end
