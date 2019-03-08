# https://tagmycode.com/snippet/8218/get-set-hash-values-using-key-path-separated-by-dots#.XIH69BMzaM4

class Hash
  def dot_path_set(key_path, value)
    key, sub_key = key_path.split(".", 2)

    if sub_key.nil?
      self[key] = value
    else
      if self[key].nil?
        self[key] = {}
      end
      self[key].dot_path_set(sub_key, value)
    end
  end

  def dot_path_get(key)
    parts = key.split(".", 2)
    match = self[parts[0]]
    if !parts[1] or match.nil?
      match
    else
      match.dot_path_get(parts[1])
    end
  end
end

# Usage:

h = {}
# => {}

h.dot_path_set("a.b.c.d.e", 1)
# => 1

p h
# => {"a"=>{"b"=>{"c"=>{"d"=>{"e"=>1}}}}}

p h.dot_path_get("a.b.c.d.e")
# => 1
