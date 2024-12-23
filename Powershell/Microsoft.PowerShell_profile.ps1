function gs {git status}
function gacm {param($msg) git add -u; git status; git commit -m $msg}
function gurl {param($remote) git remote get-url $remote}
function gl {git branch}
