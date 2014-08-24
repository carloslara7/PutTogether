package wackobytes.imath.PutTogeher
{

import citrus.core.starling.StarlingCitrusEngine;
import wackobytes.imath.Log;


import wackobytes.imath.DraggableCube;

/* TODO
 PutTogether : Parameters
 cardinality_Box1(min, max)
 cardinality_Box2(min,max)
 answer(boxId, cardinalityAnswer)


*/

    [SWF(backgroundColor="#FFF111", frameRate="60")]
    public class PutTogeher extends StarlingCitrusEngine {

        public function PutTogeher() {
            super();
            this.console.addCommand("pause", pauseGame)
            Log.info("PutTogeher.PutTogeher!");
        }


        override public function initialize():void
        {

            setUpStarling(true);
        }

        override public function handleStarlingReady():void
        {
            state = new PutTogeherGameState();
            this.console.addCommand("pause", pauseGame);
            this.console.showConsole();
        }

        public function pauseGame(pex : String)
        {
            trace("peeeeexxxx");
           if(pex == "true") this.playing = true else this.playing = false;

        }


    }




}

