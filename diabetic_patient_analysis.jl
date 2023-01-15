using CSV,DataFrames,GLM,CategoricalArrays,Plots,StatsPlots,TypedTables 
begin
    diabetes=DataFrame(CSV.File("data/diabetes.csv"));describe(diabetes);first(diabetes,5);describe(diabetes,extrema=>:extrema)
    filter(:Outcome=>==(0),diabetes);filter(:Outcome=>==(1),diabetes);filter(:Age=> >=(30),diabetes);describe(diabetes)
    diabetes[findfirst(<=(25),diabetes.Age),:];describe(diabetes)
end
begin
    X1=diabetes.Pregnancies;X2=diabetes.Glucose;X3=diabetes.BloodPressure;X4=diabetes.SkinThickness;X5=diabetes.Insulin;X6=diabetes.BMI;X7=diabetes.DiabetesPedigreeFunction;X8=diabetes.Age;Y=diabetes.Outcome
    X=[X1,X2,X3,X4,X5,X6,X7,X8];t=Table(X=X,Y=Y);
    scatter(X=[X1,X2,X3,X4,X5,X6,X7,X8],Y,ma=0.5,ms=5,legend=false,title="Diabetic Patients")
end
scatter(X,Y)