c <- data.frame(read.csv("/Users/silva/Documents/isi/papers/2014/workflow/data/algorithms.csv"))

c$alg <- factor (c$alg, levels = c("HRB","HIFB","HDB","HC","DFJS*","AFJS*"))

pdf(file="/Users/silva/Documents/isi/papers/2014/workflow/figures/results/algorithms.pdf", height=4)

ggplot(c, aes(x=app, y=gain, fill=alg)) + geom_bar(position="dodge", stat="identity", order=c("HRB","HIFB","HDB","HC","DFJS*","AFJS*")) + scale_fill_brewer(type = "qual", palette = 8, limits=c("HRB","HIFB","HDB","HC","DFJS*","AFJS*"), name="") + geom_errorbar(aes(ymax = gain + error, ymin=gain - error), position=position_dodge(.9), width=.4) + xlab("") + theme(legend.position="bottom", legend.text=element_text(size=9), axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10)) + ylab(expression(paste(mu,' %')))

dev.off()


#####################################################

c <- data.frame(read.csv("/Users/silva/Documents/isi/papers/2014/workflow/data/datasize.csv"))
 
c$alg <- factor (c$alg, levels = c("HRB","HIFB","HDB","HC"))
c$size <- factor (c$size, levels = c("5 MB","50 MB","100 MB","250 MB","400 MB","500 MB"))

setEPS()
postscript(file="/Users/silva/Documents/isi/papers/2014/workflow/figures/results/datasize.eps", height=4)

ggplot(c, aes(x=size, y=gain, fill=alg)) + geom_bar(position="dodge", stat="identity") + scale_fill_brewer(type = "qual", palette = 8, limits=c("HRB","HIFB","HDB","HC"), name="") + geom_errorbar(aes(ymax = gain + error, ymin=gain - error), position=position_dodge(.9), width=.4) + xlab("") + theme(legend.position="bottom", legend.text=element_text(size=9), axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10)) + ylab(expression(paste(mu,' %')))

dev.off()


#####################################################

c <- data.frame(read.csv("/Users/silva/Documents/isi/papers/2014/workflow/data/resource5.csv"))
 
c$alg <- factor (c$alg, levels = c("HRB","HIFB","HDB","HC"))
c$vms <- factor (c$vms, levels = c("5","10","15","20","25"))

setEPS()
postscript(file="/Users/silva/Documents/isi/papers/2014/workflow/figures/results/resource5.eps", height=4)

ggplot(c, aes(x=vms, y=gain, fill=alg)) + geom_bar(position="dodge", stat="identity") + scale_fill_brewer(type = "qual", palette = 8, limits=c("HRB","HIFB","HDB","HC"), name="") + geom_errorbar(aes(ymax = gain + error, ymin=gain - error), position=position_dodge(.9), width=.4) + xlab("Number of VMs") + theme(legend.position="bottom", legend.text=element_text(size=9), axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10)) + ylab(expression(paste(mu,' %')))

dev.off()


#####################################################

c <- data.frame(read.csv("/Users/silva/Documents/isi/papers/2014/workflow/data/vc_ligo.csv"))
 
c$alg <- factor (c$alg, levels = c("HRB","HIFB","HDB","HC","VC-only"))
c$vc <- factor (c$vc, levels = c("VC-prior","VC-only","VC-posterior","No-VC"))

setEPS()
postscript(file="/Users/silva/Documents/isi/papers/2014/workflow/figures/results/vc_ligo.eps", height=4)

ggplot(c, aes(x=alg, y=gain, fill=vc)) + geom_bar(position="dodge", stat="identity") + scale_fill_brewer(type = "qual", palette = 8, limits=c("VC-prior","VC-posterior","No-VC","VC-only"), name="") + geom_errorbar(aes(ymax = gain + error, ymin=gain - error), position=position_dodge(.9), width=.4) + xlab("") + theme(legend.position="bottom", legend.text=element_text(size=9), axis.title.x=element_text(size=10), axis.title.y=element_text(size=10), axis.text.x=element_text(size=10), axis.text.y=element_text(size=10)) + ylab(expression(paste(mu,' %')))

dev.off()