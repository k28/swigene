require 'fileutils'
require 'yaml'
require 'date'

# Setup command to create the config.yaml file with interactive input
def setup
  print "Enter your project name: "
  project_name = STDIN.gets.chomp

  print "Enter your name: "
  author_name = STDIN.gets.chomp

  config = {
    'ProjectName' => project_name,
    'AuthorName' => author_name
  }
  
  File.open('config.yaml', 'w') { |file| file.write(config.to_yaml) }
  puts 'config.yaml has been created with your input.'
end

# Generate command to create the module files from templates
def generate(module_name, template_dir)
  config = YAML.load_file('config.yaml')
  project_name = config['ProjectName']
  author_name = config['AuthorName']
  create_date = Date.today.strftime('%Y/%m/%d')

  output_dir = "out/#{module_name}"
  FileUtils.mkdir_p(output_dir)

  Dir.glob("#{template_dir}/*").each do |file|
    next unless File.file?(file)
    
    content = File.read(file)
    content.gsub!('{{__model_template__}}', module_name)
    content.gsub!('{{__project_name__}}', project_name)
    content.gsub!('{{__author_name__}}', author_name)
    content.gsub!('{{__create_date__}}', create_date)

    file_name = File.basename(file).sub(/^template_/, "#{module_name}")
    File.write("#{output_dir}/#{file_name}", content)
    puts "Generated file: #{output_dir}/#{file_name}"
  end

  puts "Files have been generated in #{output_dir}"
end

# Main command handler
if ARGV[0] == 'setup'
  setup
elsif ARGV[0] == 'generate' && ARGV.length == 3
  module_name = ARGV[1]
  template_dir = ARGV[2]
  generate(module_name, template_dir)
else
  puts 'Usage:'
  puts '  swigene setup'
  puts '  swigene generate <module_name> <template_dir>'
end


