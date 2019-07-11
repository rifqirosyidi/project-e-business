<?php 

$server = "localhost";
$user = "root";
$password = "";
$database = "beli_beli";

$conn = mysqli_connect($server, $user, $password, $database);

function query($query) {
	global $conn;
	$result = mysqli_query($conn, $query);
	$rows = [];
	while ( $row = mysqli_fetch_assoc($result) ) {
		$rows[] = $row;
	}
	return $rows;
}

function pencarian($searchKey){
	$query = "SELECT * FROM nama_cloth 
				WHERE 
			 LIKE '%$searchKey%' OR
			nama_lengkap LIKE '%$searchKey%' OR
			jurusan LIKE '%$searchKey%' ORDER BY nis ASC
			";

	return query($query);
}


?>