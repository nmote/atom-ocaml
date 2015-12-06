#!/usr/bin/env ruby

require('json')

package_name, = ARGV

if package_name == nil
  puts "Usage: ..."
  exit 1
end

this_package_path = File.absolute_path("#{__dir__}/..")

template_path = "#{this_package_path}/template"

to_create_path = File.absolute_path(package_name)

if File.exist?(to_create_path)
  puts "Package cannot exist"
  exit 1
end

system("cp -r #{template_path} #{to_create_path}")

created_json_path = "#{to_create_path}/package.json"
created_json = JSON.parse(File.read(created_json_path))
created_json['name'] = package_name
File.write(created_json_path, JSON.pretty_generate(created_json))
