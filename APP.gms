SETS
    h habilidades /h1*h3/
    i productos /i1*i3/
    k materias primas /k1*k5/
    p proveedores /p1*p6/
    t trimestrs /t1*t4/
;

$ontext
    i1=cola i2=jugo i3=limonada (1unid = 1 botella de 300ml)
    k1=agua         (L)
    k2=azucar       (Kg)
    k3=ga.carbónico (L)
    k4=ac.citrico   (L)
    k5=pulpa        (Kg)
$offText




PARAMETERS
NIPT(i) Inventario inicial de producto terminado i
    /i1=208796
     i2=102698
     i3= 38113/
     
NMT(k) Inventario inicial de materias primas k
    /k1=220000
     k2=2200
     k3=15000
     k4=200
     k5=250/


    
LAP(i) Capacidad de almacenamiento de producto i
    /i1=400000
     i2=150000
     i3= 50000/
     
LAK(k) Capacidad de almacenamiento de materia prima k
    /k1=300000
     k2=  3000
     k3= 18000
     k4=   300
     k5=   350/



GHGP(i)  Emision (Kg)de gases de efecto invernadero por la producción de una unidad de i
    /i1=0.0479
     i2=0.0479
     i3=0.0479/
    
GHGSB(i) Emision (Kg)de gases de efecto invernadero por la subcontratación de una unidad de i
    /i1=0.0058
     i2=0.0058
     i3=0.0058/

GHGMP(k) Emision (Kg)de gases de efecto invernadero por almacenar una unidad materia prima k
    /k1=0.0579
     k2=0.0579
     k3=0.0579
     k4=0.0579
     k5=0.0579/
 
GHGPT(i) Emision (Kg)de gases de efecto invernadero por almacenar una unidad de i
    /i1=0.0058
     i2=0.0058
     i3=0.0058/



RP(p) Puntaje de ponderación de proveedor p
    /p1=0.139
     p2=0.115
     p3=0.152
     p4=0.188
     p5=0.187
     p6=0.219/
 



FTini(h) Fuerza de trabajo inicial de trabajadores con habilidad h
    /h1=1000
     h2= 250
     h3= 100/

FTmin(h) Fuerza de trabajo minima de trabajadores con habilidad h
    /h1= 500
     h2=  50
     h3=  10/

FTmax(h) Fuerza de trabajo maxima de trabajadores con habilidad h
    /h1=1500
     h2= 500
     h3= 250/
     


HN(t) Horas máximas de tiempo normal en el trimestre t
    /t1=208
     t2=208
     t3=208/
     
HEmax(t) Horas máximas de tiempo extra en el trimestre t
    /t1=78
     t2=78
     t3=78/
;







TABLE
D(i,t) Demanda de producto terminado i en el trimestre t
        t1          t2          t3          t4
i1      15296181    20343160    23206355    13824774    
i2       7812561    10169900     1249179     7854910
i3       2452971     3271535     3320635     2036530
;

TABLE
TCK(i,k) tasa de consumo de materias primas k en cada producto i
        k1      k2      k3      k4      k5
i1      0.2     0.015   0.008  0.00006  0.05     
i2      0.2     0.015   0.008  0.00006  0.05
i3      0.2     0.015   0.008  0.00006  0.05 
;

TABLE
CP(i,t) Costo de producir una botella de i en el trimestre t
        t1      t2      t3      t4
i1      46.91   47.79   48.75   49.78
i2      46.91   47.79   78.75   49.78
i3      46.91   47.79   78.75   49.78
;


TABLE
CNP(i,t) Costo de inventario de una botella de i en el trimestre t
        t1      t2      t3      t4
i1      0.53    0.64    0.44    0.33
i2      0.53    0.64    0.44    0.33
i3      0.53    0.64    0.44    0.33
;

TABLE
CBOP(i,t) Costo de faltante (backorder) de botella de i en el trimestre t
        t1      t2      t3      t4
i1      53.75   54.78   55.88   56.99
i2      53.75   54.78   55.88   56.99
i3      53.75   54.78   55.88   56.99
;


TABLE
CS(i,t) Costo de subcontratar una unidad de producto terminado i en el trimestre t
        t1      t2      t3      t4
i1      159     162     165     168
i2      159     162     165     168
i3      159     162     165     168
;


TABLE
CC(h,t) Costo de contratar un trabajador de habilidad h en el trimestre t
        t1      t2      t3      t4
h1      183015  182250  181226  182520
h2      182643  183600  181698  182520
h3      181032  181440  181720  181980
;


