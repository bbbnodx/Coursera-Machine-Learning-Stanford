function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% norm2にデータ点と重心点とのノルムを保存する
% norm2: m x K 行列とし、min関数で最も近い重心点を探す
% 実際の計算では行列に対するmin関数が列ごとに実行されるため、
% 転置をとってnorm2を求め、minを実行した後に転置して戻す
norm2 = [];
for j=1:size(centroids, 1),
    dist = (X - centroids(j, :))';
    norm2 = [norm2; dot(dist, dist)];
endfor;

[temp, idx] = min(norm2);
idx = idx';



% =============================================================

end

