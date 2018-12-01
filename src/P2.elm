module P2 exposing (P2(..), add, asTuple, diff, x, y)

import V2 exposing (V2(..))


type P2
    = P2 Float Float


add : P2 -> V2 -> P2
add (P2 px py) (V2 vx vy) =
    P2 (px + vx) (py + vy)


diff : P2 -> P2 -> V2
diff (P2 px py) (P2 qx qy) =
    V2 (px - qx) (py - qy)


x : P2 -> Float
x (P2 px _) =
    px


y : P2 -> Float
y (P2 _ py) =
    py


asTuple : P2 -> ( Float, Float )
asTuple (P2 ex why) =
    ( ex, why )
