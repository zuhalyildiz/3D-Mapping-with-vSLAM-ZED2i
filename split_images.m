clc; clear; clear all;

for i=1:2
    x{i} = imread(sprintf('frame%d.jpg',i));
end


for n=1:2
rgbImage = x{n};
[rows, columns, numberOfColorChannels] = size(rgbImage);
middleRow = round(rows/2);
middleColumn = round(columns/2);
viewLeft{n} = rgbImage(1:end, 1:middleColumn, :);
viewRight{n} = rgbImage(1:end, middleColumn + 1 : end, :);

imwrite(viewLeft{n},sprintf('left%d.jpg',n))
imwrite(viewRight{n},sprintf('right%d.jpg',n))

end
