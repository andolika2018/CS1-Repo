module colors
import pair
import bool

data colors = red | green | blue | yellow | magenta | cyan

complement: colors -> colors
complement red = cyan
complement cyan = red
complement yellow = blue
complement blue = yellow
complement green = magenta
complement magenta = green

additive: colors -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: colors -> bool
subtractive c = not (additive c)

complements: pair colors colors -> bool
complements (mkPair red cyan ) = true
complements (mkPair cyan red ) = true
complements (mkPair yellow blue ) = true
complements (mkPair blue yellow ) = true
complements (mkPair yellow blue ) = true
complements (mkPair green magenta ) = true
complements (mkPair magenta green ) = true
complements (mkPair _ _ ) = false

mixink: pair colors colors -> colors
mixink ( mkPair magenta yellow ) = red
mixink ( mkPair yellow magenta ) = red
mixink ( mkPair cyan magenta ) = blue
mixink ( mkPair magenta cyan ) = blue
mixink ( mkPair yellow green ) = green
mixink ( mkPair green yellow ) = green

