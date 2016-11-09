### CODE FOR LOOPED PARAFIT ANALYSIS

library(ape)

## READ IN ALL PARASITE TREES
p.trees <- read.nexus('brueelia_100.tre')


## LOOP TO ROOT AND TRIM ALL PARASITE TREES
p.trees.root = NULL
p.trees.noout = NULL
p.trees.trim1 = NULL
p.trees.trim = NULL
for (i in 1:length(p.trees)) {
		p.trees.root[[i]] <- root(p.trees[[i]], c("Chsp.Orcan.11.10.2001.9","Oxchi.1.27.1999.6"))
		p.trees.noout[[i]] <- drop.tip(p.trees.root[[i]], c("Pasp.Arast.2.10.1999.7", "Pclau.11.22.2001.13","Tssp.Psbre.10.16.2002.6","Ffpal.11.22.2001.14","Qkeos.5.16.2002.5","Nylon.2.6.1999.6","Racol.1.27.1999.2","Raful.2.6.1999.11","Alsp.Hamal.1.16.2001.11","Veber.10.17.2000.7","Qupun.2.3.1999.2","Salar.4.7.1999.12","Afdup.3.16.2001.10","Oscur.10.5.1999.2","Wiabs.10.5.1999.1","Cabid.6.29.1998.2","Phcub.9.29.1998.7","Gosp.Phcol.11.10.2001.2","Sgorb.11.10.2001.10","Brsp.Psmin.2.1.2000.9","Pezum.1.12.1999.10","Ppsp.Sppus.11.10.2001.11","Ausub.1.27.1999.12","Dgcar.9.8.1999.7","Embra.2.4.2002.11","Chsp.Orcan.11.10.2001.9","Oxchi.1.27.1999.6","Nseos.11.22.2001.15","Foana.1.27.1999.7","Fosp.Thdol.4.7.1999.10"))
		p.trees.trim1[[i]] <- drop.tip(p.trees.noout[[i]], c("Brsp.Sphsp.12.11.2011.14","Brsp.Hecas.12.11.2011.4","Brsp.Hypmcc.12.11.2011.6","Brsp.Hirus.4.16.2013.6","Brgr.2.9.2011.37","Brgra.Deurb.1.23.2012.3","Brsp.Hidau.10.25.2011.9","Brsp.Cahae.10.12.1999.9","Brsp.Door.6.13.2006.13","BrspAgpho326201238B","Bror.8.29.2011.16","Bror.8.29.2011.10","BrspIcgal326201240","Brsp.Moate.3.24.2001.3","Brxan.Xaxan.10.30.2012.5","Brsp.Lapur.8.31.2011.7","Brsp.Euar.1.25.2011.5","Brsp.Mecru.11.28.2011.1","BrspStmag326201247","Brsp.Pail.5.30.2012.17","Brvu.6.27.2006.28","Brsp.Meme.8.29.2011.8","Brsp.Amne.8.16.2011.3","Brsp.Spar.9.14.2011.3","Brsp.Zoal.6.27.2006.19","Brst.8.29.2011.15","Brbla.Emsch.1.23.2012.4","Brsp.Getr.8.16.2011.13","Brsp.Seau.9.14.2011.1","Bril.5.30.2012.19","BrspApcal32620122","Brili.Tumig.10.30.2012.8","Brsp.Seca.2.9.2011.29","Brsp.Capi.8.16.2011.6","Brsp.Plru.11.15.2010.17","Brsp.Panig.1.12.1999.11","Brsp.Pesu.2.9.2011.38","Brsp.Larh.5.30.2012.5","BrspLoleu42820125","BrspLostr326201233","Brsp.Crre.11.29.2010.16","Brsp.Orau.11.29.2010.15","Brsp.Orau.4.5.2011.3","Brsp.Orla.5.30.2012.18","Brsp.Spvir.12.13.2011.12","Brsp.Cipun.12.16.2011.4","Brsp.Comel.11.8.2011.1","BrspMefra420201219","Pnsp.Memys.1.15.2000.15","Stsp.Tuli.12.21.2011.24","Snsim.Tumig.8.12.2013.10","Stsp.Negu.12.21.2011.13","Brsp.Tuchr.1.23.2012.6","Brsp.Cafr.6.13.2006.4","Stsp.Hymu.6.13.2006.11","Stsp.Hymu.6.13.2006.8","Stsp.Euar.12.21.2011.8","Stsp.Euar.5.30.2012.12","Stsp.Eual.12.21.2011.6"))
		p.trees.trim[[i]] <- drop.tip(p.trees.trim1[[i]], c("Stsp.Eu.5.30.2012.11","Stsp.Plve.12.21.2011.19","Stsp.Ploc.5.30.2012.9","Brsp.Urery.12.13.2011.3","Brsp.Gytib.05.30.2012.12","Brsp.Stgra.05.30.2012.09","Brsp.Stgra.9.6.2011.4","Brsp.Gytib.12.13.2011.10","Brsp.Crarg.12.13.2011.8","Brsp.Crquo.5.30.2012.2","Brla.Aulpr.9.28.2011.6","Brla.Anni.9.28.2011.1","Brsp.Aude.9.14.2011.10","Brlat.1.17.2000.15","Brla.9.14.2011.9","BrspLipho420201225","BrspDihot420201210","BrspDibal42820122","BrspDileu415201231","Brsp.Prpl.4.5.2011.18","Brsp.Cina.2.9.2011.26","BrspPagul42020122","Brsp.Ststr.10.4.2011.7","BrspNabre415201222","Brsp.Poruf.12.11.2011.12","Brsp.Lafu.4.5.2011.16","Brsp.Laae.11.29.2010.18","Brsp.Phalb.9.6.2011.11","Brsp.Blexi.8.31.2011.9","Brsp.Nichl.11.8.2011.8","Brsp.Nepoe.11.8.2011.3","Brsp.Blsyn.11.8.2011.5","Brsp.Crbar.11.8.2011.4","Brsp.Angra.11.8.2011.7", "Brsp.Blcan.9.6.2011.12", "Brsp.Phict.4.16.2012.5","Brsp.Manit.4.16.2012.8","Brsp.Drcu.4.5.2011.14","Brsp.Lafe.11.29.2010.21","Brsp.Vacur.9.6.2011.7","Brsp.Phfl.2.9.2011.27","Brsp.Plcy.5.30.2012.8","Brsp.Baso.5.30.2012.7","Brsp.Myar.4.5.2011.17","Brsp.Tesu.2.9.2011.33","Brsp.Tcse.1.25.2011.14","Brsp.Mabl.1.25.2011.10","Brsp.Bema.4.5.2011.20","Brcl.8.16.2011.8","Brsp.Mycol.11.28.2011.11","Brsp.Almor.10.4.2011.9","BrspCyban415201219","BrspSafer420201215","BrspSafer420201216","Brsp.Pyino.12.11.2011.11","BrspRhful41520124","Brsp.Cucey.10.4.2011.12","Brsp.Rhnig.7.14.1999.11", "Brsp.Paele.7.14.1999.3", "Brsp.Fitri.10.4.2011.14","BrspTepar41520126","BrspRhful41520125","Brsp.Sifro.7.14.1999.1", "Brsp.Coca.1.25.2011.7","BrspTepar41520127","Brsp.Post.2.9.2011.34","Brsp.Brci.4.5.2011.1","Brsp.Coan.1.25.2011.2","Brsp.Ersh.1.25.2011.16","BrspFizan415201225","Brsp.Alfu.2.9.2011.31","Brsp.Pacya.4.16.2012.2","Brsp.Pesig.11.28.2011.3","Brsp.Chpap.11.28.2011.6","Brsp.Seper.4.16.2012.1","Brsp.Senoh.9.6.2011.10","Brsp.Coluz.10.25.2011.16","Brsp.Cyma.10.15.2012.23","Brsp.Cyma.8.16.2011.10","BrspCimag121620117","Brsp.Parag.12.16.2011.2","Brsp.Psoli.05.30.2012.11","Brsp.Aicra.9.6.2011.1","Brsp.Melew.05.21.2012.08","Brsp.Aicra.8.31.2011.2","Brsp.Papec.9.6.2011.3","Brsp.Papec.05.21.2012.07","Brsp.Lipen.05.21.2012.06","Brsp.Chnuc.12.13.2011.6","Brsp.Chnuc.11.28.2011.10","Brsp.Chnuc.05.30.2012.06","Brsp.Chnuc.05.30.2012.07","Brsp.Melew.05.30.2012.10","Brsp.Cohar.8.31.2011.4","Brsp.Fafro.05.21.2012.01","Brsp.Clpic.8.31.2011.3","Brsp.Hyphi.10.25.2011.11","BrspHyleu415201211","Brsp.Hyphi.7.14.1999.7","Brsp.Pygoa.11.8.2011.10","Brsp.Zolun.05.30.2012.08","Brsp.Zolun.8.31.2011.6","Brsp.Zohei.9.6.2011.9","Trsp.Trmel.5.4.1999.5","Brsp.Seno.9.14.2011.2","Brze.6.13.2006.7","Bran.6.13.2006.1","Bran.6.27.2006.30","Brsp.Cafu.6.27.2006.31","Brze.6.27.2006.29","Brsp.Cami.6.13.2006.5","Brsp.Deca.8.16.2011.11","Brze.6.13.2006.10","Brsp.Cafu.6.13.2006.2","Brsp.Cafu.6.13.2006.6"))
 		p.trees.trim[[i]]
}



