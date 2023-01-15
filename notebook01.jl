using CSV,DataFrames,GLM,CategoricalArrays,Plots,StatsPlots,TypedTables 
diabetes=DataFrame(CSV.File("data/diabetes.csv"));describe(diabetes);first(diabetes,5);vscodedisplay(diabetes)


