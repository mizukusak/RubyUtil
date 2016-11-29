# coding: utf-8

def compress(path, dest = nil, encode = "utf-8")
  gem 'rubyzip'
  require 'zip'

  path.sub!(%r[/$],'')

  dest = File.join(File.dirname(path), File.basename(path))+'.zip' if dest.nil?
  FileUtils.rm dest, :force=>true

  Zip::File.open(dest, 'w') do |zipfile|
    Dir["#{path}/**/**".encode('utf-8')].reject{ |f| f == dest }.each do |file|
      zipfile.add(file.sub(File.dirname(path) + '/', '').encode(encode), file.encode(encode))
    end
  end
end

def uncompress(path, dest = nil)
  gem 'rubyzip'
  require 'zip'

  dest = File.join(File.dirname(path), File.basename(path)).gsub('.zip', '') if dest.nil?

  Zip::File.open(path) do |zipfile|
    zipfile.each do |entry|
      destFile = File.join(dest, entry.name)
      # The 'next if...' code can go here, though I didn't use it
      unless File.exist?(destFile)
        FileUtils::mkdir_p(File.dirname(destFile))
        zipfile.extract(entry, destFile)
      end
    end
  end
end
