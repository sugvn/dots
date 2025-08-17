function c --wraps='rsync -ah --progress' --description 'alias c=rsync -ah --progress'
  rsync -ah --progress $argv
        
end
