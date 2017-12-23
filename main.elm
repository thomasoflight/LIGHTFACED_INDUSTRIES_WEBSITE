module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


view =
    div [ class "container" ]
        [ nav [ class "navbar navbar-inverse" ] []
        , img [ src ("logo_splash_A_02.png") ] []
        ]


main =
    view
