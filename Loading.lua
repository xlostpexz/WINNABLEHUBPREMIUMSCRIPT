local f=string.byte;local r=string.char;local c=string.sub;local s=table.concat;local B=math.ldexp;local u=getfenv or function()return _ENV end;local l=setmetatable;local h=select;local t=unpack;local i=tonumber;local function F(t)local e,o,a="","",{}local d=256;local n={}for l=0,d-1 do n[l]=r(l)end;local l=1;local function f()local e=i(c(t,l,l),36)l=l+1;local o=i(c(t,l,l+e-1),36)l=l+e;return o end;e=r(f())a[1]=e;while l<#t do local l=f()if n[l]then o=n[l]else o=e..c(e,1,1)end;n[d]=e..c(o,1,1)a[#a+1],e,d=o,o,d+1 end;return table.concat(a)end;local i=F('23F27423F21O27525W23723V23O26723727425X23F22J23F25F27525X22Z27I27122Z27425Y27E23F26627E26Z25Z27525Q27427X1B27B25Q1B23F26Z25W22R27B26722R27F23F21N23F26427525S22B28B22B27426422328B22327F22R27I28C27F21V26Z23F26721V27425S27A27C27T25T23726J29029723726329B27425T22Z27Q26727Q23F25T23F25N29027529H27Q26029L25S1R28B1R28O1J27B25C1J29G29I23F29U27425W28327C28623F29427B25E29C23V29F2A726Z28B28Z29M28D2902AQ27G28V27L23729J27T27928B27T27G22Z23E26727525Y22B22J2B428N27X22J28427I26Z25Y22R22323E25D28D27X22Z28427Q2BG23721N2BK27W27Y27428028725Z21V28429226Z25S2AB2672AD26429527S2742652BO29029L25G25V28B25V2CC2AQ28W29M27H29Q29G2AW2AK25Z25728B25728727S1R23E2622BV27Z2812C02C22CY2231B2BK28S27X28L23O25Q2BB27S26Z2D12D32BX2D52BO2DF2BQ27S26J2BU2BZ2D42BZ2C12DF2C32C528B2C82CA27T2CD2AJ29K27425G24R28B24R2CL2742CN29N2AU2CR2AX27425Z2DE2672BB2AF2962CR25N23E26529C2572B429C24R2EX27426023V28B2AJ2AP29J2AS27T26327T22T27523D23J2751S1Q1M1U23D27T23F21E1821J1K1Q1V1U1V2FL27521E1L181F1Q1L1O2FK23C2751L1U1C23D23G27521I1U18181Q1S2FK2362751C1K191G181B1Q2G42FE27521B1U131F23D21E2752181Q1I1F1I1L1S22J2FH2FJ22J1F1K22J1N2FR2FT1V22J1P1U1T2GO1U22J181O191I1B1F1822J1I2HZ2GJ1F2H72H922J2GY1U1O1E1F2FU2HM1222J2182H81L1Q1P1N2HR21F1E1P23D23H2752FQ2FS2FU2GV2742H42H62GB27521R2GF1F191K122IX23F1C2H51F2752JE22N21N23D2352752HI2FS2G02HV2H92J127421F2I41B21O1U2H022I2751J2JT1821T22C22C2GS2G01U1P2H822D1O1K1M22C191Q1C22C2151D1O1Y1X1Y1O1T2JQ23F2171N2GT1U21E1V27526321425Y27324F21M2751B22O1026V23V2L627422323U21525723K21M23D21L2JZ2K12K32KF2KH22D1S2H61J2IP1E181U192KC1L2IC2M22KB2KD22C132HI2G01B2GY1122C1P1T2GS1I1V22C21P1B1822C2IU1V2H81S22D1N1E1Q27524B24C25622R23X2LD28724T22C25923W2N326J26Y21524S2LC2L724A26H26H23N2LK2LM2742K01F2MM2LP2KG1C2LS2LU2LW2LY2M01K2M21U2M42KC2KE2M81K2MA2MC22C1G1N2MH2MJ2ML2MN2MP2MR2MT2MV2KS2KU1Q122LZ1823D2342IT1K1O1Q1N2OK2OM192J921C1I1O1G23D2382GD1Q1B22J21H1K1F22J2141E1B1B2GO2JD');local n=bit and bit.bxor or function(l,o)local e,n=1,0 while l>0 and o>0 do local a,c=l%2,o%2 if a~=c then n=n+e end l,o,e=(l-a)/2,(o-c)/2,e*2 end if l<o then l=o end while l>0 do local o=l%2 if o>0 then n=n+e end l,e=(l-o)/2,e*2 end return n end local function l(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local e=1;local function o()local l,o,c,a=f(i,e,e+3);l=n(l,123)o=n(o,123)c=n(c,123)a=n(a,123)e=e+4;return(a*16777216)+(c*65536)+(o*256)+l;end;local function d()local l=n(f(i,e,e),123);e=e+1;return l;end;local function J()local e=o();local o=o();local c=1;local n=(l(o,1,20)*(2^32))+e;local e=l(o,21,31);local l=((-1)^l(o,32));if(e==0)then if(n==0)then return l*0;else e=1;c=0;end;elseif(e==2047)then return(n==0)and(l*(1/0))or(l*(0/0));end;return B(l,e-1023)*(c+(n/(2^52)));end;local a=o;local function F(l)local o;if(not l)then l=a();if(l==0)then return'';end;end;o=c(i,e,e+l-1);e=e+l;local e={}for l=1,#o do e[l]=r(n(f(c(o,l,l)),123))end return s(e);end;local e=o;local function f(...)return{...},h('#',...)end local function C()local t={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local e={};local c={};local a={t,nil,e,nil,c};for l=1,o()do e[l-1]=C();end;for a=1,o()do local c=n(o(),174);local o=n(o(),164);local n=l(c,1,2);local e=l(o,1,11);local e={e,l(c,3,11),nil,nil,o};if(n==0)then e[3]=l(c,12,20);e[5]=l(c,21,29);elseif(n==1)then e[3]=l(o,12,33);elseif(n==2)then e[3]=l(o,12,32)-1048575;elseif(n==3)then e[3]=l(o,12,32)-1048575;e[5]=l(c,21,29);end;t[a]=e;end;local l=o()local o={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};for n=1,l do local e=d();local l;if(e==3)then l=(d()~=0);elseif(e==0)then l=J();elseif(e==2)then l=F();end;o[n]=l;end;a[2]=o a[4]=d();return a;end;local function J(l,e,i)local n=l[1];local e=l[2];local o=l[3];local l=l[4];return function(...)local a=n;local n=e;local e=o;local c=l;local F=f local e=1;local d=-1;local s={};local r={...};local f=h('#',...)-1;local l={};local o={};for l=0,f do if(l>=c)then s[l-c]=r[l+1];else o[l]=r[l+1];end;end;local l=f-c+1 local l;local c;while true do l=a[e];c=l[1];if c<=16 then if c<=7 then if c<=3 then if c<=1 then if c>0 then if o[l[2]]then e=e+1;else e=e+l[3];end;else o[l[2]]=i[n[l[3]]];end;elseif c>2 then local h;local F;local r;local f;local s;local c;o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=a[e];o[l[2]]=n[l[3]];e=e+1;l=a[e];o[l[2]]=i[n[l[3]]];e=e+1;l=a[e];c=l[2];s={};f=0;r=c+l[3]-1;for l=c+1,r do f=f+1;s[f]=o[l];end;F={o[c](t(s,1,r-c))};r=c+l[5]-2;f=0;for l=c,r do f=f+1;o[l]=F[f];end;d=r;e=e+1;l=a[e];o[l[2]][n[l[3]]]=n[l[5]];e=e+1;l=a[e];o[l[2]]=i[n[l[3]]];e=e+1;l=a[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=a[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[n[l[5]]];e=e+1;l=a[e];c=l[2];s={};f=0;r=c+l[3]-1;for l=c+1,r do f=f+1;s[f]=o[l];end;o[c](t(s,1,r-c));d=c;e=e+1;l=a[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[n[l[5]]];else local h;local f;local i;local r;local c;o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=a[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=a[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[n[l[5]]];e=e+1;l=a[e];o[l[2]]=n[l[3]];e=e+1;l=a[e];c=l[2];i={};f=0;h=c+l[3]-1;for l=c+1,h do f=f+1;i[f]=o[l];end;o[c](t(i,1,h-c));d=c;end;elseif c<=5 then if c>4 then if(o[l[2]]==n[l[5]])then e=e+1;else e=e+l[3];end;else do return end;end;elseif c==6 then e=e+l[3];else local e=l[2];local c={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;c[n]=o[l];end;o[e](t(c,1,l-e));d=e;end;elseif c<=11 then if c<=9 then if c==8 then local c=l[2];local e=o[l[3]];o[c+1]=e;o[c]=e[n[l[5]]];else local c;local s,c;local r;local f;local h;local B;local c;o[l[2]]=i[n[l[3]]];e=e+1;l=a[e];c=l[2];B=o[l[3]];o[c+1]=B;o[c]=B[n[l[5]]];e=e+1;l=a[e];o[l[2]]=n[l[3]];e=e+1;l=a[e];c=l[2];h={};f=0;r=c+l[3]-1;for l=c+1,r do f=f+1;h[f]=o[l];end;s,r=F(o[c](t(h,1,r-c)));r=r+c-1;f=0;for l=c,r do f=f+1;o[l]=s[f];end;d=r;e=e+1;l=a[e];c=l[2];h={};f=0;r=d;for l=c+1,r do f=f+1;h[f]=o[l];end;s={o[c](t(h,1,r-c))};r=c+l[5]-2;f=0;for l=c,r do f=f+1;o[l]=s[f];end;d=r;e=e+1;l=a[e];o[l[2]]();d=c;e=e+1;l=a[e];e=e+l[3];end;elseif c>10 then local n=l[2];local c={};local e=0;local a=d;for l=n+1,a do e=e+1;c[e]=o[l];end;local c={o[n](t(c,1,a-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else o[l[2]][n[l[3]]]=n[l[5]];end;elseif c<=13 then if c==12 then if(o[l[2]]~=n[l[5]])then e=e+1;else e=e+l[3];end;else o[l[2]][n[l[3]]]=n[l[5]];end;elseif c<=14 then o[l[2]]=o[l[3]][n[l[5]]];elseif c>15 then o[l[2]]();d=A;else local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=F(o[n](t(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif c<=25 then if c<=20 then if c<=18 then if c>17 then do return end;else e=e+l[3];end;elseif c==19 then o[l[2]]();d=A;else if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=22 then if c==21 then o[l[2]]=o[l[3]][n[l[5]]];else local c;local s,c;local r;local f;local h;local B;local c;o[l[2]]=i[n[l[3]]];e=e+1;l=a[e];c=l[2];B=o[l[3]];o[c+1]=B;o[c]=B[n[l[5]]];e=e+1;l=a[e];o[l[2]]=n[l[3]];e=e+1;l=a[e];c=l[2];h={};f=0;r=c+l[3]-1;for l=c+1,r do f=f+1;h[f]=o[l];end;s,r=F(o[c](t(h,1,r-c)));r=r+c-1;f=0;for l=c,r do f=f+1;o[l]=s[f];end;d=r;e=e+1;l=a[e];c=l[2];h={};f=0;r=d;for l=c+1,r do f=f+1;h[f]=o[l];end;s={o[c](t(h,1,r-c))};r=c+l[5]-2;f=0;for l=c,r do f=f+1;o[l]=s[f];end;d=r;e=e+1;l=a[e];o[l[2]]();d=c;e=e+1;l=a[e];e=e+l[3];end;elseif c<=23 then if(o[l[2]]==n[l[5]])then e=e+1;else e=e+l[3];end;elseif c==24 then local e=l[2];local c={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;c[n]=o[l];end;o[e](t(c,1,l-e));d=e;else o[l[2]]=n[l[3]];end;elseif c<=29 then if c<=27 then if c>26 then local n=l[2];local c={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;c[e]=o[l];end;local c,l=F(o[n](t(c,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else local n=l[2];local c={};local e=0;local a=n+l[3]-1;for l=n+1,a do e=e+1;c[e]=o[l];end;local c={o[n](t(c,1,a-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;elseif c>28 then local c;local s,c;local r;local f;local h;local B;local c;o[l[2]]=i[n[l[3]]];e=e+1;l=a[e];c=l[2];B=o[l[3]];o[c+1]=B;o[c]=B[n[l[5]]];e=e+1;l=a[e];o[l[2]]=n[l[3]];e=e+1;l=a[e];c=l[2];h={};f=0;r=c+l[3]-1;for l=c+1,r do f=f+1;h[f]=o[l];end;s,r=F(o[c](t(h,1,r-c)));r=r+c-1;f=0;for l=c,r do f=f+1;o[l]=s[f];end;d=r;e=e+1;l=a[e];c=l[2];h={};f=0;r=d;for l=c+1,r do f=f+1;h[f]=o[l];end;s={o[c](t(h,1,r-c))};r=c+l[5]-2;f=0;for l=c,r do f=f+1;o[l]=s[f];end;d=r;e=e+1;l=a[e];o[l[2]]();d=c;e=e+1;l=a[e];o[l[2]]=i[n[l[3]]];e=e+1;l=a[e];o[l[2]]=o[l[3]][n[l[5]]];e=e+1;l=a[e];if(o[l[2]]~=n[l[5]])then e=e+1;else e=e+l[3];end;else local c=l[2];local e=o[l[3]];o[c+1]=e;o[c]=e[n[l[5]]];end;elseif c<=31 then if c>30 then o[l[2]]=n[l[3]];else if(o[l[2]]~=n[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=32 then o[l[2]]=i[n[l[3]]];elseif c==33 then local n=l[2];local c={};local e=0;local a=d;for l=n+1,a do e=e+1;c[e]=o[l];end;local c={o[n](t(c,1,a-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;else local n=l[2];local a={};local e=0;local c=n+l[3]-1;for l=n+1,c do e=e+1;a[e]=o[l];end;local c={o[n](t(a,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=c[e];end;d=l;end;e=e+1;end;end;end;return J(C(),{},u())();
