var PersonaApp = angular.module('PersonaApp', ['angularUtils.directives.dirPagination'])

PersonaApp.controller('PersonaCtrl', function ($scope, $http) {

    $scope.Personas = "";
    $scope.divBook = false;
    $scope.divDatos = true;
    GetData();

    //$scope.$watch('searchText', function (newVal, oldVal) {
    //    if (newVal != oldVal) {
    //        GetData();
    //    }
    //}, true);


    function GetData() {
        $http({
            url: '/Home/GetData',
            method: 'GET',
            params: { 'searchText': $scope.searchText },
            cache: true
        })
        .success(function (result) {
            $scope.Personas = result;
        })
        .error(function (result) {
            console.log(result);
        });
    }

    $scope.Buscar = function () {
        GetData();
    }

    $scope.sort = function (keyname) {
        $scope.sortKey = keyname;   //set the sortKey to the param passed
        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
    }

});