load('radden_prot.dat');
load('radden_rna.dat');
load('radden_mg.dat');
load('radden_cl.dat');

hold on
plot(radden_prot(:,1),radden_prot(:,2),'r')
  plot(radden_rna(:,1),radden_rna(:,2),'g')
  plot(radden_mg(:,1),radden_mg(:,2),'b')
  plot(radden_cl(:,1),radden_cl(:,2),'k')
hold off



