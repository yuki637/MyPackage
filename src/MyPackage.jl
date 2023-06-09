module MyPackage

    greet() = print("Revise!")

    function greet2()
        print("New function!!")
    
    end

    struct MyType
        x::Int
        y::Int
        z::Int
    end

    include("file.jl")

end # module MyPackage
