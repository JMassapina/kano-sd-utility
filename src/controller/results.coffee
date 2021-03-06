###
Copyright (C) 2014 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
###

module.exports = ($scope, $rootScope, $routeParams) ->
    $scope.brand = $routeParams.brand
    $scope.type = $routeParams.type
    $scope.size = $routeParams.size

    $scope.results = []

    $rootScope.$watch 'cards', ->
        results = []
        authors = []

        for card in $rootScope.cards
            if card.brand is $scope.brand and card.type is $scope.type and card.size is $scope.size
                results.push card

                if authors.indexOf(card.author) is -1 then authors.push card.author

        $scope.results = results
        $scope.authors = authors