%{
#include<stdio.h> 
extern FILE *yyin;
%} 
%union{
int integer;
float real;
}
%token <integer> NUMBER 
%token convert to volume gallon cup tablespoon teaspoon cubic meter litre millilitre foot inch
%type <real> S E 

%%

S: convert E;

E: NUMBER gallon to gallon	{$$=1*($1); printf("Converted volume of %d gallon = %f gallon\n",$1,$$);}
  |NUMBER gallon to cup	{$$=157725*($1); printf("Converted volume of %d gallon = %f cup\n",$1,$$);}
  |NUMBER gallon to tablespoon	{$$=256*($1); printf("Converted volume of %d gallon = %f tablespoon\n",$1,$$);}
  |NUMBER gallon to teaspoon	{$$=768*($1); printf("Converted volume of %d gallon = %f teaspoon\n",$1,$$);}
  |NUMBER gallon to cubic meter	{$$=.00378541*($1); printf("Converted volume of %d gallon = %f cubic meter\n",$1,$$);}
  |NUMBER gallon to litre	{$$=3.78541*($1); printf("Converted volume of %d gallon = %f litre\n",$1,$$);}
  |NUMBER gallon to millilitre	{$$=378.541*($1); printf("Converted volume of %d gallon = %f millilitre\n",$1,$$);}
  |NUMBER gallon to cubic foot	{$$=0.133681*($1); printf("Converted volume of %d gallon = %f cubic foot\n",$1,$$);}
  |NUMBER gallon to cubic inch	{$$=231*($1); printf("Converted volume of %d gallon = %f cubic inch\n",$1,$$);}

  |NUMBER cup to gallon	{$$=.0634013*($1); printf("Converted volume of %d cup = %f gallon\n",$1,$$);}
  |NUMBER cup to cup	{$$=1*($1); printf("Converted volume of %d cup = %f cup\n",$1,$$);}
  |NUMBER cup to tablespoon	{$$=16.2307*($1); printf("Converted volume of %d cup = %f tablespoon\n",$1,$$);}
  |NUMBER cup to teaspoon	{$$=48.6922*($1); printf("Converted volume of %d cup = %f teaspoon\n",$1,$$);}
  |NUMBER cup to cubic meter	{$$=.00024*($1); printf("Converted volume of %d cup = %f cubic meter\n",$1,$$);}
  |NUMBER cup to litre	{$$=.24*($1); printf("Converted volume of %d cup = %f litre\n",$1,$$);}
  |NUMBER cup to millilitre	{$$=240*($1); printf("Converted volume of %d cup = %f millilitre\n",$1,$$);}
  |NUMBER cup to cubic foot	{$$=.00847552*($1); printf("Converted volume of %d cup = %f cubic foot\n",$1,$$);}
  |NUMBER cup to cubic inch	{$$=14.6457*($1); printf("Converted volume of %d cup = %f cubic inch\n",$1,$$);}

  |NUMBER tablespoon to gallon	{$$=0.00390625*($1); printf("Converted volume of %d tablespoon = %f gallon\n",$1,$$);}
  |NUMBER tablespoon to cup	{$$=0.0616115*($1); printf("Converted volume of %d tablespoon = %f cup\n",$1,$$);}
  |NUMBER tablespoon to tablespoon	{$$=1*($1); printf("Converted volume of %d tablespoon = %f tablespoon\n",$1,$$);}
  |NUMBER tablespoon to teaspoon	{$$=3*($1); printf("Converted volume of %d tablespoon = %f teaspoon\n",$1,$$);}
  |NUMBER tablespoon to cubic meter	{$$=.000014787*($1); printf("Converted volume of %d tablespoon = %f cubic meter\n",$1,$$);}
  |NUMBER tablespoon to litre	{$$=0.0147868*($1); printf("Converted volume of %d tablespoon = %f litre\n",$1,$$);}
  |NUMBER tablespoon to millilitre	{$$=14.7686*($1); printf("Converted volume of %d tablespoon = %f millilitre\n",$1,$$);}
  |NUMBER tablespoon to cubic foot	{$$=0.00052219*($1); printf("Converted volume of %d tablespoon = %f cubic foot\n",$1,$$);}
  |NUMBER tablespoon to cubic inch	{$$=0.902344*($1); printf("Converted volume of %d tablespoon = %f cubic inch\n",$1,$$);}

  |NUMBER teaspoon to gallon	{$$=0.00130208*($1); printf("Converted volume of %d teaspoon = %f gallon\n",$1,$$);}
  |NUMBER teaspoon to cup	{$$=0.0205372*($1); printf("Converted volume of %d teaspoon = %f cup\n",$1,$$);}
  |NUMBER teaspoon to tablespoon	{$$=0.33333*($1); printf("Converted volume of %d teaspoon = %f tablespoon\n",$1,$$);}
  |NUMBER teaspoon to teaspoon	{$$=1*($1); printf("Converted volume of %d teaspoon = %f teaspoon\n",$1,$$);}
  |NUMBER teaspoon to cubic meter	{$$=.000049289*($1); printf("Converted volume of %d teaspoon = %f cubic meter\n",$1,$$);}
  |NUMBER teaspoon to litre	{$$=0.0049289*($1); printf("Converted volume of %d teaspoon = %f litre\n",$1,$$);}
  |NUMBER teaspoon to millilitre	{$$=4.92892*($1); printf("Converted volume of %d teaspoon = %f millilitre\n",$1,$$);}
  |NUMBER teaspoon to cubic foot	{$$=0.000174063*($1); printf("Converted volume of %d teaspoon = %f cubic foot\n",$1,$$);}
  |NUMBER teaspoon to cubic inch	{$$=0.300781*($1); printf("Converted volume of %d teaspoon = %f cubic inch\n",$1,$$);}

  |NUMBER cubic meter to gallon	{$$=264.172*($1); printf("Converted volume of %d cubic meter = %f gallon\n",$1,$$);}
  |NUMBER cubic meter to cup	{$$=4166.67*($1); printf("Converted volume of %d cubic meter = %f cup\n",$1,$$);}
  |NUMBER cubic meter to tablespoon	{$$=67628*($1); printf("Converted volume of %d cubic meter = %f tablespoon\n",$1,$$);}
  |NUMBER cubic meter to teaspoon	{$$=202884*($1); printf("Converted volume of %d cubic meter = %f teaspoon\n",$1,$$);}
  |NUMBER cubic meter to cubic meter	{$$=1*($1); printf("Converted volume of %d cubic meter = %f cubic meter\n",$1,$$);}
  |NUMBER cubic meter to litre	{$$=1000*($1); printf("Converted volume of %d cubic meter = %f litre\n",$1,$$);}
  |NUMBER cubic meter to millilitre	{$$=1000000*($1); printf("Converted volume of %d cubic meter = %f millilitre\n",$1,$$);}
  |NUMBER cubic meter to cubic foot	{$$=35.3147*($1); printf("Converted volume of %d cubic meter = %f cubic foot\n",$1,$$);}
  |NUMBER cubic meter to cubic inch	{$$=61023.7*($1); printf("Converted volume of %d cubic meter = %f cubic inch\n",$1,$$);}

  |NUMBER litre to gallon	{$$=.264172*($1); printf("Converted volume of %d litre = %f gallon\n",$1,$$);}
  |NUMBER litre to cup	{$$=4.16667*($1); printf("Converted volume of %d litre = %f cup\n",$1,$$);}
  |NUMBER litre to tablespoon	{$$=67.268*($1); printf("Converted volume of %d litre = %f tablespoon\n",$1,$$);}
  |NUMBER litre to teaspoon	{$$=202.884*($1); printf("Converted volume of %d litre = %f teaspoon\n",$1,$$);}
  |NUMBER litre to cubic meter	{$$=.001*($1); printf("Converted volume of %d litre = %f cubic meter\n",$1,$$);}
  |NUMBER litre to litre	{$$=1*($1); printf("Converted volume of %d litre = %f litre\n",$1,$$);}
  |NUMBER litre to millilitre	{$$=1000*($1); printf("Converted volume of %d litre = %f millilitre\n",$1,$$);}
  |NUMBER litre to cubic foot	{$$=.0353147*($1); printf("Converted volume of %d litre = %f cubic foot\n",$1,$$);}
  |NUMBER litre to cubic inch	{$$=61.0237*($1); printf("Converted volume of %d litre = %f cubic inch\n",$1,$$);}
   
  |NUMBER millilitre to gallon	{$$=1*($1); printf("Converted volume of %d millilitre = %f gallon\n",$1,$$);}
  |NUMBER millilitre to cup	{$$=0.000264172*($1); printf("Converted volume of %d millilitre = %f cup\n",$1,$$);}
  |NUMBER millilitre to tablespoon	{$$=0.067628*($1); printf("Converted volume of %d millilitre = %f tablespoon\n",$1,$$);}
  |NUMBER millilitre to teaspoon	{$$=0.202884*($1); printf("Converted volume of %d millilitre = %f teaspoon\n",$1,$$);}
  |NUMBER millilitre to cubic meter	{$$=.000001*($1); printf("Converted volume of %d millilitre = %f cubic meter\n",$1,$$);}
  |NUMBER millilitre to litre	{$$=0.001*($1); printf("Converted volume of %d millilitre = %f litre\n",$1,$$);}
  |NUMBER millilitre to millilitre	{$$=1*($1); printf("Converted volume of %d millilitre = %f millilitre\n",$1,$$);}
  |NUMBER millilitre to cubic foot	{$$=0.000035315*($1); printf("Converted volume of %d millilitre = %f cubic foot\n",$1,$$);}
  |NUMBER millilitre to cubic inch	{$$=0.0610237*($1); printf("Converted volume of %d millilitre = %f cubic inch\n",$1,$$);}

  |NUMBER cubic foot to gallon	{$$=7.48052*($1); printf("Converted volume of %d cubic foot = %f gallon\n",$1,$$);}
  |NUMBER cubic foot to cup	{$$=117.987*($1); printf("Converted volume of %d cubic foot = %f cup\n",$1,$$);}
  |NUMBER cubic foot to tablespoon	{$$=1915.01*($1); printf("Converted volume of %d cubic foot = %f tablespoon\n",$1,$$);}
  |NUMBER cubic foot to teaspoon	{$$=5745.04*($1); printf("Converted volume of %d cubic foot = %f teaspoon\n",$1,$$);}
  |NUMBER cubic foot to cubic meter	{$$=0.0283168*($1); printf("Converted volume of %d cubic foot = %f cubic meter\n",$1,$$);}
  |NUMBER cubic foot to litre	{$$=28.3168*($1); printf("Converted volume of %d cubic foot = %f litre\n",$1,$$);}
  |NUMBER cubic foot to millilitre	{$$=28316.8*($1); printf("Converted volume of %d cubic foot = %f millilitre\n",$1,$$);}
  |NUMBER cubic foot to cubic foot	{$$=1*($1); printf("Converted volume of %d cubic foot = %f cubic foot\n",$1,$$);}
  |NUMBER cubic foot to cubic inch	{$$=1728*($1); printf("Converted volume of %d cubic foot = %f cubic inch\n",$1,$$);}
   
  |NUMBER cubic inch to gallon 	{$$=0.004329*($1); printf("Converted volume of %d cubic foot = %f gallon\n",$1,$$);}
  |NUMBER cubic inch to cup 	{$$=0.682794*($1); printf("Converted volume of %d cubic foot = %f cup\n",$1,$$);}
  |NUMBER cubic inch to tablespoon 	{$$=1.10823*($1); printf("Converted volume of %d cubic foot = %f tablespoon\n",$1,$$);}
  |NUMBER cubic inch to teaspoon 	{$$=3.32468*($1); printf("Converted volume of %d cubic foot = %f teaspoon\n",$1,$$);}
  |NUMBER cubic inch to cubic meter 	{$$=0.000016387*($1); printf("Converted volume of %d cubic foot = %f cubic meter\n",$1,$$);}
  |NUMBER cubic inch to litre 	{$$=0.0163871*($1); printf("Converted volume of %d cubic foot = %f litre\n",$1,$$);}
  |NUMBER cubic inch to millilitre 	{$$=16.3871*($1); printf("Converted volume of %d cubic foot = %f millilitre\n",$1,$$);}
  |NUMBER cubic inch to cubic foot 	{$$=0.000578704*($1); printf("Converted volume of %d cubic foot = %f cubic foot\n",$1,$$);}
  |NUMBER cubic inch to cubic inch 	{$$=1*($1); printf("Converted volume of %d cubic foot = %f cubic inch\n",$1,$$);}

   ; 

						
%%
void yyerror(char *s){fprintf(stderr,"%s\n",s);}
int main(int argc, char *argv[]) 
{
while(1)
{
yyparse();
}

return 0;
}
