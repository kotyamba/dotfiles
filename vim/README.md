# VIM

## Keymaps

```
<Leader> is Space!

Space + Enter - Open :Files
Space + \ - Open :NERDTree
\ + Enter - Open :Buffers
```


## Plugins


### COC
This plugin is very powerful for developer. Autocoplete code, linters, pep and more.


#### Install for OSX
```
brew install node
# Perhaps yarn install via npm -g install yarn or run:
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

# Install watchman
brew install watchman
```

#### Python
For work with python project need to install following libraries:
```
pip install python-language-server pylint autopep8 rope jedi
```
As suggestion add this in to requirements/dev.txt
```
flake8=>3.7.7
isort=>4.3.21
pre-commit=>1.18.3
python-language-server
pylint
autopep8
rope
jedi=>0.17.0
```



### FZF and Search
This plugin helps work with files, search, bufers and many more.

#### Install for OSX
```
brew install fzf
brew install ag
brew install ripgrep
```
