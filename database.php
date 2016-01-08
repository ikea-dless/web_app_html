<?php
class Database {
    public function __construct($host = '', $dbname = '', $username = '', $password = '') {
        try { 
            new PDO('mysql:host='.$host.';dbname='.$dbname.';charset=utf8;', $username, $password, 
            array(PDO::ATTR_EMULATE_PREPARES => false) ); 
        } catch (PDOException $e) {
            die('データベースに接続できませんでした: ' . $e->getMessage());
        }
    }
}