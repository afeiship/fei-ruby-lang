Dir.glob('./tasks/*.rake').each do |task|
    load task
end