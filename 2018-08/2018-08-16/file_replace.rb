filename = './zepto.js';

# file_str = File.read(filename)
# file_str = file_str.gsub! 'v1.2.0', 'VERSION:1.2.0'

# File.write(filename,file_str)

def replace_file(filename,*replacer)
    file_str = File.read(filename)
    if file_str.include? replacer[0]
        file_str = file_str.gsub replacer[0],replacer[1]
        File.write(filename,file_str)
    end
end


replace_file './zepto.js', 'v:', 'v'
