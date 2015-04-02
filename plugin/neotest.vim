function! NeotestStart()
python << EOF
import os

import neovim

def main():
	listen = os.environ.get('NVIM_LISTEN_ADDRESS')
	nvim = neovim.attach('socket', path=listen)
	# buf = nvim.buffers[0]
	nvim.command('echo "hello"')

if __name__ == '__main__':
	main()
EOF
endfunction
