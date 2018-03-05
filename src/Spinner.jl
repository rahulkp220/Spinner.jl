module Spinner

# Imports
using IterTools

# Constants
# Could have supplied Inf , but Inf in Julia is a float!
MAX_CYCLES = 1000000000

# List of avaliable styles for spinner
circles = "○◔◑◕●"
corners = "⌜⌝⌟⌞"
dots = "⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏"
moon = "🌑🌒🌓🌔🌕🌖🌗🌘"
quadrants = "▖▘▝▗'"
vertical_bars = "▁▂▃▄▅▆▇█"

"""
Spinner function

Sample usage:-
julia> using Spinner
julia> Spinner.spinner(Spinner.corners)

Styles information:-
julia> Spinner.styles()

"""
function spinner(style)
	for i in ncycle(style, MAX_CYCLES)
           write(STDOUT, i);
           flush
           sleep(0.07)
           write(STDOUT, "\b")
    end
end

function styles()
	for i in [circles, corners, dots, moon, quadrants, vertical_bars]
		println(i)
	end
end

# Exports
export spinner
export styles
end
