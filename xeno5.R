XENO1<-merge(XENOO, XENOFOBIA3, all.x=TRUE)
options(scipen=999)
miss9<-!is.na(XENO1$`Migrantes`)
par(bty="o")
plot(XENO1$FECHA[miss9], XENO1$`Migrantes`[miss9], col="red", type="l", lwd=2,
     xlab="", ylab="", yaxt="n", cex.axis = 0.5,mgp = c(2, 0.2, 0))
axis(2,at=pretty(range(XENO1$Migrantes)),cex.axis=0.5, las=2)
title(ylab="Promedio de índice \nde búsqueda de 'migrantes'", line=2, cex.lab=0.7)
XENOO$CUCUTA<-FALSE
XENOO$CUCUTA[165]<-TRUE

XENOO$FECHA[165]
XENOO$CUCUTA
abline(v=XENOO$FECHA[XENOO$CUCUTA[TRUE]], col="blue")

title(main = "Promedio de interés de búsqueda \nde 'migrantes'", cex.main=1)
legend("topright",inset=c(0.505,0.001),bty = "n",legend =c("Quema de rucos en Iquique"),col = c("blue"), lty=c(1,2),xpd=FALSE, cex = 0.5)
mtext("Fuente: Google Trends", side = 1, line =1 , cex = 0.4, adj = 1) 

