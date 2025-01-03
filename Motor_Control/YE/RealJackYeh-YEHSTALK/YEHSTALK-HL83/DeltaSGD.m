function W = DeltaSGD(W, X, D)
    alpha = 0.9; % 學習率
    N = 4; % 訓練資料數
    for k = 1:N
        x = X(k, :)'; % 每筆輸入的行向量
        d = D(k);  % 每筆標準答案
        v = W * x; % 計算神經元加權和
        y = Sigmoid(v); % 加權和進入Sigmoid激活函數
        e = d - y; % 計算輸出誤差
        delta = y * (1-y) * e; % 計算增量 delta
        dW = alpha * delta * x; % 計算權重更新量
        % 更新權重
        W(1) = W(1) + dW(1);
        W(2) = W(2) + dW(2);
        W(3) = W(3) + dW(3);
    end
end

