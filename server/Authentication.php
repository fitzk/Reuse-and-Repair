<?php
include_once('Database.php');

function authenticate($access_level, $admin_id)
{
  $username = $_SERVER['PHP_AUTH_USER'];
  $password = $_SERVER['PHP_AUTH_PW'];

  if($username == null || $password == null)
    return false;

  $db = new Database();
  
  $sql = "SELECT * FROM reuse_and_repair_db.Admin
        WHERE reuse_and_repair_db.Admin.username = ? AND reuse_and_repair_db.Admin.password = ?;";
  $prepared = $db->link->prepare($sql);
  $prepared->bindParam(1, $username);
  $prepared->bindParam(2, $password);
  $success = $prepared->execute();
  $result = $prepared->fetchAll();
  
  if($prepared->rowCount() == 0)
    return false;
  
  $result_role_id = $result[0]['fk_role_id'];
  $result_admin_id = $result[0]['admin_id'];
  
  switch ($access_level) {
      case "1":
          if($result_role_id == "1")
            return true;
          return false;
      case "2":
          if($result_role_id == "1" || $result_role_id == "2")
            return true;
          return false;
      case "3":
          if($result_role_id == "1" || $result_role_id == "2" || $result_role_id == "3")
            return true;
          return false;
      case "4":
          if($result_role_id == "1" || $result_role_id == "2" || $result_role_id == "3" || $result_role_id == "4")
            return true;
          return false;
      case "user":
          if($result_admin_id == $admin_id)
            return true;
          return false;
      default:
          return false;
  }

	return false;
}


