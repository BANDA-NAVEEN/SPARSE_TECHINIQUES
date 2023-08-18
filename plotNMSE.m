%run this for simulation plots
clear all
clc
observations = 40:40:400;
BP_g_e1 = [0.00987197	0.003610695	0.002451389	0.001595249	0.0039578   0.001133276	0.003706948	0.000551757	0.001023373	0.000783762];
BP_g_e2 = [0.042829739	0.032104174	0.020131792	0.016618767	0.026741091	0.008035299	0.014847644	0.004458567	0.008433859	0.006469067];
BP_g_e3 = [0.817105408	0.137416	0.088541248	0.071712803	0.158726036	0.110576449	0.062906114	0.075316047	0.043564278	0.042319784];
BP_b_e1 = [0.001353486	0.002054374	0.002948508	0.001769965	0.001768458	0.002911221	0.004820924	0.002127119	0.001449144	0.001120645];
BP_b_e2 = [0.010373594	0.010113299	0.019398464	0.01161909	0.010080609	0.025042592	0.033914344	0.013959065	0.012253583	0.007949979];
BP_b_e3 = [0.193795896	0.089716715	0.117215055	0.097663918	0.11345601	0.121657747	0.144160624	0.071299993	0.047964626	0.047004947];


IRLS_g_e1 = [0.005275097	0.001389588	0.000929417	0.000577697	0.000627851	0.000346027	0.000398678	0.000363903	0.000296555	0.000265435];
IRLS_g_e2 = [0.025623764	0.016344767	0.011214981	0.006542961	0.005645122	0.003285131	0.00418456	0.002505826	0.003394761	0.002620996];
IRLS_g_e3 = [1.27413244	0.110329693	0.070878712	0.072267693	0.076367718	0.053765126	0.06332655	0.04869101	0.034691472	0.022835944];
IRLS_b_e1 = [0.001711649	0.000987545	0.001076498	0.000590965	0.000642326	0.000483841	0.000408053	0.000356445	0.000394926	0.000268184];
IRLS_b_e2 = [0.010185814	0.01297402	0.010500695	0.006223799	0.004348454	0.004823939	0.004778648	0.004245317	0.002895627	0.002865563];
IRLS_b_e3 = [0.156334299	0.114758095	0.151955206	0.074140146	0.086546717	0.049149989	0.05793944	0.051634583	0.035334718	0.033150795];

 
IHT_g_e1 = [0.000993912	0.000595475	0.000208564	0.000121874	0.000181516	6.96E-05	7.53E-05	7.83E-05	5.70E-05	5.17E-05];
IHT_g_e2 = [0.012881171	0.016146332	0.16516047	0.001469936	0.002412946	0.164879621	0.059777821	0.000540291	0.000990549	0.000698679];
IHT_g_e3 = [0.503729765	0.125918528	0.255771983	0.035014496	0.074040629	0.225432846	0.053377222	0.167318458	0.136218487	0.015264757];
IHT_b_e1 = [0.113872138	0.000164118	0.043436593	0.000183672	0.000222006	0.284690518	0.106554591	5.87E-05	5.23E-05	4.88E-05];
IHT_b_e2 = [0.062931079	0.014720644	0.038541158	0.003314397	0.002069955	0.00128887	0.169278415	0.001786356	0.001072811	0.000931876];
IHT_b_e3 = [0.177654869	0.087837709	0.091920437	0.064984237	0.144434226	0.240032021	0.14230812	0.076794922	0.041538958	0.053862545];


figure(1)
plot(observations,BP_g_e1,'r')
hold on;
plot(observations,BP_g_e2,'g')
hold on;
plot(observations,BP_g_e3,'k')
hold on 
grid on
title("BP-NMSE vs observations of gaussian entries")
xlabel("observations")
ylabel("NMSE")
legend('e1=-20dB','e2=-10dB','e3=0dB')

figure(2)
plot(observations,BP_b_e1,'r')
hold on;
plot(observations,BP_b_e2,'g')
hold on;
plot(observations,BP_b_e3,'k')
hold on 
grid on
title("BP-NMSE vs observations of bernoulli entries")
xlabel("observations")
ylabel("NMSE")
legend('e1=-20dB','e2=-10dB','e3=0dB')

