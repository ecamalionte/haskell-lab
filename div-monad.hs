badfunction a b = a `div` b

mtop // mbottom = do
  top <- mtop
  bottom <- mbottom
  if bottom == 0 then Nothing else Just (top `div` bottom)

ma /// mb =
    ma >>= (\a ->
       mb >>= (\b ->
         if b == 0 then Nothing else Just (a `div` b)))

