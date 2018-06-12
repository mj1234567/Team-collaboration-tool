<script>
            $(document).ready(
                    function() {
                        
                     $("#project").hide();
                     
                     $("#m1").click(
                             function()
                        {
                           $("#project").fadeToggle();
                         
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