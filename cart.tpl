<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
{include 'header.tpl'}
<div class="panel panel-default panel-danger" style="padding-top: 60px">
  <div class="panel-heading">花の名前</div>
  <div class="panel-body">
    <div class="media">
      <a class="media-left" href="#">
        <img class="media-object" src="img/f64.jpg" alt="Generic placeholder image">
      </a>
      <div class="media-body">
        <p>サイズとかとか</P>
      </div>
      <div style="text-align:right">
        価格: 1000円  在庫:10個
        <button type="button" class="btn btn-default btn-xs">×</button>
      </div>
    </div>
    <button type="button" class="btn btn-default btn-xs">カテゴリ名</button>
    </p>
  </div>
</div>
<div>
  合計:1000円
  <button type="button" class="btn btn-default btn">購入</button>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.3.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
