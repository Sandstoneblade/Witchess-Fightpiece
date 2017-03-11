void main(int count, string target){
int pieceid = 0;
int pawnid = 1935;
if (target == "pawn")
{
	pieceid = pawnid;
}
else if (target == "knight")
{
	pieceid = pawnid+1;
}
else if (target == "bishop")
{
	pieceid = pawnid+2;
}
else if (target == "rook")
{
	pieceid = pawnid+3;
}
else if (target == "ox")
{
	pieceid = pawnid+4;
}
else if (target == "king")
{
	pieceid = pawnid+5;
}
else if (target == "queen")
{
	pieceid = pawnid+7;
}
else if (target == "witch")
{
	abort("Hell no.  Do that yourself.");
	count = 0;
}
else
{
	abort("Sorry, I didn't know what to target. Lowercase pieces only.  Aborting.");
	count = 0;
}

for (int a = 0; a < count; a++)
{
visit_url("campground.php?action=witchess");
run_choice(1);
visit_url("choice.php?option=1&pwd=" + my_hash() + "&whichchoice=1182&piece="+pieceid, false);
run_combat();
}
}