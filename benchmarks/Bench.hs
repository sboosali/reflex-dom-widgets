import Reflex.Dom.Widgets
import Criterion.Main

main :: IO ()
main = defaultMain [
  bgroup "Reflex.Dom.Widgets"
    [ bench "1" $ nf   length [1..1000::Int]
    , bench "2" $ whnf length [1..1000::Int]
    ]
  ]

