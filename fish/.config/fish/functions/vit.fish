function vit --wraps='NVIM_APPNAME=test nvim' --description 'alias vit=NVIM_APPNAME=test nvim'
  NVIM_APPNAME=test nvim $argv
        
end
