$env.config = {
# buffer_editor = "vim"
edit_mode: vi
}
$env.config.buffer_editor = "vim"
$env.config.show_banner = false
 
# aliases

alias nv = nvim
alias vi = vim
alias y = yazi

oh-my-posh init nu --config ~/Downloads/zash.omp.json

def --env y [...args] {
		let tmp = (mktemp -t "yazi-cwd.XXXXXX")
			yazi ...$args --cwd-file $tmp
				let cwd = (open $tmp)
				if $cwd != "" and $cwd != $env.PWD {
							cd $cwd
								
				}
					rm -fp $tmp
					
}
