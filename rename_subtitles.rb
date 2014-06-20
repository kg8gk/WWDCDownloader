#!/usr/bin/ruby

srt_suffix = '.srt'

Dir.glob('*.mov').each do |filename|
  matched = /((\d{3})_.*).mov$/.match filename
  srt_file = matched[2] + srt_suffix
  if File.exist? srt_file
    target_file = matched[1] + srt_suffix
    File.rename srt_file, target_file
    puts "Srt file has been renamed from #{srt_file} to #{target_file}"
  end
end