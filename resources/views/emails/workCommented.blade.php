<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
  </head>
  <body>
    <h2>Test prise de contact</h2>
    <p>Réception d'une prise de contact avec les éléments suivants :</p>
    <ul>
    <li><strong>WORK_ID:</strong> :  {{ $work['id']}} </li>
    <li><strong>WORK_TITLE:</strong> :  {{ $work['title']}} </li>
    <li><strong>PSEUDO:</strong> : {{ $comment['pseudo']}} </li>
    <li><strong>COMMENTAIRE:</strong> : {{ $comment['content']}} </li>
    </ul>
  </body>
</html>


{{-- <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <title>Document</title>
</head>
<body>
  <table class="table">
  <thead>
    <tr>
      <th scope="col">ID du Work</th>
      <th scope="col">Titre du Work</th>
      <th scope="col">Pseudo</th>
      <th scope="col">Commentaire</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"> {{ $work['id']}} </th>
      <td>{{ $work['title']}}</td>
      <td>{{ $comment['pseudo']}}</td>
      <td>{{ $comment['content']}}</td>
    </tr>
  </tbody>
</table>
</body>
</html> --}}
