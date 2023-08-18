%run this for simulation plots
clc
clear all
observations=40:40:400;
BP_g_e1=[3.047746	1.572134	1.721502	1.797653	2.595698	3.233522	4.514469	6.535219	9.75251	11.341883];
BP_g_e2=[1.101724	1.299695	1.372776	1.963568	2.784798	3.204729	4.090965	6.568993	7.82707	11.677297];
BP_g_e3=[1.15997	1.2061	1.37049	1.711367	2.085942	2.934602	4.169071	5.794501	7.617442	13.090466];
BP_b_e1=[1.135533	1.235696	1.521995	1.80756	2.307853	3.210997	4.477926	6.227347	8.70908	13.72307];
BP_b_e2=[1.655643	1.626443	1.868761	2.042634	2.486385	3.345045	4.603735	7.040342	10.116725	11.683295];
BP_b_e3=[1.475922	1.310133	1.872261	1.977891	2.456593	3.463599	4.913661	6.958221	10.831295	14.09309];

IRLS_g_e1=[0.145165	0.825985	1.965588	4.721251	7.740772	16.760845	26.321586	39.896877	52.80761	97.718065];
IRLS_g_e2=[0.143016	0.761097	1.602424	3.732032	8.26653	18.056301	33.290976	52.656102	55.460161	131.248527];
IRLS_g_e3=[0.206235	0.968087	3.065556	6.119244	11.947136	21.218545	34.179641	97.042501	98.938931	97.794574];
IRLS_b_e1=[0.126354	0.687846	1.814427	4.801363	12.366254	16.635292	25.447405	38.820163	85.596736	101.209826];
IRLS_b_e2=[0.165377	0.569089	1.52754	4.713948	9.701761	19.404312	26.108007	71.428983	60.882305	113.75863];
IRLS_b_e3=[0.161284	0.821655	2.666214	7.694236	14.273474	24.650973	42.449939	64.827282	51.844468	140.064367];


IHT_g_e1=[0.040987	0.016009	0.025503	0.030256	0.0539	0.102861	0.195431	0.14147	0.173286	0.211916];
IHT_g_e2=[0.004333	0.009124	0.01233	0.036163	0.041677	0.037391	0.049663	0.113279	0.193556	0.147257];
IHT_g_e3=[0.004905	0.010843	0.013962	0.033865	0.0496	0.034524	0.054954	0.082972	0.077678	0.185933];
IHT_b_e1=[0.005783	0.020151	0.0421	0.060211	0.066806	0.059232	0.073735	0.177557	0.154086	0.223641];
IHT_b_e2=[0.003475	0.016975	0.022515	0.02917	0.044017	0.058373	0.04418	0.071454	0.101006	0.251085];
IHT_b_e3=[0.005467	0.01459	0.019209	0.030244	0.028211	0.042358	0.058256	0.126053	0.18211	0.158289];

figure(1)
subplot(1,2,1)
plot(observations,BP_g_e1,'r')
hold on;
plot(observations,IRLS_g_e1,'g')
hold on;
plot(observations,IHT_g_e1,'m')
hold on
grid on
title("Recovery time vs observations comparsion of 3 algorithms (e1=-20dB)")
xlabel("observations")
ylabel("Recovery time(sec)")
legend('BPgauss','IRLSgauss','IHTgauss')
subplot(1,2,2)
plot(observations,BP_b_e1,'r')
hold on;
plot(observations,IRLS_b_e1,'g')
hold on;
plot(observations,IHT_b_e1,'m')
hold on
grid on
title("Recovery time vs observations comparsion of 3 algorithms (e1=-20dB)")
xlabel("observations")
ylabel("Recovery time(sec)")
legend('BPbern','IRLSbern','IHTbern')

figure(2)
subplot(1,2,1)
plot(observations,BP_g_e2,'r')
hold on;
plot(observations,IRLS_g_e2,'g')
hold on;
plot(observations,IHT_g_e2,'m')
hold on
grid on
title("Recovery time vs observations comparsion of 3 algorithms (e2=-10dB)")
xlabel("observations")
ylabel("Recovery time(sec)")
legend('BPgauss','IRLSgauss','IHTgauss')
subplot(1,2,2)
plot(observations,BP_b_e2,'r')
hold on;
plot(observations,IRLS_b_e2,'g')
hold on;
plot(observations,IHT_b_e2,'m')
hold on
grid on
title("Recovery time vs observations comparsion of 3 algorithms (e2=-10dB)")
xlabel("observations")
ylabel("Recovery time(sec)")
legend('BPbern','IRLSbern','IHTbern')


figure(3)
subplot(1,2,1)
plot(observations,BP_g_e3,'r')
hold on;
plot(observations,IRLS_g_e3,'g')
hold on;
plot(observations,IHT_g_e3,'m')
hold on
grid on
title("Recovery time vs observations comparsion of 3 algorithms (e3=0dB)")
xlabel("observations")
ylabel("Recovery time(sec)")
legend('BPgauss','IRLSgauss','IHTgauss')
subplot(1,2,2)
plot(observations,BP_b_e3,'r')
hold on;
plot(observations,IRLS_b_e3,'g')
hold on;
plot(observations,IHT_b_e3,'m')
hold on
grid on
title("Recovery time vs observations comparsion of 3 algorithms (e3=0dB)")
xlabel("observations")
ylabel("Recovery time(sec)")
legend('BPbern','IRLSbern','IHTbern')
