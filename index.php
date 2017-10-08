<?php
 $host = "localhost";
 $user = "root";
 $pass = "";
 $db = "MovieGallery"; 
 $conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
session_start();
$gid = "all";
$lid = "all";
$sort = 'length';
if(!empty($_POST))
{
    $gid = $_POST['genre'];
    $lid = $_POST['language'];
    $sort = $_POST['sort_by'];
}

$sql1 = "SELECT movie_id from relationship";
if($gid!="all" && $lid!="all") $sql1 .= " where movie_id in (select movie_id from relationship where category_id = " . $gid . ") and category_id = " . $lid . " group by movie_id";
else if($gid=="all" && $lid!="all") $sql1 .= " where category_id=" . $lid . " group by movie_id";
else if($lid=="all" && $gid!="all") $sql1 .= " where category_id=" . $gid . " group by movie_id";
$sql2 = "SELECT * FROM movies where id in (".$sql1.") group by movies.id order by ";
if($sort == "length") $sql2 .= $sort . " desc";
else $sql2 .= $sort . " asc";

if(!empty($_POST)) {
    $_SESSION['sql2'] = $sql2;
    $_SESSION['lid'] = $lid;
    $_SESSION['gid'] = $gid;
    $_SESSION['sort'] = $sort;

}

if(isset($_GET['page'])){
    $sql2 = $_SESSION['sql2'];
    $gid = $_SESSION['gid'];
    $lid = $_SESSION['lid'];
    $sort = $_SESSION['sort'];
}

$res1 = mysqli_query($conn,$sql2);


$g = "select * from category where type='genre'";
$res2 = mysqli_query($conn , $g);
$l = "select * from category where type='language'";
$res3 = mysqli_query($conn , $l);

$num_of_rows=mysqli_num_rows($res1);
$rows_per_page=10;
$total = ceil($num_of_rows/$rows_per_page);
if (isset($_GET['page']) && is_numeric($_GET['page'])) {
   $cur_page=(int) $_GET['page'];
} else {
   $cur_page=1;
}
if ($cur_page>$total) {
   $cur_page=$total;
} 
if ($cur_page<1) {
   $cur_page=1;
} 
$offset = ($cur_page-1)*$rows_per_page;
$sql = $sql2 . " LIMIT $offset, $rows_per_page";
$final_result = mysqli_query($conn, $sql);

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Explore Movies</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">    
    </head>
    <body>
    <div class="container">
    <h1>Explore Movies</h1>
    <div class="row container" >
        <form action="index.php" method="post">
      <div class="col-md-6">
          <h3>Filter by</h3>
        <div class="row">
          <div class="col-md-2">
            <div class="dropdown"><label>Genre:</label>
            </div>
            <div class="col-md-10">
              <select class="btn dropdown-toggle" type="button" data-toggle="dropdown" name='genre' onchange='this.form.submit()'>
                <option value="all">All</option>
                <?php for($i = 0 ; $i < mysqli_num_rows($res2) ; $i++) {
                            $row = $res2->fetch_assoc(); ?>
                  <option value=<?php echo $row[ 'id']; ?>
                    <?php if($row['id'] == $gid) {?> selected="selected"
                      <?php } ?> >
                        <?php echo ucfirst($row['value']);  ?>
                  </option>
                  <?php } ?>
                    </select>
            </div>
          </div>
        </div>
        <div class="row">
            <div class="col-md-2">
              <div class="dropdown"><label>Language:</label>
              </div>
              <div class="col-md-10">
                <select class="btn dropdown-toggle" type="button" data-toggle="dropdown" name='language' onchange='this.form.submit()'>
                  <option value="all">All</option>
                  <?php for($i = 0 ; $i < mysqli_num_rows($res3) ; $i++) {
                              $row = $res3->fetch_assoc(); ?>
                    <option value=<?php echo $row[ 'id']; ?>
                      <?php if($row['id'] == $lid) {?> selected="selected"
                        <?php } ?> >
                          <?php echo ucfirst($row['value']);  ?>
                    </option>
                    <?php } ?>
                      </select>
              </div>
            </div>
          </div>
      </div>
    
      <div class="col-md-6">
          <h3>Sort By</h3>
          <div class="row">
            
              <div class="col-sm-3">
                <div class="dropdown">
                </div>
                <div class="col-sm-9">
                  <select class="btn dropdown-toggle" type="button" data-toggle="dropdown" name='sort_by' onchange='this.form.submit()'>
                       <option value="length" <?php if($sort == "length") {?> selected="selected" <?php } ?> >Movie Length</option>
                        <option value="date" <?php if($sort == "date") {?> selected="selected" <?php } ?> >Release Date</option>
             </select>
                </div>
              </div>
            </div>
      </div>
      </form>
    </div>
    
    <br>
     <?php 
    if(mysqli_num_rows($final_result) > 0 )
    {
    while ($row = mysqli_fetch_assoc($final_result)) { ?>
        <div data-view="list-view" class="movie-cards">
      <article class="movie-card row">

        <div class="card-image col-md-3"><img class=" img img-responsive center-block" src="<?php echo $row['image'];?>" /></div>
        <div class="card-content col-md-9">
          <div class="content">
            <h2 class="card-content_title"><?php echo $row['title'] ?></h2>
            <h4 class="card-content_date"> <small><?php echo $row['length'] ?> Mins, 
            <?php
                $date = strtotime($row['date']);
                echo date('F j Y', $date);
            ?>
            </small> </h4>
            <p class="card-content_description">
                <?php echo $row['description']; ?>
            </p>
            <p class="card-content_description1">
                <?php $row2 = mysqli_query($conn , "select value from category where id in (select category_id from relationship where movie_id = ".$row['id'].") and type='language'");  
                        while($r = mysqli_fetch_assoc($row2)) {
                        echo ucfirst($r['value']);  }
                        echo " , ";
                        $row2 = mysqli_query($conn , "select value from category where id in (select category_id from relationship where movie_id = ".$row['id'].") and type='genre'");  
                        while($r = mysqli_fetch_assoc($row2)) { 
                        echo ucfirst($r['value']) . " "; } ?>
            </p>
          </div>
      </article>

      </div>
    <?php    } 
    $range = 4;
    ?>
    </div>
     <nav class="pagination-container">
        <div class="pagination">
            <?php 
            if ($cur_page > 1) {
                $prevpage = $cur_page - 1;
                echo "<a class='pagination-newer' href='index.php?page=$prevpage'>PREV</a>";
            }
            ?>
            <span class="pagination-inner">
            <?php
            for ($x = ($cur_page - $range); $x < (($cur_page + $range) + 1); $x++) {
            if (($x > 0) && ($x <= $total)) {
                if ($x == $cur_page) {
                    echo "<a class='pagination-active'>$x</a>";
                } else {
                    echo "<a href='index.php?page=$x'>$x</a>";
                }
            }
            } 
            ?>
            </span>
            <?php
            if ($cur_page != $total) {
              $nextpage = $cur_page + 1;
              echo "<a class='pagination-older' href='index.php?page=$nextpage'>NEXT</a>";
            }
            ?>
        </div>
    </nav>
    <?php }
    else{ ?>
    <div align="center"><h2>No Results</h2></div>
    <?php }
    mysqli_close($conn);
    ?>

    </body>
</html>