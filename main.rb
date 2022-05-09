
class Label
	attr_reader :text, :x, :y, :foreground_color
	def initialize(text, x, y, foreground_color)
		@text = text
		@x = x
		@y = y
		@foreground_color = foreground_color
	end
end

class Button

	def color_offset
		10
	end

	def color_hex
		'#E0E0E0'
	end

end

class DarkButton < Button

	def color_offset
		-10
	end

	def color_hex
		'#111111'
	end

end


def draw_button(label, button)
	paint(label.text, label.x, label.y, label.foreground_color + button.color_offset, button.color_hex)
end