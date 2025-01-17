function visualizeEpipoleLines(F, pointsA, imgA, pointsB, imgB)
lL = cross([0 0 1], [712 0 1]);
lR = cross([0 1072 1], [712 1072 1]);
numPoints = size(pointsA,1);
% figure('Name', 'Resulting Image B');
imshow(imgB);
hold on
for i=1:numPoints
    lI = F*[pointsA(i,:) 1]';
    pIL = cross(lI, lL);
    pIR = cross(lI, lR);
    pIL2d = pIL(1,1:2)/pIL(1,3);
    pIR2d = pIR(1,1:2)/pIR(1,3);
    line([pIL2d(1,1) pIR2d(1,1)], [pIL2d(1,2) pIR2d(1,2)]);
end
hold off

% figure('Name', 'Resulting Image A'), imshow(imgA);
% hold on
% for i=1:numPoints
%     lI = F'*[pointsB(i,:) 1]';
%     pIL = cross(lI, lL);
%     pIR = cross(lI, lR);
%     pIL2d = pIL(1,1:2)/pIL(1,3);
%     pIR2d = pIR(1,1:2)/pIR(1,3);
%     line([pIL2d(1,1) pIR2d(1,1)], [pIL2d(1,2) pIR2d(1,2)]);
% end
% hold off
end