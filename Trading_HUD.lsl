// HUD Main Code

default
{
    state_entry()
    {
        bid_set = -9000 - player; // Channel on which bids are made. 
        ask_set = 9000 + player; // Channel on which asks are made.
        bid_amount = -900000 - player; // Channel on which bid values are set.
        ask_amount = 900000 + player; // Channel on which ask values are set.
        give_set = -3000 - player;
        receive_set = 3000 + player;
        give_amount = -30000 - player;
        receive_amount = 30000 + player; 


if (channel == give_set)
        {
            if ( message == "Milk1") 
            {
                if (market == 0) {
                     market = 1;
                    llDialog(user, "What do you want to trade for?", ["Eggs1", "Sugar1"], give_set); //careful for the commas  
                }    
                else {
                    llRegionSay(603002,(string)player +(string)market + "," + "1");
                    market = 0;
                }

            }
            if ( message == "Eggs1") 
            {
                
                if (market == 0) {
                    market = 2;
                    llDialog(user, "What do you want to trade for?", ["Milk1", "Sugar1"], give_set); 
                }
                else {
                    llRegionSay(603002,(string)player +(string)market + "," +"2");
                    market = 0;
                }
            }
            if ( message == "Sugar1") 
            {
                if (market == 0) {
                    market = 3;
                    llDialog(user, "What do you want to trade for?", ["Milk1", "Eggs1"], give_set);
                }
                else {
                    llRegionSay(603002,(string)player + "," + (string)market + "," +"3");
