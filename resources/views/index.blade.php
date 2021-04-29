<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>

  {{-- Chargement du fichier css qui se trouve dans les assets(dossier public) --}}
  <link rel="stylesheet" href="{{ asset('css/app.css') }}">

</head>
<body>

  {{-- Element racine sur lequel on va coller notre instance de vue --}}
  <div id="app">
    {{-- <example-component></example-component> --}}

  </div>

  {{-- Chargement du script qui se trouve dans les assets(dossier public) --}}
  <script src=" {{ asset('js/app.js')}}"></script>

</body>
</html>
