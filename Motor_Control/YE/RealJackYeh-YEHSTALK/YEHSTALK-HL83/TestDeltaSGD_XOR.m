clear all
% 訓練資料
X = [ 0 0 1;
      0 1 1;
      1 0 1;
      1 1 1;
    ];
D = [0
     1
     1
     0];
W = 2 * rand(1, 3) - 1; % 使用-1～1間的隨機數初始化權重
E1 = zeros(1000, 1);
N = 4;
for epoch = 1:1000 % 訓練1000次，即 epoch＝10000
    es1 = 0;
    W = DeltaSGD(W, X, D);
    for k=1:N
        x = X(k,:)';
        d = D(k);
        v1 = W * x;
        y1 = Sigmoid(v1);
        es1 = es1 + (d-y1)^2;
    end
    E1(epoch) = es1/N;
end
% 測試訓練後的神經網路
for k = 1:N
    x = X(k,:)';
    v = W*x;
    y = Sigmoid(v)
end
plot(E1, 'r')
xlabel('Epoch')
ylabel('Average of Training error')
legend('SGD')

