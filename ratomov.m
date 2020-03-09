import java.awt.Robot;
import java.awt.event.*;
robot = Robot;

% 5s later, move the mouse to point (640,640) where the 'go' button is,
% then click it.
pause(5);
robot.mouseMove(1000, 500);
robot.mousePress(InputEvent.BUTTON1_MASK);
robot.mouseRelease(InputEvent.BUTTON1_MASK);
% fill in the code to start ETG 4000 here

% 5s later, press key SHIFT and W at the same time
%pause(5);
robot.keyPress(java.awt.event.KeyEvent.VK_SHIFT)
robot.keyPress(java.awt.event.KeyEvent.VK_R)
robot.keyRelease(java.awt.event.KeyEvent.VK_R)
robot.keyRelease(java.awt.event.KeyEvent.VK_SHIFT)