%run this for simulation plots
clear all
clc
observations=40:40:400;

BP_g_e1 = [6442 25682 57722 102562 160202 230642 313882 409922 518762 640402];
BP_g_e2 = [6442 25682 57722 102562 160202 230642 313882 409922 518762 640402];
BP_g_e3 = [6442 25682 57722 102562 160202 230642 313882 409922 518762 640402];
BP_b_e1 = [6442 25682 57722 102562 160202 230642 313882 409922 518762 640402];
BP_b_e2 = [6442 25682 57722 102562 160202 230642 313882 409922 518762 640402];
BP_b_e3 = [6442 25682 57722 102562 160202 230642 313882 409922 518762 640402];

IRLS_g_e1 = [6886 26502 58506 103558 161046 231874 315014 411154 519906 642026];
IRLS_g_e2 = [6918 26418 58326 103286 161118 231818 315322 411550 519870 642690];
IRLS_g_e3 = [7054 26578 58966 103830 161498 231978 315334 413138 521058 641910];
IRLS_b_e1 = [6866 26270 58342 103470 161282 231962 314854 411018 520598 642014];
IRLS_b_e2 = [6934 26210 58270 103502 161282 231962 314914 412098 520070 642310];
IRLS_b_e3 = [6974 26426 58786 104190 161858 232338 315718 411978 519818 642826];

IHT_g_e1 = [1173880 3942032 10816956 14381314 32562012 63262278 68173456 71382158 124070388 173657620 ];
IHT_g_e2 = [642028 2756796 6247122 16744012 31439170 34863300 44296840 78766586 101228844 100605736 ];
IHT_g_e3 = [817150 2988690 5610816 20236696 27268614 32323554 44296840 59485024 74753418 133927648];
IHT_b_e1 = [642028 3993564 9660036 15819478 28231050 27244062 49637662 153021112 106420104 140335708 ];
IHT_b_e2 = [499336 3761670 8965884 14073136 30155922 47100258 37699354 74253880 84616812 133286842 ];
IHT_b_e3 = [590140 3040222 6247122 15408574 19087908 24011658 47124334 78766586 94480206 93556870];

figure(1)
subplot(1,2,1)
plot(observations,log(BP_g_e1),'r')
hold on;
plot(observations,log(IRLS_g_e1),'g')
hold on;
plot(observations,log(IHT_g_e1),'m')
hold on
grid on
title("FLOP count vs observations comparsion of 3 algorithms (e1=-20dB)")
xlabel("observations")
ylabel("log(FLOPS)")
legend('BPgauss','IRLSgauss','IHTgauss')
subplot(1,2,2)
plot(observations,log(BP_b_e1),'r')
hold on;
plot(observations,log(IRLS_b_e1),'g')
hold on;
plot(observations,log(IHT_b_e1),'m')
hold on
grid on
title("FLOP count vs observations comparsion of 3 algorithms (e1=-20dB)")
xlabel("observations")
ylabel("log(FLOPS)")
legend('BPbern','IRLSbern','IHTbern')

figure(2)
subplot(1,2,1)
plot(observations,log(BP_g_e2),'r')
hold on;
plot(observations,log(IRLS_g_e2),'g')
hold on;
plot(observations,log(IHT_g_e2),'m')
hold on
grid on
title("FLOP count vs observations comparsion of 3 algorithms (e2=-10dB)")
xlabel("observations")
ylabel("log(FLOPS)")
legend('BPgauss','IRLSgauss','IHTgauss')
subplot(1,2,2)
plot(observations,log(BP_b_e2),'r')
hold on;
plot(observations,log(IRLS_b_e2),'g')
hold on;
plot(observations,log(IHT_b_e2),'m')
hold on
grid on
title("FLOP count vs observations comparsion of 3 algorithms (e2=-10dB)")
xlabel("observations")
ylabel("log(FLOPS)")
legend('BPbern','IRLSbern','IHTbern')


figure(3)
subplot(1,2,1)
plot(observations,log(BP_g_e3),'r')
hold on;
plot(observations,log(IRLS_g_e3),'g')
hold on;
plot(observations,log(IHT_g_e3),'m')
hold on
grid on
title("FLOP count vs observations comparsion of 3 algorithms (e3=0dB)")
xlabel("observations")
ylabel("log(FLOPS)")
legend('BPgauss','IRLSgauss','IHTgauss')
subplot(1,2,2)
plot(observations,log(BP_b_e3),'r')
hold on;
plot(observations,log(IRLS_b_e3),'g')
hold on;
plot(observations,log(IHT_b_e3),'m')
hold on
grid on
title("FLOP count vs observations comparsion of 3 algorithms (e3=0dB)")
xlabel("observations")
ylabel("log(FLOPS)")
legend('BPbern','IRLSbern','IHTbern')
