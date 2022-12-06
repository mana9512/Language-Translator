%{
#include "y.tab.h"
%}

DIGIT    [0-9]

%%
{DIGIT}+  {
		yylval.integer=atoi(yytext);
		return NUMBER;
		}

convert   {return convert;}
to	      {return to;}
volume	  {return volume;}
gallon	  {return gallon;}
cup		  {return cup;}
tablespoon		    {return tablespoon;}
teaspoon           {return teaspoon;}
cubic	    {return cubic;}
meter      {return meter;}
litre        {return litre;}
millilitre			{return millilitre;}
foot        {return foot;}
inch          {return inch;}
[\n]	{return yytext;}
[/t]	;
%%
int yywrap(){return 1;}
