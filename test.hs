data Gui = Gui {cod::Int, name::String} deriving Show
getDados (Gui cod "") =  "cod"
getDados (Gui 0 name) = name
getDados (Gui cod name) = (name ++ "ajskhdf")
