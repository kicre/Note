config.colors = {

  -- 默认文本颜色
  foreground = '#F2E6D4',

  -- 默认背景颜色
  background = '#181B1F',

  -- 当前单元格被光标占据且光标样式设置为块时，覆盖单元格背景颜色
  cursor_bg = '#3E4044',

  -- 当前单元格被光标占据时覆盖文本颜色
  cursor_fg = '#AEAEAE',

  -- 当光标样式设置为块时，指定光标边框颜色，或当光标样式设置为竖线或下划线时，指定竖线或横线的颜色
  cursor_border = '#3E4044',

  -- 选定文本的前景色
  selection_fg = '#FFF7ED',

  -- 选定文本的背景色
  selection_bg = '#0D0F13',

  -- 滚动条“滑块”的颜色；表示当前视口的部分
  scrollbar_thumb = '#3E4044',

  -- 分隔窗格之间的分割线的颜色
  split = '#636363',

  ansi = {
    '#0D0F13',   -- black
    '#F58C81',   -- red
    '#54C794',   -- green
    '#A9B852',   -- yellow
    '#636363',   -- navy
    '#B69CF6',   -- purple
    '#F2E6D4',   -- teal
    '#AEAEAE',   -- silver
  },

  brights = {
    '#F2E6D4',   -- grey
    '#E09F47',   -- orange
    '#00C4D7',   -- cyan
    '#AEAEAE',   -- yellow
    '#6EB2FD',   -- blue
    '#E58CC5',   -- magenta
    '#FFF7ED',   -- aqua
    '#FFFDFB',   -- white
  },

  -- 调色板中从16到255范围内的任意颜色
  indexed = { [136] = '#af8700' },

  -- 自20220319-142410-0fcdea07起
  -- 当正在处理输入法、死键或前导键并且实际上正在等待输入组合结果时，将光标更改为此颜色以提供有关组合状态的视觉提示
  compose_cursor = 'orange',

  -- copy_mode和quick_select的颜色
  -- 自20220807-113146-c2fee766起可用
  -- 在copy_mode中，活动文本的颜色是：
  -- 1. 如果使用鼠标选择了其他文本，则为copy_mode_active_highlight_*
  -- 2. 否则为selection_*
  copy_mode_active_highlight_bg = { Color = '#000000' },
  -- 使用`AnsiColor`指定ansi颜色调色板值（索引0-15）之一，使用以下名称之一："Black"、"Maroon"、"Green"、"Olive"、"Navy"、"Purple"、"Teal"、"Silver"、"Grey"、"Red"、"Lime"、"Yellow"、"Blue"、"Fuchsia"、"Aqua"或"White"
  copy_mode_active_highlight_fg = { AnsiColor = '#0D0F13' },
  copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
  copy_mode_inactive_highlight_fg = { AnsiColor = '#FFFDFB' },

  quick_select_label_bg = { Color = 'peru' },
  quick_select_label_fg = { Color = '#ffffff' },
  quick_select_match_bg = { AnsiColor = 'Navy' },
  quick_select_match_fg = { Color = '#ffffff' },
}
