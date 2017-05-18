onClipEvent(load){
		nowin = 1; recievedAnswer = -1; innerTimer = -1;
		branch = new Array("1_c1_2","1_c2_3","1_c3_3","3_t120_4");
		from = new Array(); to = new Array(); condition = new Array();
		for (var i=0; i<branch.length; i++)
			{ from.push(branch[i].slice(0,branch[i].indexOf("_"))); to.push(branch[i].slice(branch[i].lastIndexOf("_")+1,branch[i].length)); trace(from[i]+" -> "+to[i]); condition.push( branch[i].slive(branch[i].indexOf("_")+1,branch[i].lastIndexOf("_")-1) ); trace("condition: "+condition[i]+";");}
}

onClipEvent(enterFrame){
	if (recieveAnswer>-1){		//we recieve an answer
		recieveAnswer = -1; 
		for (var i=0; i<from.length; i++){if (from[i]==nowin && condition[i][0]=="c" && recieveAnswer+""==condition[i][1]){innerTimer = 0; nowin = to[i]; break;} }
	}
	if (innerTimer>=0)innerTimer++;
}

function makeASpeaker (who:MovieClip){
	who.nowin = 1; who.recievedAnswer = -1; who.innerTimer = -1;
		who.branch = new Array("1_c1_2","1_c2_3","1_c3_3","3_t120_4");
		who.from = new Array(); who.to = new Array(); who.condition = new Array(); who.update = 1;
		who.onEnterFrame = function (){
			if (this.update>0)
				for (var i=0; i<branch.length; i++)
					{ from.push(branch[i].slice(0,branch[i].indexOf("_"))); to.push(branch[i].slice(branch[i].lastIndexOf("_")+1,branch[i].length)); trace(from[i]+" -> "+to[i]); condition.push( branch[i].slive(branch[i].indexOf("_")+1,branch[i].lastIndexOf("_")-1) ); trace("condition: "+condition[i]+";");}
			
}}