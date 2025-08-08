function nv --wraps='NVIM_APPNAME=own_nvim nvim' --description 'alias nv=NVIM_APPNAME=own_nvim nvim'
  NVIM_APPNAME=own_nvim nvim $argv
        
end
