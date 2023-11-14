% خواندن تصویر
imagePath = 'gol.jpg'; % مسیر تصویر خود را وارد کنید
originalImage = imread(imagePath);

% حرکت تصویر به سمت راست
shiftAmount = 100; % میزان حرکت مورد نظر خود را وارد کنید
shiftedRightImage = circshift(originalImage, [0, shiftAmount]);

% حرکت تصویر به سمت چپ
shiftedLeftImage = circshift(originalImage, [0, -shiftAmount]);

% نمایش تصاویر
figure;
subplot(1, 3, 1);
imshow(originalImage);
title('تصویر اصلی');

subplot(1, 3, 2);
imshow(shiftedRightImage);
title(['حرکت به سمت راست (' num2str(shiftAmount) ' پیکسل)']);

subplot(1, 3, 3);
imshow(shiftedLeftImage);
title(['حرکت به سمت چپ (' num2str(shiftAmount) ' پیکسل)']);
