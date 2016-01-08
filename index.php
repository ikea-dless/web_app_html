<?php
require './vendor/autoload.php';

try {
    $pdo = new PDO('mysql:host=localhost;dbname=web_app;charset=utf8;', 'root', '',
        array(PDO::ATTR_EMULATE_PREPARES => false)
    );
} catch (PDOException $e) {
    die('データベースに接続できませんでした: ' . $e->getMessage());
}

$item_name = is_null($_POST['item_name']) ? null : $_POST['item_name'];
$items = $pdo->prepare("SELECT * FROM items WHERE items.name LIKE ? ESCAPE '!'");
$items->bindValue(1, '%' . preg_replace('/(?=[!_%])/', '!', $item_name) . '%', PDO::PARAM_STR);
$items->execute();
$items = $items->fetchAll();

$smarty = new Smarty();
$smarty->assign('items', $items);

if (is_null($item_name)) {
    $smarty->display('index.tpl');
} else {
    $smarty->display('items.tpl');
}