" Quick commands
command! PU PlugInstall | PlugUpdate
command! PI source $MYVIMRC | PlugInstall 
command! PC source $MYVIMRC | PlugClean
command! PrettyJSON %!python -m json.tool
command! PrettyHTML !tidy -mi -html -wrap 0 %
command! PrettyXML !tidy -mi -xml -wrap 0 %
command! Columns %!column -t
command! Chrome !open % -a Google\ Chrome
command! Safari !open % -a Safari


cmap w!! w !sudo tee > /dev/null %                   " Allow save file as root if forgot open as sudo vim FILE
"cmap w!! w !sudo tee %                               " Allow write file as root
