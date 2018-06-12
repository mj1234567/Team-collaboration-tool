<script>
        jQuery(document).ready(function ($) {
            
            var jssor_html5_AdWords_SlideoTransitions = [
              [{b:-1,d:1,o:-1,rY:-120},{b:2600,d:500,o:1,rY:120,e:{rY:17}}],
              [{b:-1,d:1,o:-1},{b:1480,d:20,o:1},{b:1500,d:500,y:-20,e:{y:19}},{b:2300,d:300,x:-20,e:{x:19}},
{b:3100,d:300,o:-1,sY:9}],
              [{b:-1,d:1,o:-1},{b:2300,d:300,x:20,o:1,e:{x:19}},{b:3100,d:300,o:-1,sY:9}],
              [{b:-1,d:1,sX:-1,sY:-1},{b:0,d:1000,sX:2,sY:2,e:{sX:7,sY:7}},{b:1000,d:500,sX:-1,sY:-1,e:
{sX:16,sY:16}},{b:1500,d:500,y:20,e:{y:19}}],
              [{b:1000,d:1000,r:-30},{b:2000,d:500,r:30,e:{r:2}},{b:2500,d:500,r:-30,e:{r:3}},
{b:3000,d:3000,x:70,y:40,rY:-20,tZ:-20}],
              [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
              [{b:-1,d:1,o:-1,r:30},{b:1000,d:1000,o:1}],
              [{b:-1,d:1,o:-1},{b:2780,d:20,o:1},{b:2800,d:500,y:-70,e:{y:3}},{b:3300,d:1000,y:180},
{b:4300,d:500,y:-40,e:{y:3}},{b:5300,d:500,y:-40,e:{y:3}},{b:6300,d:500,y:-40,e:{y:3}},{b:7300,d:500,y:-40,e:
{y:3}},{b:8300,d:400,y:-30}],
              [{b:-1,d:1,c:{y:200}},{b:4300,d:4400,c:{y:-200},e:{c:{y:1}}}],
              [{b:-1,d:1,o:-1},{b:4300,d:20,o:1}],
              [{b:-1,d:1,o:-1},{b:5300,d:20,o:1}],
              [{b:-1,d:1,o:-1},{b:6300,d:20,o:1}],
              [{b:-1,d:1,o:-1},{b:7300,d:20,o:1}],
              [{b:-1,d:1,o:-1},{b:8300,d:20,o:1}],
              [{b:2000,d:1000,o:-0.5,r:180,sX:4,sY:4,e:{r:5,sX:5,sY:5}},{b:3000,d:1000,o:-0.5,r:180,sX:-4,sY:-
4,e:{r:6,sX:6,sY:6}}],
              [{b:-1,d:1,o:-1,c:{m:-35.0}},{b:0,d:1500,x:150,o:1,e:{x:6}}],
              [{b:-1,d:1,o:-1,c:{y:35.0}},{b:0,d:1500,x:-150,o:1,e:{x:6}}],
              [{b:-1,d:1,o:-1},{b:6500,d:2000,o:1}],
              [{b:-1,d:1,o:-1},{b:2000,d:1000,o:0.5,r:180,sX:4,sY:4,e:{r:5,sX:5,sY:5}},
{b:3000,d:1000,o:0.5,r:180,sX:-4,sY:-4,e:{r:6,sX:6,sY:6}},{b:4500,d:1500,x:-45,y:60,e:{x:12,y:3}}],
              [{b:-1,d:1,o:-1},{b:4500,d:1500,o:1,e:{o:5}},{b:6500,d:2000,o:-1,r:10,rX:30,rY:20,e:{rY:6}}]
            ];
            
            var jssor_html5_AdWords_options = {
              $AutoPlay: true,
              $Idle: 1600,
              $SlideDuration: 400,
              $SlideEasing: $Jease$.$InOutSine,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_html5_AdWords_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$,
                $ChanceToShow: 1
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $ActionMode: 2
              }
            };
            
            var jssor_html5_AdWords_slider = new $JssorSlider$("jssor_html5_AdWords", 
jssor_html5_AdWords_options);
        });
    </script>
