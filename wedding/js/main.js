        var _SlideshowTransitionC = {};
        var _SlideshowTransitionCodes = {};
        var _SlideshowTransitions = [];


        //----------- Wave out Effects --------------
        {

            _SlideshowTransitionC["Wave out"] = { $Duration: 1500, y: -0.5, $Delay: 60, $Cols: 12, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Easing: $JssorEasing$.$EaseInWave, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave out"] = "{$Duration:1500,y:-0.5,$Delay:60,$Cols:12,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Easing:$JssorEasing$.$EaseInWave,$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave out Eagle"] = { $Duration: 1500, y: -0.5, $Delay: 60, $Cols: 15, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationCircle, $Easing: $JssorEasing$.$EaseInWave, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave out Eagle"] = "{$Duration:1500,y:-0.5,$Delay:60,$Cols:15,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationCircle,$Easing:$JssorEasing$.$EaseInWave,$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave out Swirl"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationSwirl, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave out Swirl"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationSwirl,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseLinear,$Top:$JssorEasing$.$EaseOutWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave out ZigZag"] = { $Duration: 1500, x: 1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationZigZag, $Assembly: 260, $ChessMode: { $Row: 3 }, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave out ZigZag"] = "{$Duration:1500,x:1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationZigZag,$Assembly:260,$ChessMode:{$Row:3},$Easing:{$Left:$JssorEasing$.$EaseLinear,$Top:$JssorEasing$.$EaseOutWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave out Square"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationSquare, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave out Square"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationSquare,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseLinear,$Top:$JssorEasing$.$EaseOutWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave out Rectangle"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationRectangle, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave out Rectangle"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationRectangle,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseLinear,$Top:$JssorEasing$.$EaseOutWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave out Circle"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationCircle, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave out Circle"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationCircle,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseLinear,$Top:$JssorEasing$.$EaseOutWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave out Cross"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationCross, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave out Cross"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationCross,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseLinear,$Top:$JssorEasing$.$EaseOutWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave out Rectangle Cross"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationRectangleCross, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave out Rectangle Cross"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$SlideOut:true,$Formation:$JssorSlideshowFormations$.$FormationRectangleCross,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseLinear,$Top:$JssorEasing$.$EaseOutWave},$Round:{$Top:1.5}}";
        }

        //----------- Wave in Effects --------------
        {

            _SlideshowTransitionC["Wave in"] = { $Duration: 1500, y: -0.5, $Delay: 60, $Cols: 12, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Easing: $JssorEasing$.$EaseInWave, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave in"] = "{$Duration:1500,y:-0.5,$Delay:60,$Cols:12,$Formation:$JssorSlideshowFormations$.$FormationStraightStairs,$Easing:$JssorEasing$.$EaseInWave,$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave in Eagle"] = { $Duration: 1500, y: -0.5, $Delay: 60, $Cols: 15, $Formation: $JssorSlideshowFormations$.$FormationCircle, $Easing: $JssorEasing$.$EaseInWave, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave in Eagle"] = "{$Duration:1500,y:-0.5,$Delay:60,$Cols:15,$Formation:$JssorSlideshowFormations$.$FormationCircle,$Easing:$JssorEasing$.$EaseInWave,$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave in Swirl"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $Formation: $JssorSlideshowFormations$.$FormationSwirl, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseSwing, $Top: $JssorEasing$.$EaseInWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave in Swirl"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$Formation:$JssorSlideshowFormations$.$FormationSwirl,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseSwing,$Top:$JssorEasing$.$EaseInWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave in ZigZag"] = { $Duration: 1500, x: 1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $Formation: $JssorSlideshowFormations$.$FormationZigZag, $Assembly: 260, $ChessMode: { $Row: 3 }, $Easing: { $Left: $JssorEasing$.$EaseSwing, $Top: $JssorEasing$.$EaseInWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave in ZigZag"] = "{$Duration:1500,x:1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$Formation:$JssorSlideshowFormations$.$FormationZigZag,$Assembly:260,$ChessMode:{$Row:3},$Easing:{$Left:$JssorEasing$.$EaseSwing,$Top:$JssorEasing$.$EaseInWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave in Square"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $Formation: $JssorSlideshowFormations$.$FormationSquare, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseSwing, $Top: $JssorEasing$.$EaseInWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave in Square"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$Formation:$JssorSlideshowFormations$.$FormationSquare,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseSwing,$Top:$JssorEasing$.$EaseInWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave in Rectangle"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $Formation: $JssorSlideshowFormations$.$FormationRectangle, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseSwing, $Top: $JssorEasing$.$EaseInWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave in Rectangle"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$Formation:$JssorSlideshowFormations$.$FormationRectangle,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseSwing,$Top:$JssorEasing$.$EaseInWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave in Circle"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $Formation: $JssorSlideshowFormations$.$FormationCircle, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseSwing, $Top: $JssorEasing$.$EaseInWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave in Circle"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$Formation:$JssorSlideshowFormations$.$FormationCircle,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseSwing,$Top:$JssorEasing$.$EaseInWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave in Cross"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $Formation: $JssorSlideshowFormations$.$FormationCross, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseSwing, $Top: $JssorEasing$.$EaseInWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave in Cross"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$Formation:$JssorSlideshowFormations$.$FormationCross,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseSwing,$Top:$JssorEasing$.$EaseInWave},$Round:{$Top:1.5}}";

            _SlideshowTransitionC["Wave in Rectangle Cross"] = { $Duration: 1500, x: -1, y: 0.5, $Delay: 60, $Cols: 8, $Rows: 4, $Formation: $JssorSlideshowFormations$.$FormationRectangleCross, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseSwing, $Top: $JssorEasing$.$EaseInWave }, $Round: { $Top: 1.5 } };
            _SlideshowTransitionCodes["Wave in Rectangle Cross"] = "{$Duration:1500,x:-1,y:0.5,$Delay:60,$Cols:8,$Rows:4,$Formation:$JssorSlideshowFormations$.$FormationRectangleCross,$Assembly:260,$Easing:{$Left:$JssorEasing$.$EaseSwing,$Top:$JssorEasing$.$EaseInWave},$Round:{$Top:1.5}}";
        }

        $Jssor$.$Each(_SlideshowTransitionC, function (slideshowTransition, name) {
            _SlideshowTransitions.push(slideshowTransition);
        });
        jssor_slider1_starter = function (containerId) {
            var jssor_slider1 = new $JssorSlider$(containerId, {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $Idle: 400,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $Cols is greater than 1, or parking position is not 0)
                $PauseOnHover: 1,                                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                    $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                    $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                    $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                    $ShowLink: true                                 //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                }
            });

            PlaySlideshowTransition = function (event) {
                $Jssor$.$StopEvent(event);
                $Jssor$.$CancelEvent(event);

                try {
                    var eventSrcElement = $Jssor$.$EvtSrc(event);
                    var transitionName = $Jssor$.$InnerText(eventSrcElement);
                    jssor_slider1.$Next();

                    jssor_slider1.$SetSlideshowTransitions([_SlideshowTransitionC[transitionName]]);

                    var effectStr = _SlideshowTransitionCodes[transitionName];

                    if (transitionNameTextBox) {
                        transitionNameTextBox.value = transitionName;
                    }
                    if (transitionCodeTextBox) {
                        transitionCodeTextBox.value = effectStr;
                    }
                }
                catch (e) { }
            }

            TransitionTextBoxClickEventHandler = function (event) {
                transitionCodeTextBox.select();

                $Jssor$.$CancelEvent(event);
                $Jssor$.$StopEvent(event);
            }

            var transitionCodeTextBox = $Jssor$.$GetElement("stTransition");
            var transitionNameTextBox = $Jssor$.$GetElement("stTransitionName");
            $Jssor$.$AddEvent(transitionCodeTextBox, "click", TransitionTextBoxClickEventHandler);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var bodyWidth = document.body.clientWidth;
                if (bodyWidth)
                    jssor_slider1.$ScaleWidth(Math.min(bodyWidth, max));
                else
                    $Jssor$.$Delay(ScaleSlider, 30);
            }

            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);

            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            //responsive code end
        };
