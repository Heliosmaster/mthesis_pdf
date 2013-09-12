clear all; close all;
figure(1);

A = dlmread('iter_dfl.txt');

plot(0:10,A(1,:)/A(1,1)); hold on;
plot(0:10,A(2,:)/A(2,1),'-r');
plot(0:10,A(3,:)/A(3,1),'-g');
plot(0:10,A(4,:)/A(4,1),'-k');
plot(0:10,A(5,:)/A(5,1),'-m');
axis([0 10 0 2]);
xlabel('iteration');
ylabel('communication volume (normalized w.r.t. iteration 0)');
title('dfl001');
legend('pa\_row','pa\_col','pa\_simple','pa\_is\_1','pa\_is\_3','Location','NorthWest');

figure(2);

A = dlmread('iter_delaunay.txt');
plot(0:10,A(1,:)/A(1,1)); hold on;
plot(0:10,A(2,:)/A(2,1),'-r');
plot(0:10,A(3,:)/A(3,1),'-g');
plot(0:10,A(4,:)/A(4,1),'-k');
plot(0:10,A(5,:)/A(5,1),'-m');
axis([0 10 0 2]);
xlabel('iteration');
ylabel('communication volume (normalized w.r.t. iteration 0)');
title('delaunay\_n15');
legend('pa\_row','pa\_col','pa\_simple','pa\_is\_1','pa\_is\_3','Location','NorthWest');

figure(3);

A = dlmread('iter_nug30.txt');

plot(0:10,A(1,:)/A(1,1)); hold on;
plot(0:10,A(2,:)/A(2,1),'-r');
plot(0:10,A(3,:)/A(3,1),'-g');
plot(0:10,A(4,:)/A(4,1),'-k');
plot(0:10,A(5,:)/A(5,1),'-m');
axis([0 10 0 2]);
xlabel('iteration');
ylabel('communication volume (normalized w.r.t. iteration 0)');
title('nug30');
legend('pa\_row','pa\_col','pa\_simple','pa\_is\_1','pa\_is\_3','Location','NorthWest');


figure(4);

A = dlmread('iter_bcs.txt');
plot(0:10,A(1,:)/A(1,1)); hold on;
plot(0:10,A(2,:)/A(2,1),'-r');
plot(0:10,A(3,:)/A(3,1),'-g');
plot(0:10,A(4,:)/A(4,1),'-k');
plot(0:10,A(5,:)/A(5,1),'-m');
axis([0 10 0 2]);
xlabel('iteration');
ylabel('communication volume (normalized w.r.t. iteration 0)');
title('bcsstk30');
legend('pa\_row','pa\_col','pa\_simple','pa\_is\_1','pa\_is\_3','Location','NorthWest');


figure(5);

A = dlmread('iter_tbdlinux.txt');

plot(0:10,A(1,:)/A(1,1)); hold on;
plot(0:10,A(2,:)/A(2,1),'-r');
plot(0:10,A(3,:)/A(3,1),'-g');
plot(0:10,A(4,:)/A(4,1),'-k');
plot(0:10,A(5,:)/A(5,1),'-m');
axis([0 10 0 2]);
xlabel('iteration');
ylabel('communication volume (normalized w.r.t. iteration 0)');
title('tbdlinux');
legend('pa\_row','pa\_col','pa\_simple','pa\_is\_1','pa\_is\_3','Location','NorthWest');

print(1,'-depsc','-r300','img/iter_dfl.eps');
print(2,'-depsc','-r300','img/iter_delaunay.eps');
print(3,'-depsc','-r300','img/iter_nug30.eps');
print(4,'-depsc','-r300','img/iter_bcs.eps');
print(5,'-depsc','-r300','img/iter_tbdlinux.eps');

