<?php
session_start();
include("Database.php");
$db = new Database();
$teachers = $db->getAllTeachers();
?>