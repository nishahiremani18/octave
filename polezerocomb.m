 clc ; 
 clear ; 
 close all ;
 w = -2* pi :0.01:2* pi;
 w1 = pi /4;
 w2 = -pi /4;
 a = 0.5;
 r = 1;
 z = r* exp (1 i .* w);

 H1 = (1 -(0.5.* exp (1 i .* w1 )) .*(1./ z)) .*(1 -(0.5.* exp (1 i .* w2 )) .*(1./ z)) ;
 H2 = (1 -(2.* exp (1 i .* w1 )) .*(1./ z)) .*(1 -(2.* exp (1 i .* w2 ) ) .*(1./ z) );
 H3 = (1 -(0.5.* exp (1 i .* w1 )) .*(1./ z)) .*(1 -(2.* exp (1 i .* w2 )) .*(1./ z));
 H4 = (1 -(2.* exp (1 i .* w1 )) .*(1./ z)) .*(1 -(0.5.* exp (1 i .* w2 )) .*(1./ z));

 % 2D Pole - Zero Representation of Reciprocal Conjugate Signals .
 subplot (2 ,2 ,1)
 zplane ([1 , -(1/ sqrt (2) ) ,0.25] ,[1 ,0 ,0]) ;
 subplot (2 ,2 ,2)
 zplane ([1 , -(2* sqrt (2) ) ,4] ,[1 ,0 ,0]) ;
 subplot (2 ,2 ,3)
 zplane ([1 , -((5 -3 i) /(2* sqrt (2) )) ,1] ,[1 ,0 ,0]) ;
 subplot (2 ,2 ,4)
 zplane ([1 , -((5 -3 i) /(2* sqrt (2) )) ,1] ,[1 ,0 ,0]) ;
 figure ;
 zplane ([1 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,( -( a) .^10) ] ,[1 , - a ]) ;
 title (’COMB FILTER ’);