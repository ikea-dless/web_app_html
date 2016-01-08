<?php
try {
    $pdo = new PDO('mysql:host=localhost;dbname=web_app;charset=utf8;', 'root', '',
        array(PDO::ATTR_EMULATE_PREPARES => false)
    );
} catch (PDOException $e) {
    die('データベースに接続できませんでした: ' . $e->getMessage());
}

$ary = array(
    // ここにカテゴリを記述していく
    '観葉植物',
    '多肉植物',
    '肥料',
    '花工場原液'
);

$categories = $pdo->prepare("SELECT * FROM categories");
$categories->execute();
$categories = $categories->fetchAll();

var_dump($categories);

$stmt = $pdo->prepare("INSERT INTO categories (name, created_at, updated_at) VALUES (:name, :created_at, :updated_at)");
foreach($ary as $name) {
    if (empty($categories)) insert_category($stmt, $name);
    foreach($categories as $category) {
        if ($category["name"] === $name) {
            break 2;
        } else {
            insert_category($stmt, $name);
        }
    }
}

function insert_category($stmt, $name) {
    $stmt->bindParam(':name', $name, PDO::PARAM_STR);
    $stmt->bindParam(':created_at', date("Y-m-d H:i:s"), PDO::PARAM_STR);
    $stmt->bindParam(':updated_at', date("Y-m-d H:i:s"), PDO::PARAM_STR);
    $stmt->execute();
}
