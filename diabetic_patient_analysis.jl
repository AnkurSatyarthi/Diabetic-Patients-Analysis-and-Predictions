using CSV,DataFrames,GLM,CategoricalArrays,Plots,StatsPlots,TypedTables 
diabetes=DataFrame(CSV.File("data/diabetes.csv"));describe(diabetes);first(diabetes,5);describe(diabetes,extrema=>:extrema)
filter(:Outcome=>==(0),diabetes)
filter(:Outcome=>==(1),diabetes)
describe(diabetes)
diabetes