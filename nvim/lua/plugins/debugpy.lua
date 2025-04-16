return {
	"mfussenegger/nvim-dap-python",
	config = function()
		require("dap-python").setup("~/home/Dev/python/.virtualenvs/debugpy/bin/python")
	end,
}
