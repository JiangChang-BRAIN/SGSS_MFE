0function sorted_matrix = sort_rows(matrix)
    [num_rows, num_cols] = size(matrix);
    sorted_matrix = zeros(num_rows, num_cols);

    for i = 1:num_rows
        % 对当前行进行排序，并记录原始数据的列位置
        [~, sorted_indices] = sort(matrix(i, :), 'descend'); % 指定降序排列
        sorted_matrix(i, :) = sorted_indices - 1;
    end
end
