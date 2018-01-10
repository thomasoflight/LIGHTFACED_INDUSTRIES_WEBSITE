module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List


navItems =
    [ "about", "portfolio", "contact" ]


viewNavLinks : List String -> List (Html msg)
viewNavLinks items =
    let
        returnNavItem item =
            li [ class "nav-item mx-auto" ]
                [ a [ href ("#loc-" ++ item) ] [ text (item) ]
                ]
    in
        (List.map returnNavItem items)


view =
    div [ class "container" ]
        [ img [ src ("header_colored_letters.svg") ] []
        , nav [ class "navbar navbar-expand-md navbar-dark bg-dark navbar-height" ]
            [ ul [ class "navbar-nav mx-auto text-center" ]
                (viewNavLinks navItems)
            ]
        , br [] []
        , br [] []
        , br [] []
        , br [] []
        , div [ class "project-links mx-auto" ]
            [ div [ id "loc-portfolio" ]
                (List.map
                    viewImgProjectlink
                    selectedProjects
                )
            ]
        , footer [ id "loc-contact" ]
            [ p [ class "text-center" ] [ text ("Lightfaced Industries LLC" ++ "    " ++ "2018") ]
            ]
        ]


type alias Project =
    { projectTitle : String
    , projectImg : String
    , projectLink : String
    }


selectedProjects : List Project
selectedProjects =
    [ { projectTitle = "Code", projectImg = "3.png", projectLink = "https://github.com/thomasoflight" }
    , { projectTitle = "UX / UI / Design", projectImg = "2.png", projectLink = "https://www.instagram.com/lightfaced.industries/" }
    , { projectTitle = "Illustration", projectImg = "1.png", projectLink = "https://www.instagram.com/dicharliedesigns" }
    ]


viewImgProjectlink : Project -> Html msg
viewImgProjectlink record =
    let
        { projectTitle, projectImg, projectLink } =
            record
    in
        div
            [ class "project-links-spacing" ]
            [ viewProjectInfo ( projectTitle, projectLink )
            , img
                [ src (projectImg)
                , class "img-fluid project-img-links"
                ]
                []
            ]



--[ a [ href "#", onClick (SwitchPage Schedule) ] [ text "Schedule" ]


viewProjectInfo ( projectTitle, projectLink ) =
    p [ class "project-info-title" ] [ a [ href (projectLink) ] [ text (projectTitle) ] ]


main =
    view
