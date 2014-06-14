sessions_not_download_yet = []
ARGV.each do |url|
  match = /(\d{3}_hd_\S*\.mov$)/.match(url)
  if match
    filename = match[0]
    matched_files_count = Dir.glob(filename + '*').length
    sessions_not_download_yet.push url unless matched_files_count == 1
  end
end

puts sessions_not_download_yet