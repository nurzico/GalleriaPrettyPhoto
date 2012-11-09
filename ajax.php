<?php
     $offset=(int)trim($_POST['offset']); 
     
     
     $link = mysql_connect('localhost', 'root', '');
     if(!$link) die('Error: '. mysql_error());
     $db = mysql_select_db('prettygallery', $link);
     if(!$db) die('Error: '. mysql_error());
     
     $limit=10; // 10 photos per request
     
     $sql = "SELECT * FROM items LIMIT $offset,$limit";
     $result=mysql_query($sql);
     
     while($row=mysql_fetch_array($result)){
        $itemID=$row['item_id'];
        
    ?> 
     <li> 
     <div class="eachPhoto">
        <a href="images/<?php echo $row['filename']; ?>" rel="prettyPhoto[pp_gal]" forCalling="<?php echo $itemID; ?>"  title="<?php echo $row['item_name']; ?>">
            <img id="shareIT<?php echo $itemID; ?>" src="images/thumbs/thumb_<?php echo $row['filename']; ?>" width="100" height="100"  alt="<?php echo $row['description']; ?> " />
        </a>
     </div>
     </li>
 <?php }?>