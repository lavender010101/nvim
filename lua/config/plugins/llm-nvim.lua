local M = {}
local function switch(shell_func)
	-- [LINK] https://github.com/Kurama622/dotfiles/blob/main/zsh/module/func.zsh
	local p = io.popen(string.format("source ~/.zsh_profile; %s; echo $LLM_KEY", shell_func))
	local key = p:read()
	p:close()
	return key
end
M.config = {
	{
		"Kurama622/llm.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
		cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },
		config = function()
			local tools = require("llm.common.tools")
			require("llm").setup({
				url = "https://api.siliconflow.cn/v1/completions",
				model = "Qwen/Qwen2.5-7B-Instruct",
				api_type = "openai",
				max_tokens = 4096,
				temperature = 0.3,
				top_p = 0.7,

				app_handler = {
					OptimizeCode = {
						handler = tools.side_by_side_handler,
						-- opts = {
						--   streaming_handler = local_llm_streaming_handler,
						-- },
					},
					TestCode = {
						handler = tools.side_by_side_handler,
						prompt = [[ Write some test cases for the following code, only return the test cases.
            Give the code content directly, do not use code blocks or other tags to wrap it. ]],
						opts = {
							right = {
								title = " Test Cases ",
							},
						},
					},
					OptimCompare = {
						handler = tools.action_handler,
						opts = {
							fetch_key = function()
								return switch("enable_gemini")
							end,
							url = "https://generativelanguage.googleapis.com/v1beta/openai/" .. "completions",
							model = "gemini-2.0-flash-exp",
							api_type = "openai",
						},
					},

					Translate = {
						handler = tools.qa_handler,
						prompt = [[ 翻译成中文，不要解释，仅需要输出翻译的内容。]],
						opts = {
							fetch_key = function()
								return switch("enable_glm")
							end,
							url = "https://open.bigmodel.cn/api/paas/v4/chat/completions",
							model = "glm-4-flash",
							api_type = "zhipu",

							component_width = "60%",
							component_height = "50%",
							query = {
								title = " 󰊿 Trans ",
								hl = { link = "Define" },
							},
							input_box_opts = {
								size = "15%",
								win_options = {
									winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
								},
							},
							preview_box_opts = {
								size = "85%",
								win_options = {
									winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
								},
							},
						},
					},

					-- check siliconflow's balance
					UserInfo = {
						handler = function()
							local key = os.getenv("LLM_KEY")
							local res = tools.curl_request_handler(
								"https://api.siliconflow.cn/v1/user/info",
								{ "GET", "-H", string.format("'Authorization: Bearer %s'", key) }
							)
							if res ~= nil then
								print("balance: " .. res.data.balance)
							end
						end,
					},
					WordTranslate = {
						handler = tools.flexi_handler,
						prompt =
						"Translate the following text to Chinese, please only return the translation, DO NOT EXPLAIN.",
						opts = {
							fetch_key = function()
								return switch("enable_siliconflow")
								-- return switch("enable_glm")
							end,
							url = os.getenv("LLM_API_BASE") .. "chat/completions",
							model = os.getenv("LLM_MODEL"),
							-- api_type = "zhipu",
							api_type = "openai",
							-- args =
							-- [[return {url, "-N", "-X", "POST", "-H", "Content-Type: application/json", "-H", authorization, "-d", vim.fn.json_encode(body)}]],
							exit_on_move = true,
							enter_flexible_window = false,
						},
					},
					CodeExplain = {
						handler = tools.flexi_handler,
						prompt = "Explain the following code, please only return the explanation, and answer in Chinese",
						opts = {
							fetch_key = function()
								return switch("enable_glm")
							end,
							url = "https://open.bigmodel.cn/api/paas/v4/chat/completions",
							model = "glm-4-flash",
							api_type = "zhipu",
							enter_flexible_window = true,
						},
					},
					CommitMsg = {
						handler = tools.flexi_handler,
						prompt = function()
							return string.format(
								[[You are an expert at following the Conventional Commit specification. Given the git diff listed below, please generate a commit message for me:
1. Start with an action verb (e.g., feat, fix, refactor, chore, etc.), followed by a colon.
2. Briefly mention the file or module name that was changed.
3. Describe the specific changes made.

Examples:
- feat: update common/util.py, added test cases for util.py
- fix: resolve bug in user/auth.py related to login validation
- refactor: optimize database queries in models/query.py

Based on this format, generate appropriate commit messages. Respond with message only. DO NOT format the message in Markdown code blocks, DO NOT use backticks:

```diff
%s
```
]],
								vim.fn.system("git diff --no-ext-diff --staged")
							)
						end,
						opts = {
							fetch_key = function()
								return switch("enable_glm")
							end,
							url = "https://open.bigmodel.cn/api/paas/v4/chat/completions",
							model = "glm-4-flash",
							api_type = "zhipu",
							enter_flexible_window = true,
							apply_visual_selection = false,
						},
					},
				},
			})
		end,
		keys = {
			{ "<leader>ac", mode = "n", "<cmd>LLMSessionToggle<cr>" },
			{ "ts",         mode = "v", "<cmd>LLMAppHandler WordTranslate<cr>" },
			{ "<leader>ae", mode = "v", "<cmd>LLMAppHandler CodeExplain<cr>" },
			--{ "<leader>tl", mode = "n", "<cmd>LLMAppHandler Translate<cr>" },
			{ "ts",         mode = "n", "<cmd>LLMAppHandler Translate<cr>" },
			{ "<leader>tc", mode = "x", "<cmd>LLMAppHandler TestCode<cr>" },
			{ "<leader>ao", mode = "x", "<cmd>LLMAppHandler OptimCompare<cr>" },
			{ "<leader>au", mode = "n", "<cmd>LLMAppHandler UserInfo<cr>" },
			{ "<leader>ag", mode = "n", "<cmd>LLMAppHandler CommitMsg<cr>" },
			-- { "<leader>ao", mode = "x", "<cmd>LLMAppHandler OptimizeCode<cr>" },
		},
	},
}

return M
