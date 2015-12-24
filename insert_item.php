<?php
try {
    $pdo = new PDO('mysql:host=localhost;dbname=web_app;charset=utf8;', 'root', '',
        array(PDO::ATTR_EMULATE_PREPARES => false)
    );
} catch (PDOException $e) {
    die('データベースに接続できませんでした: ' . $e->getMessage());
}

$categories = $pdo->prepare("SELECT * FROM categories");
$categories->execute();
$categories = $categories->fetchAll();

$data = $_POST;
var_dump($data);
$stmt = $pdo->prepare(
    "INSERT INTO items (name, price, stock, description, updated_at, created_at, category_id)
    VALUES (:name, :price, :stock, :description, :updated_at, :created_at, :category_id)");
$stmt->bindParam(':name', $data["name"], PDO::PARAM_STR);
$stmt->bindParam(':price', $data["price"], PDO::PARAM_STR);
$stmt->bindParam(':stock', $data["stock"], PDO::PARAM_STR);
$stmt->bindValue(':description', $data["description"], PDO::PARAM_STR);
$stmt->bindParam(':category_id', $data["category"], PDO::PARAM_STR);
$stmt->bindParam(':created_at', date("Y-m-d H:i:s"), PDO::PARAM_STR);
$stmt->bindParam(':updated_at', date("Y-m-d H:i:s"), PDO::PARAM_STR);
$stmt->execute();
?>

<form action="insert_item.php" method="post">
    <p>
        <?php foreach($categories as $category): ?>
            <input type="checkbox" name="category" value=<?php echo $category["id"]; ?> ><?php echo $category["name"]; ?>
        <?php endforeach; ?>
        <input type="text" name="name">
        <input type="text" name="price">
        <input type="text" name="stock">
        <input type="text" name="description">
    </p>
    <p>
        <input type="submit" value="送信する">
    </p>
</form>