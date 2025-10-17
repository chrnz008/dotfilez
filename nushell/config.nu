$env.config = {
# buffer_editor = "vim",
edit_mode: vi
}
$env.config.buffer_editor = "vim"
$env.config.show_banner = false

$env.PROMPT_INDICATOR_VI_NORMAL = (ansi red) + ":" + (ansi red)
$env.PROMPT_INDICATOR_VI_INSERT = (ansi red) + "❯" + (ansi red)


$env.config.table.mode = 'default'
 
# aliases

alias l = dir
alias nv = nvim
alias vi = vim
alias y = yazi
alias neofetch = fastfetch 

alias qn = vim -o ~\\quicknotes.md

# oh-my-posh init nu --config ~/Downloads/zash.omp.json

def --env y [...args] {
		let tmp = (mktemp -t "yazi-cwd.XXXXXX")
			yazi ...$args --cwd-file $tmp
				let cwd = (open $tmp)
				if $cwd != "" and $cwd != $env.PWD {
							cd $cwd
								
				}
					rm -fp $tmp
					
}

# --- Add keybinding for Ctrl-f to launch fzf ---
$env.config = ($env.config | upsert keybindings (
    ($env.config.keybindings? | default []) ++ [
        {
            name: "fzf-launch"
            modifier: "control"
            keycode: "char_f"
            mode: ["emacs", "vi_insert", "vi_normal"]
            event: {
                send: executehostcommand
                cmd: "fzf"
            }
        }
    ]
))
