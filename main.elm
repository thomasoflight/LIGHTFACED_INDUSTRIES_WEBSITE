module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List


view =
    div [ class "container" ]
        [ nav [ class "navbar navbar-expand-md navbar-dark bg-dark" ]
            [ ul [ class "navbar-nav nav-ul-width mx-auto text-center" ]
                [ li [ class "nav-item mx-auto" ] [ text "about" ]
                , li [ class "nav-item mx-auto" ] [ text "portfolio" ]
                , li [ class "nav-item mx-auto" ] [ text "contact" ]
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
    { projectTitle : String
    , projectImg : String
    , projectLink : String
    }


selectedProjects : List Project
selectedProjects =
    [ { projectTitle = "Illustration", projectImg = "1.png", projectLink = "google.com" }
    , { projectTitle = "UX / UI / Design", projectImg = "2.png", projectLink = "google.com" }
    , { projectTitle = "Code", projectImg = "3.png", projectLink = "google.com" }
    ]


viewImgProjectlink : Project -> Html msg
viewImgProjectlink record =
    let
        { projectTitle, projectImg, projectLink } =
            record
    in
        div
            [ class "project-links-spacing" ]
            [ viewProjectInfo projectTitle projectLink
            , img
                [ src (projectImg)
                , class "img-fluid project-img-links"
                ]
                []
            ]



--[ a [ href "#", onClick (SwitchPage Schedule) ] [ text "Schedule" ]


viewProjectInfo projectTitle projectLink =
    p [ class "project-info-title" ] [ a [ href (projectLink) ] [ text (projectTitle) ] ]


main =
    view
