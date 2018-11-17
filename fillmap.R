fillmap<-function(map, figtitle, y , n.col, bk="e", cuts,legendtxt=""){

# map can be a SpatialPolygons object from readSPlus for GEOBUGS conversion
# eg geobugs<-readSplus("SC_geobugsSPLus.txt")

if(bk=="q"){p <- seq(0,1, length=n.col+1)
              br <- round(quantile(y, probs=p),2)}
if(bk=="e"){br <- round(seq(min(y), max(y), length=n.col+1),2)}
if(bk=="c"){if (length(cuts)!= (n.col+1)) {cat("Cut off and color categories do not match. ", "\n")
                                  break}  else {br <- cuts}  }

# 0: dark 1: light light Current shading ranges from darkest to light gray white (to distinguish with lakes).
shading<-gray((n.col-1):0/(n.col-1))
y.grp<-findInterval(y, vec=br, rightmost.closed = TRUE, all.inside = TRUE)
y.shad<-shading[y.grp]

plot(map,col=y.shad,axes=F,main=figtitle)
title(main=figtitle) 

br<-round(br, 2)


if (legendtxt=="")
{
cn<-length(y[y>=br[n.col]]) # number of regions in this intervals
 leg.txt<-paste("[",br[n.col],",",br[n.col+1],"]","(",cn,")",sep="")
for(i in (n.col-1):1){ 
cn<-length(y[(y>=br[i])&(y<=br[i+1])])
leg.txt<-append(leg.txt,paste("[",br[i],",",br[i+1],")","(",cn,")",sep="")) }
leg.txt<-rev(leg.txt)
} else {leg.txt<-legendtxt}

legend("bottomleft",legend=leg.txt,fill=shading,cex=0.7,ncol=1,bty="o")


}