TABLE
CD(h,t) Costo de despedir un trabajador de habilidad h en el trimestre t
        t1      t2      t3      t4
h1      233015  232250  231226  232520
h2      232643  233600  231698  232520
h3      231032  231440  231720  231980
;


TABLE
CTR(h,t) Costo por HORA REGULAR de un trabajador de habilidad h en el trimestre t
        t1      t2      t3      t4
h1      636     636     636     636
h2      732     732     732     732
h3      878     878     878     878
;


TABLE
CE(h,t) Costo por HORA EXTRA de un trabajador de habilidad h en el trimestre t
        t1      t2      t3      t4
h1      763     763     763     763
h2      920     920     920     920
h3      1099    1099    1099    1099
;


TABLE
CNK(k,t) Costo de mantener una unidad de materia prima k en el trimestre t
        t1      t2      t3      t4
k1      0.6     0.6     0.6     0.6  
k2      6       6       6       6
k3      20      20      20      20
k4      20      20      20      20
k5      200     200     200     200
;

TABLE
CK(k,p,t)   Costo de comprar una unidad de materia prima k al proveedor  p en el trimestre t
            t1      t2      t3      t4
k1.p1       1100    1100    1100    1100    
k2.p1       1700    1700    1700    1700
k3.p1       2500    2500    2500    2500   
k4.p1       2400    2400    2400    2400    
k5.p1       1900    1900    1900    1900    

k1.p2       1300    1300    1300    1300    
k2.p2       1800    1800    1800    1800
k3.p2       2400    2400    2400    2400   
k4.p2       2450    2450    2450    2450    
k5.p2       1800    1800    1800    1800

k1.p3       1250    1250    1250    1250
k2.p3       1850    1850    1850    1850
k3.p3       2500    2500    2500    2500
k4.p3       2550    2550    2550    2550
k5.p3       1950    1950    1950    1950

k1.p4       1200    1200    1200    1200
k2.p4       1750    1750    1750    1750
k3.p4       2600    2600    2600    2600
k4.p4       2500    2500    2500    2500
k5.p4       1750    1750    1750    1750

k1.p5       1150    1150    1150    1150
k2.p5       1650    1650    1650    1650
k3.p5       2500    2500    2500    2500
k4.p5       2450    2450    2450    2450
k5.p5       2000    2000    2000    2000

k1.p6       1200    1200    1200    1200
k2.p6       1900    1900    1900    1900
k3.p6       2350    2350    2350    2350
k4.p6       2500    2500    2500    2500
k5.p6       1900    1900    1900    1900
;

TABLE
LS(i,t) Limite maximo de botellas de producto i a subcontratar en el trimestre t
        t1          t2          t3          t4
i1      1835542     2441179     2031216     1369777
i2       937507     1220388     1070518      716130
i3       294356     392584       332486      220346
;

TABLE
HPH(h,i) Horas productivas del trabajador de habilidad h necesarias para una unidad de i
        i1          i2          i3
h1      0.001088    0.001088    0.001088
h2      0.00075     0.00075     0.00075
h3      0.00055     0.00055     0.00055
;




*VARIABLES DE DECISIÓN
INTEGER VARIABLES

X(i,t)      Cantidad de botellas de producto i producido en el trimestre t
IX(i,t)     Cantidad de inventario de botellas de i al final del trimestre t
B(i,t)      Cantidad de faltantes (backorder) de botellas de i en el trimestre t
SX(i,t)     Cantidad de botellas de producto i a subcontratar en el trimestre t

M(k,p,t)    Cantidad de materia prima k comprada en el trimestre t al proveedor p
IM(k,t)     Cantidad de materia prima K en inventario al final del trimestre t

TC(h,t)     Cantidad de trabajadores de habilidad h a CONTRATAR en el trimestre t
TD(h,t)     Cantidad de trabajadores de habilidad h a DESPEDIR  en el trimestre t
TU(h,t)     Cantidad de trabajadores de habilidad h a UTILIZAR  en el trimestre t

HE(h,t)     Cantidad de HORAS EXTRA a usar de los trabajadores de habilidad h en el trimestre t
;


*VARIABLES DE LAS FUNCIONES OBJETIVO
VARIABLES
CostoTotal          Valor de la función objetivo para costos
PuntajeCompras      Valor de la función objetivo para compras ponderadas
EmisionHuella       Valor de la función objetivo para huella de carbono
;



