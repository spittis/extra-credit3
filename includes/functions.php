<?php
    include 'connect.php';
    // get one video first
    function get_single_video($pdo, $vid) {
        $query = "SELECT * FROM video, moreinfo, tbl_video_moreinfo 
        WHERE video.id = tbl_video_moreinfo.video_id AND moreinfo.id = tbl_video_moreinfo.moreinfo_id AND id = $vid";
        //attach the id in the thumnail to ensure you are getting the right image

        $get_video = $pdo->query($query);
        $results = array();

        while($row = $get_video->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        return $results;
    }

    //get all videos
    function get_all_videos($pdo) {
        $query = "SELECT * FROM video, moreinfo, tbl_video_moreinfo
        WHERE video.id = tbl_video_moreinfo.video_id AND moreinfo.id = tbl_video_moreinfo.moreinfo_id";
        
        $get_video = $pdo->query($query);
        $results = array();
        
        while($row = $get_video->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        
        return $results; 
        }


?>

