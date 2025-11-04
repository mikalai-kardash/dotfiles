return {
	"nvim-telescope/telescope-fzf-native.nvim",
 	build = "zig cc -O3 -Wall -Werror -fpic -std=gnu99 -shared src/fzf.c -o build/libfzf.dll",
}
