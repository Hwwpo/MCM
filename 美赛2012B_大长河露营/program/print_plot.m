clc, clear;
hour = [9.38,	8.04,	7.03,	6.25,	5.63,	5.11,	4.69,	4.33,	4.02,	3.75,	3.52,	3.31,	3.13;
        4.69,	4.02,	3.52,	3.13,	2.81,	2.56,	2.34,	2.16,	2.01,	1.88,	1.76,	1.65,	1.56;];
x_1 = [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18];
line = [4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4];
plot(x_1, hour, '-*', 'LineWidth', 2);
xlabel('day');
ylabel('hour');
hold on;
plot(x_1, line, 'k--');
legend('oar', 'motor');

figure;
y_14 = poisspdf(x_1, 14);
y_7 = poisspdf(x_1, 7);
tiledlayout(2, 1);

ax14 = nexttile;
plot(ax14, x_1, y_14, 'LineWidth', 2);
ylabel('P(k|14)');

ax7 = nexttile;
plot(ax7, x_1, y_7, 'LineWidth', 2);
ylabel('P(k|7)');

y = y_14 ./ sum(y_14) * 217;

figure;
t = [6, 9, 12, 15, 18];
k_1 = [19, 12, 9, 7, 6];
plot(t, k_1, 'r-*','LineWidth', 2);
xlabel('t');
ylabel('k_1');

figure;
Y = [40, 60, 90, 130, 180];
k_1 = [4, 6, 9, 12, 17];
plot(Y, k_1, 'r-*','LineWidth', 2);
xlabel('Y');
ylabel('k_1');

figure;
a = 1:1:12;
b_W_a = 150 ./ (5 + a);
c_W_a = floor(b_W_a) * 5;
plot(a, c_W_a);
xlabel('a');
ylabel('W');

figure;
a = 1:1:12;
b_P_a = floor(150 ./ (5 + a));
c_P_a = 0.2 - b_P_a / 150;
plot(a, c_P_a, 'r-', 'LineWidth', 2);
xlabel('a');
ylabel("P");

figure;
Y = 30:5:300;
b_W_Y = floor(Y ./ 5);
plot(Y, b_W_Y, 'LineWidth', 2);
xlabel('Y');
ylabel('W');

figure;
Y = 30:5:300;
b_P_Y = (floor(Y ./ 5) - floor(Y ./ 6)) ./ Y;
plot(Y, b_P_Y);
xlabel('Y');
ylabel('P');

