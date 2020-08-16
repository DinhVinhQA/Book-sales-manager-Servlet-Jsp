<?php
include("../connect.php"); 
if (isset($_GET['data']) && $_GET['data'] != "") {
  function mysubstr($str,$limit){
    if(strlen($str)<=$limit) return $str;
    return mb_substr($str,0,$limit-3,'UTF-8').'...';
   }
  $key = trim($_GET['data']); // nhận giá trị từ ajax gửi qua để xử lý
  include_once("../model/entity/post.php");
  $rs = post::getListSearch($key);
  $str = "";
  foreach($rs as $key => $value){
    $sqlcm = "SELECT * FROM comments WHERE postid='$value->id' ";  
            $sqlcmcd = "SELECT * FROM comments WHERE postid='$value->id' AND duyet=0";        
            $cmt = mysqli_query($conn,$sqlcm); 
            $count = mysqli_num_rows($cmt); 
            $cmtcd = mysqli_query($conn,$sqlcmcd); 
            $countcd = mysqli_num_rows($cmtcd); 
    $str = " <tr >
             <th scope='row'>$value->id</th>
             <td>$value->tieude</td>
             <td>$value->mota</td>
             <td><img style='width: 70px;' src='img/$value->anh'</td>
             <td>bình luận ($count)($countcd)</td>
             <td>$value->ngaydang</td>
             <td>  <a class='btn btn-primary' style='color:white 'href='editpost.php?id=$value->id'>Sửa</a> <a  onclick='return confirm('Bài viết xóa sẽ không thể khôi phục lại!');' class='btn btn-danger' style='color:white 'href='deletepost.php?id=$value->id'>Xóa</a></td>
             </tr>
             ";  
    echo $str;
  }
}
?>