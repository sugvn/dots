function fetch --wraps='fastfetch --config arch' --wraps='fastfetch --config os' --description 'alias fetch=fastfetch --config os'
  fastfetch --config os $argv
        
end
