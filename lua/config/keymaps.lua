-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<Esc>", { desc = "Shortcut for Esc" })

vim.keymap.set({ "n", "v" }, "<C-e>", "$", { desc = "End of line" })
vim.keymap.set({ "n", "v" }, "E", "$", { desc = "End of line" })
vim.keymap.set({ "n", "v" }, "<C-a>", "^", { desc = "Start of line" })
vim.keymap.set({ "n", "v" }, "B", "^", { desc = "Start of line" })
vim.keymap.set("i", "<C-a>", "<C-o>^", { desc = "Insert: start of line" })
vim.keymap.set("i", "<C-e>", "<C-o>$", { desc = "Insert: end of line" })

-- TODO - figure these out
local opt_right = "\x80\xfc\x08f"
local opt_left = "\x80\xfc\x08b"
vim.keymap.set({ "n", "v" }, opt_left, "b", { desc = "Backward word" })
vim.keymap.set({ "n", "v" }, opt_right, "e", { desc = "End of word" })
vim.keymap.set("i", "<M-Left>", "<C-o>b", { desc = "Insert: backward word" })
vim.keymap.set("i", "<M-Right>", "<C-o>e", { desc = "Insert: end of word" })

-- Function to move lines with count support
local function move_line(direction)
  local count = vim.v.count1
  local current_line = vim.api.nvim_win_get_cursor(0)[1]
  local last_line = vim.api.nvim_buf_line_count(0)

  if direction == "up" then
    -- Destination for "move -2" is line (current - 2).
    -- We cannot move a line to a position less than 0.
    local target = current_line - (count + 1)
    if target >= 0 then
      vim.cmd("move -" .. (count + 1))
      vim.cmd("normal! ==") -- Align indentation
    else
      print("Already at the top!")
    end
  else
    -- Destination for "move +1" is line (current + 1).
    -- We cannot move a line beyond the last line of the buffer.
    local target = current_line + count
    if target <= last_line then
      vim.cmd("move +" .. count)
      vim.cmd("normal! ==") -- Align indentation
    else
      print("Already at the bottom!")
    end
  end
end

-- Visual Mode Logic
local function move_block(direction)
  local count = vim.v.count1
  -- Sync selection to marks
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "x", true)

  -- Schedule the execution to ensure marks are set
  vim.schedule(function()
    local start_line = vim.api.nvim_buf_get_mark(0, "<")[1]
    local end_line = vim.api.nvim_buf_get_mark(0, ">")[1]
    local last_line = vim.api.nvim_buf_line_count(0)

    if direction == "up" then
      if start_line > 1 then
        -- Move to (start - count - 1)
        local target = math.max(0, start_line - count - 1)
        vim.cmd(string.format("'<,'>move %d", target))
      end
    else
      if end_line < last_line then
        -- Move to (end + count) to avoid "into itself" error
        local target = math.min(last_line, end_line + count)
        vim.cmd(string.format("'<,'>move %d", target))
      end
    end
    vim.cmd("normal! gv=gv")
  end)
end

-- Map mk to move up
vim.keymap.set("n", "mk", function()
  move_line("up")
end, { desc = "Move line up" })
-- Map mj to move down
vim.keymap.set("n", "mj", function()
  move_line("down")
end, { desc = "Move line down" })
-- Map visual mk to move block up
vim.keymap.set("v", "mk", function()
  move_block("up")
end, { desc = "Move selection up" })
-- Map visual mj to move block down
vim.keymap.set("v", "mj", function()
  move_block("down")
end, { desc = "Move selection down" })
