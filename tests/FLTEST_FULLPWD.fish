#!/usr/bin/env fish
# -*-  mode:fish; tab-width:4  -*-

function fltest_fullpwd

    set _OLDPWD $PWD
    echo "Context: Current Working Directory is '/'"
    cd /
    __fishline_test FULLPWD
    echo "Context: Current Working Directory is '/tmp'"
    cd /tmp
    __fishline_test FULLPWD
    echo "Context: Current Working Directory is '/var/log'"
    cd /var/log
    __fishline_test FULLPWD
    echo "Context: Current Working Directory is '$HOME'"
    cd $HOME
    __fishline_test FULLPWD
    echo "Context: Current Working Directory is '$HOME/.config/fish'"
    cd $HOME/.config/fish/
    __fishline_test FULLPWD
    cd $_OLDPWD

end