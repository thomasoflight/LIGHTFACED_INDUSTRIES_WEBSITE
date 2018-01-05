module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List


view =
    div [ class "container" ]
        [ nav [ class "navbar navbar-expand-md navbar-dark bg-dark" ]
            [ ul [ class "navbar-nav" ]
                [ li [ class "nav-item" ] [ text "hello" ]
                , li [ class "nav-item" ] [ text "hig" ]
                , li [ class "nav-item" ] [ text "bye" ]
                ]
            ]
        , br [] []
        , br [] []
        , div [ class "project-links mx-auto" ]
            [ div []
                (List.map
                    viewImgProjectlink
                    selectedProjects
                )
            ]
        ]


type alias Project =
    { projectTitle : String, projectImg : String }


selectedProjects : List Project
selectedProjects =
    [ { projectTitle = "Illustration", projectImg = "1.png" }
    , { projectTitle = "UX / UI / Design", projectImg = "2.png" }
    , { projectTitle = "Code", projectImg = "3.png" }
    ]


viewImgProjectlink : Project -> Html msg
viewImgProjectlink record =
    let
        { projectTitle, projectImg } =
            record
    in
        div
            [ class "project-links-spacing" ]
            [ viewProjectInfo projectTitle
            , img
                [ src (projectImg)
                , class "img-fluid project-img-links"
                ]
                []
            ]


viewProjectInfo projectTitle =
    p [ class "project-info-title" ] [ text (projectTitle) ]


main =
    view
