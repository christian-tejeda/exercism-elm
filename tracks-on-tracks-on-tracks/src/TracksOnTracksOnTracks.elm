module TracksOnTracksOnTracks exposing (..)


newList : List String
newList =
    []

existingList : List String
existingList =
    ["Elm", "Clojure", "Haskell"]


addLanguage : String -> List String -> List String
addLanguage language languages =
    language :: languages


countLanguages : List String -> Int
countLanguages languages =
    List.length languages


reverseList : List String -> List String
reverseList languages =
    List.reverse languages


excitingList : List String -> Bool
excitingList languages =
    let 
        takeOne =
            List.take 1 languages
        firstItemIsElm = 
            List.member "Elm" (takeOne) 
        dropOne =
            List.drop 1 languages
        secondItemIsElm =
            List.member "Elm" (List.take 1 dropOne)
        containsLessThanThree =
            List.length languages <= 3
    in
        firstItemIsElm || (secondItemIsElm && containsLessThanThree)