figure(3)
plot(observations,IRLS_g_e1,'r')
hold on;
plot(observations,IRLS_g_e2,'g')
hold on;
plot(observations,IRLS_g_e3,'k')
hold on 
grid on
title("IRLS-NMSE vs observations of gaussian entries")
xlabel("observations")
ylabel("NMSE")
legend('e1=-20dB','e2=-10dB','e3=0dB')
 
figure(4)
plot(observations,IRLS_b_e1,'r')
hold on;
plot(observations,IRLS_b_e2,'g')
hold on;
plot(observations,IRLS_b_e3,'k')
hold on 
grid on
title("IRLS-NMSE vs observations of bernoulli entries")
xlabel("observations")
ylabel("NMSE")
legend('e1=-20dB','e2=-10dB','e3=0dB')

figure(5)
plot(observations,IHT_g_e1,'r')
hold on;
plot(observations,IHT_g_e2,'g')
hold on;
plot(observations,IHT_g_e3,'k')
hold on 
grid on
title("IHT-NMSE vs observations of gaussian entries")
xlabel("observations")
ylabel("NMSE")
legend('e1=-20dB','e2=-10dB','e3=0dB')

figure(6)
plot(observations,IHT_b_e1,'r')
hold on;
plot(observations,IHT_b_e2,'g')
hold on;
plot(observations,IHT_b_e3,'k')
hold on 
grid on
title("IHT-NMSE vs observations of bernoulli entries")
xlabel("observations")
ylabel("NMSE")
legend('e1=-20dB','e2=-10dB','e3=0dB')


figure(7)
subplot(1,2,1)
plot(observations,BP_g_e1,'r')
hold on;
plot(observations,IRLS_g_e1,'g')
hold on;
plot(observations,IHT_g_e1,'k')
hold on
grid on
title("NMSE vs observations comparsion of 3 algorithms (e1=-20dB)")
xlabel("observations")
ylabel("NMSE")
legend('BPgauss','IRLSgauss','IHTgauss')
subplot(1,2,2)
plot(observations,BP_b_e1,'r')
hold on;
plot(observations,IRLS_b_e1,'g')
hold on;
plot(observations,IHT_b_e1,'k')
hold on
grid on
title("NMSE vs observations comparsion of 3 algorithms (e1=-20dB)")
xlabel("observations")
ylabel("NMSE")
legend('BPbern','IRLSbern','IHTbern')

figure(8)
subplot(1,2,1)
plot(observations,BP_g_e2,'r')
hold on;
plot(observations,IRLS_g_e2,'g')
hold on;
plot(observations,IHT_g_e2,'k')
hold on
grid on
title("NMSE vs observations comparsion of 3 algorithms (e2=-10dB)")
xlabel("observations")
ylabel("NMSE")
legend('BPgauss','IRLSgauss','IHTgauss')
subplot(1,2,2)
plot(observations,BP_b_e2,'r')
hold on;
plot(observations,IRLS_b_e2,'g')
hold on;
plot(observations,IHT_b_e2,'k')
hold on
grid on
title("NMSE vs observations comparsion of 3 algorithms (e2=-10dB)")
xlabel("observations")
ylabel("NMSE")
legend('BPbern','IRLSbern','IHTbern')


figure(9)
subplot(1,2,1)
plot(observations,BP_g_e3,'r')
hold on;
plot(observations,IRLS_g_e3,'g')
hold on;
plot(observations,IHT_g_e3,'k')
hold on
grid on
title("NMSE vs observations comparsion of 3 algorithms (e3=0dB)")
xlabel("observations")
ylabel("NMSE")
legend('BPgauss','IRLSgauss','IHTgauss')
subplot(1,2,2)
plot(observations,BP_b_e3,'r')
hold on;
plot(observations,IRLS_b_e3,'g')
hold on;
plot(observations,IHT_b_e3,'k')
hold on
grid on
title("NMSE vs observations comparsion of 3 algorithms (e3=0dB)")
xlabel("observations")
ylabel("NMSE")
legend('BPbern','IRLSbern','IHTbern')
