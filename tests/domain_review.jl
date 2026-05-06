include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(41, 50, 26, 89)
@assert score(item) == 143
@assert lane(item) == "ship"