## READ IN HOST TREES
h.trees <- read.nexus('hosts.tre')

## LOOP TO ROOT AND REMOVE OUTGROUPS FROM ALL HOST TREES
h.trees.root = NULL
h.trees.noout = NULL
for (i in 1:length(h.trees)) {
		h.trees.root[[i]] <- root(h.trees[[i]], 'Gallus_gallus')
		h.trees.noout[[i]] <- drop.tip(h.trees.root[[i]], 'Gallus_gallus')
		h.trees.noout[[i]]
}


## ASSOCIATION MATRIX	
brueelia_mx <- as.matrix(read.table('HP_Matrix.txt', header=T))

## CONVERT TO TREES TO PATRISTIC DISTANCE MATRICES AND RUN PARAFIT
p.pats = NULL
h.pats = NULL
for (i in 1:length(p.trees.trim) {  ## NOTE: FOR MULTIPLE RUNS, USE E.G. 1:25, 26:50, ETC. AND RUN SEPARATELY
		p.pats[[i]] <- as.matrix(cophenetic(p.trees.trim[[i]]))
		h.pats[[i]] <- as.matrix(cophenetic(h.trees.noout[[i]]))
     	h.pats[[i]] <- h.pats[[i]][rownames(brueelia_mx), rownames(brueelia_mx)]
		p.pats[[i]] <- p.pats[[i]][colnames(brueelia_mx), colnames(brueelia_mx)]
		brpf <- parafit(h.pats[[i]], p.pats[[i]], brueelia_mx, nperm=999, test.links=TRUE, correction='cailliez')
		myfile <- file(paste0('Brueelia_parafit_run',i,'.txt'))
		sink(myfile, split=T)
		print(brpf)
		sink()
		close(myfile)
}


