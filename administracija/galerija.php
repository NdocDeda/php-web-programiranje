<?php       //Prekini ako je izravan pristup 
            if(!defined('__UP__')) 
                die("Pogreška: neovlašteni pristup!");  ?>

<?php
    // Ako ima promjena spremi ih u bazu
    if (isset($_POST['content'])) {
        $query  = "UPDATE stranice SET content='".$MySQL->real_escape_string($_POST['content'])."' WHERE id=4";
        $result = @mysqli_query($MySQL, $query);
    }

?>

<form action="<?= $base_url ?>galerija" method="post"> 

<textarea style="width: 90%; min-height:500px;" name="content">
<?php
    $query  = "SELECT * FROM stranice WHERE id=4";
    $result = @mysqli_query($MySQL, $query);
    if ($row = @mysqli_fetch_array($result, MYSQLI_ASSOC)) { 
        echo $row['content']; 
    }
?>
</textarea>
<input type="submit" value="Spremi promjene">


</form>