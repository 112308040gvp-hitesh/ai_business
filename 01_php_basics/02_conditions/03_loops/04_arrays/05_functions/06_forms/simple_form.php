<form method="post">

Name:
<input type="text" name="name">

<button type="submit">Submit</button>

</form>

<?php

if($_POST){
    echo "Hello " . $_POST['name'];
}

?>
