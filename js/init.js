/*
    author: zico
*/  
        var range=10;
        var offset=-10;
        var total=34;
        var param="";
        var next=true;
        var prev=true;
      $(document).ready(function(){
          $("#loader").hide();
           next_load("init")
      });
      function prettyPhotoInit(){
           $("a[rel^='prettyPhoto']").prettyPhoto({
                        animation_speed: 'fast', /* fast/slow/normal */
                        slideshow: 8000, /* false OR interval time in ms */
                        autoplay_slideshow: true, /* true/false */
                        opacity: 0.80, /* Value between 0 and 1 */
                        show_title: true, /* true/false */
                        allow_resize: true
           });
      }
      function buttonChange(){
          if(offset<=0){
                    prev=false;
                    offset=0;
          }else{
              prev=true;
          }
          
          if(offset+range>=total){
              next=false;
          }else{
              next=true;
          }
      }
      function next_load(param){
          if(!next) return;
          offset+=range;  
          $("#loader-back").fadeIn('fast');
          $.post('ajax.php',{offset:offset},function(data){
              $("#loader-back").fadeOut('fast');
            if(data=="") ; //end point determination
            else{ //remove current images and put new images
                if(param!="init"){
                    $('#thumbs').hide("slide", { direction: "left" }, 500,function(){
                        $(this).html(data);
                    });
                }
                $("#thumbs").append(data).show("slide", { direction: "right" }, 500,function(){
                        prettyPhotoInit();
                }); 
               buttonChange(); 
                
            }
            
         });
      }
      
      function prev_load(){
          if(!prev) return; 
          offset-=range;
         
          $("#loader-back").fadeIn('fast');
          $.post('ajax.php',{offset:offset},function(data){
              $("#loader-back").fadeOut('fast');
            if(data=="") ; //end point determination
            else{ //remove current images and put new images
                 
                $('#thumbs').hide("slide", { direction: "right" }, 500,function(){
                    $(this).html(data);
                });
                $("#thumbs").append(data).show("slide", { direction: "left" }, 500,function(){
                    prettyPhotoInit();
                }); 
                
               buttonChange(); 
            }
            
         });
      }
      