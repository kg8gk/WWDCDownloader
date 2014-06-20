require 'fileutils'

session_not_download_yet = []
ARGV.each do |url|
  match = /(\d{3}_hd_\S*\.mov$)/.match(url)
  if match
    filename = match[0]
    matched_files = Dir.glob(filename + '*')
    matched_files_count = matched_files.length
    unless matched_files_count == 1
      session_not_download_yet.push url
      FileUtils.rm matched_files
    end
  end
end

puts session_not_download_yet