% ファイル1読み込み
filename = 'ICtip_large_0deg_all_td.csv';
M= readmatrix(filename);
% 転置(行と列入れ替え)
B = M.';
R = rmmissing(B);

% ファイル2読み込み
fn = 'mirrorsample_large_0deg_td.csv';
M2 = readmatrix(fn);
M= readmatrix(filename);
% 転置(行と列入れ替え)
B2 = M2.';
R2 = rmmissing(B2);

% グラフ作成
figure(1);
xlabel('Time[psec]');
ylabel('Time Domain[V]');
hold on;

plot(R(:,1), R(:,2), 'LineWidth', 2);
plot(R2(:,1), R2(:,2), 'LineWidth', 1);

legend('IC chip', 'background')

