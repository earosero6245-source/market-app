<?php
//step1 get database conection
require('../config/database.php');

//step 2. Get form data
$e_mail= $_POST['email'];
$p_wd = $_POST['passwd'];

//step3 query yo validate data
$sql_check_date_user ="
    select
        u.email,
        u.password
    from
        users u
    where
        u.email = '$e_mail' and
        u.password = '$p_wd '
    limit 1
";

//step 4. execute query
$res_check = pg_query($conn, $sql_check_user);
if(pg_num_rows($res_check) >0){
    echo "user exists. Go to main page !!!";
}else {
    echo "verify data";
}
?>
