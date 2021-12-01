module Example exposing (..)

-- Test target modules

import Expect exposing (..)
import Main exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "validPassword"
        [ test "If 'password' and 'passwordAgain' have the same value, returns True." <|
            \_ ->
                let
                    model =
                        Main.Model
                            ""
                            ""
                            ""
                in
                Expect.equal (Main.validPassword model) True
        , test "If 'password' and 'passwordAgain' have the not same value, returns False." <|
            \_ ->
                let
                    model =
                        Main.Model
                            ""
                            "foo"
                            "bar"
                in
                Expect.equal (Main.validPassword model) False
        ]
