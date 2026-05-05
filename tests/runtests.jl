include("../src/Policy.jl")
using .Policy

signal_case_1 = Signal(61, 91, 18, 13, 12)
@assert score(signal_case_1) == 104
@assert classify(signal_case_1) == "review"
signal_case_2 = Signal(59, 80, 20, 21, 13)
@assert score(signal_case_2) == 30
@assert classify(signal_case_2) == "review"
signal_case_3 = Signal(105, 105, 22, 25, 8)
@assert score(signal_case_3) == 98
@assert classify(signal_case_3) == "review"
