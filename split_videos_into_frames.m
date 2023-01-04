clc; clear; clear all;

a=VideoReader('campus_muhendislik_fakultesi.mp4');
get(a)

a=VideoReader('campus_muhendislik_fakultesi.mp4');
for img = 1:a.NumberOfFrames;
filename=strcat('frame',num2str(img),'.jpg');
b = read(a, img);
imwrite(b,filename);
end