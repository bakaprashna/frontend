module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram { model = 0, view = view, update = update }


update msg model =
    model


view model =
    div []
        [ center "#eeeeee" [ headerLinks model ]
        , div [ class "center" ] [ div [] [ text "foobar" ] ]
        , div [ class "footer" ]
            [ text "All code for this site is open source and written in Elm. "
            , a [ class "grey-link", href "https://github.com/elm-lang/package.elm-lang.org/" ] [ text "Check it out" ]
            , text "! — © 2012-2016 Evan Czaplicki"
            ]
        ]


center color kids =
    div [ style [ ( "background-color", color ) ] ]
        [ div [ class "center" ] kids
        ]



-- VIEW ROUTE LINKS


headerLinks model =
    h1 [ class "header" ]
        [ a [ href "/", style [ ( "text-decoration", "none" ) ] ] [ logo ] ]



-- helpers


spacey token =
    span [ class "spacey-char" ] [ text token ]


logo =
    div
        [ style
            [ ( "display", "-webkit-display" ), ( "display", "-ms-flexbox" ), ( "display", "flex" ) ]
        ]
        [ img
            [ src "/assets/elm_logo.svg"
            , style
                [ ( "height", "30px" ), ( "vertical-align", "bottom" ), ( "padding-right", "8px" ) ]
            ]
            []
        , div
            [ style
                [ ( "color", "black" ) ]
            ]
            [ div
                [ style
                    [ ( "line-height", "20px" ) ]
                ]
                [ text "elm" ]
            , div
                [ style
                    [ ( "line-height", "10px" ), ( "font-size", "0.5em" ) ]
                ]
                [ text "packages" ]
            ]
        ]


headerLink url words =
    a [ href url, style [ ( "color", "#333333" ) ] ]
        [ text words ]