EQUATIONS
FOcostos            Función objetivo para minimizar costos
FOcomprasPond       Función objetivo para maximizar compras ponderadas
FOhuellaCarb        Función objetivo para minimizar huella de carbono
DemaPT(i,t)         Demanda de producto i en cada trimestre t
DemaMP(k,t)         Demanda de materia prima k en cada trimestre t
InvIniPT(i)         Balance inicial de inventario de producto terminado i
InvIniMP(k)         Balance inicial de inventario de materia prima k
CapacAlmacPT(i,t)   Capacidad maxima de almacenar producto terminado i en el trimestre t
CapacAlmacMP(k,t)   Capacidad maxima de almacenar materia prima i en el trimestre t
HEmaximas(h,t)      Horas extra máximas permitidas en el trimestre t
FuerTrabNece(h,t)   Fuerza de trabajadores necesaria de habilidad h en eltrimestre t    
BalanTrabaj(h,t)    Balance entre trabajadores de habilidad h utilizados contratados y despedidos     
TrabInic(h)         Balance entre trabajadores de habilidad h iniciales contratados y despedidos 
TrabMax(h,t)        Fuerza laboral maxima de trabajadores de habilidad h     
TrabMin(h,t)        Fuerza laboral minima de trabajadores de habilidad h           
;

*FUNCIONES OBJETIVO
FOcostos..       CostoTotal =E= sum((i,t),CP(i,t)*X(i,t)   + CBOP(i,t)*B(i,t) + CNP(i,t)*IX(i,t))+
                            sum((h,t),CC(h,t)*TC(h,t)  + CD(h,t)*TC(h,t))  +
                            sum((h,t),CTR(h,t)*TU(h,t) + CE(h,t)*TU(h,t))  +
                            sum((k,t),CNK(k,t)*IM(k,t)+ sum(p, CK(k,p,t)*M(k,p,t)))
;
FOcomprasPond..  PuntajeCompras =E= sum(p,RP(p)*sum((k,t),M(k,p,t)))
;
FOhuellaCarb..   EmisionHuella  =E= sum(i,GHGP(i) *sum(t,X(i,t)))  +
                                    sum(i,GHGSB(i)*sum(t,SX(i,t))) +
                                    sum(k,GHGMP(k)*sum(t,IM(k,t))) +
                                    sum(i,GHGPT(i)*sum(t,X(i,t)))
;



*RESTRICCIONES
DemaPT(i,t)$(ord(t) > 1)..          X(i,t) - IX(i,t-1)+ IX(i,t) + SX(i,t)=E= D(i,t) - B(i,t)
;

DemaMP(k,t)$(ord(t) > 1)..          IM(k,t-1) - sum(i, X(i,t)* TCK(i,k)) + sum(p, M(k,p,t)) =E= IM(k,t) 
;

InvIniPT(i)..                       X(i,'t1') + NIPT(i)- IX(i,'t1')  =E= D(i,'t1') + B(i,'t1')
;

InvIniMP(k)..                       NMT(k) - IM(k,'t1') + sum(p, M(k,p,'t1')) =E= sum(i, X(i,'t1')* TCK(i,k))
;

CapacAlmacPT(i,t)..                 IX(i,t) =L= LAP(i)
;

CapacAlmacMP(k,t)..                 IM(k,t) =L= LAK(k)
;

HEmaximas(h,t)..                    HE(h,t) =L= HEmax(t)
;

FuerTrabNece(h,t)..                 sum(i,HPH(h,i) * X(i,t)) =L= TU(h,t)* HN(t) + FTmax(h)* HE(h,t)
;

BalanTrabaj(h,t)$(ord(t) > 1)..     TU(h,t) =E= TC(h,t) - TD(h,t) + TU(h,t-1)
;

TrabInic(h)..                       TU(h,'t1') =E= TC(h,'t1') - TD(h,'t1') + FTmin(h)
;

TrabMax(h,t)..                      TU(h,t) =G= FTmin(h)
;

TrabMin(h,t)..                      TU(h,t) =L= FTmax(h)
;



MODEL Planeacion_Agregada /all/;

*SOLVE Planeacion_Agregada USING mip MINIMIZING CostoTotal;
*sOLVE Planeacion_Agregada USING mip MAXIMIZING PuntajeCompras;
*SOLVE Planeacion_Agregada USING mip MINIMIZING EmisionHuella;



DISPLAY X.l, IX.L, B.L, SX.L, M.L, IM.L, TC.L, TD.L, TU.L, HE.L, PuntajeCompras.L, CostoTotal.L, EmisionHuella.L;