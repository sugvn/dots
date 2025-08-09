function nv --wraps='NVIM_APPNAME=own_nvim nvim' --wraps='NVIM_APPNAME=old-nvim nvim' --description 'alias nv=NVIM_APPNAME=old-nvim nvim'
  NVIM_APPNAME=old-nvim nvim $argv
        
end
