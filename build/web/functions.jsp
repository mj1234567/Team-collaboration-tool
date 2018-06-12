<script>
            $(document).ready(
                    function() {
                        
                     $("#project").hide();
                     $("#team").hide();
                     $("#m1").click(
                             function()
                        {
                           $("#project").fadeToggle();
                         
                          });
                          $("#team1").click(
                             function()
                        {
                           $("#team").fadeToggle();
                         
                          });
                         
                     

                       
                    });
  </script>
   <script>
            function show(x)
            {
                var t = document.getElementById(x);
                t.style.visibility = "visible";
            }
            function hide(x)
            { var t=document.getElementById(x);
               t.style.visibility="hidden"; 
              }
            
        </script>