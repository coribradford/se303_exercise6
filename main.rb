
class Label
	attr_reader :text, :x, :y, :foreground_color
	def initialize(text, x, y, foreground_color)
		@text = text
		@x = x
		@y = y
		@foreground_color = foreground_color
	end
end

def Button

	def color_offset
		10
	end

	def color_hex
		'#E0E0E0'
	end

end

def draw_button(label, is_dark_mode)
	if is_dark_mode
		# darken foreground color for dark mode
		paint(label.text, label.x, label.y, label.foreground_color - 10, '#111111')
	else
		# lighten foreground color for non-dark mode
		paint(label.text, label.x, label.y, label.foreground_color + 10, '#E0E0E0')
	end
end