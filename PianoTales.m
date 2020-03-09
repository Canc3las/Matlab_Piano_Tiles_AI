clear all
close all
%clear all the values
%----------------------
%used to move the mouse
import java.awt.Robot;
import java.awt.event.*;
robot = Robot;

%%
while true
imageData = screencapture(0,  [900,550,320,250]); %gets the image from the game
%converts the image from RGB to HSV
game=rgb2hsv(imageData);
%Split the 3 chanel from the image
H=game(:,:,1);
S=game(:,:,2);
V=game(:,:,3);
%get the colour black using the HSV values
bwHblack = roicolor(H,(0/255),(255/255));
bwSblack= roicolor(S,(0/255),(255/255));
bwVblack = roicolor(V,(0/255),(1/255));
bwBLACK =(bwHblack.*bwSblack.*bwVblack);%final image bwBLACK
%get the connected components from the image
cc1 = bwconncomp(bwBLACK);
%gets the centroid of those components
rp1 = regionprops(cc1, 'Centroid');
%if there is some black object on the image
if cc1.NumObjects>=1
    
    %moves the mouse to that position and click it
robot.mouseMove(rp1(1).Centroid(1)+900,rp1(1).Centroid(2)+250);
robot.mousePress(InputEvent.BUTTON1_MASK);
robot.mouseRelease(InputEvent.BUTTON1_MASK);
end
%do it again
end