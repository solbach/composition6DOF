function Xplus = comp(X1, X2)
    
    % Calculate new x-Position 
    result(1) = X1(1) + X2(1) * cos(X1(5)) * cos(X1(6)) - ...
                X2(2) * cos(X1(5)) * sin(X1(6)) + ...
                X2(3) * sin(X1(5));
    
	% Calculate new y-Position 
    result(2) = X1(2) + X2(1) * ( sin(X1(4)) * sin(X1(5)) * cos(X1(6)) +...
                cos(X1(4)) * sin(X1(6)) ) + ...
                X2(2) * ( -sin(X1(4)) * sin(X1(5)) * sin(X1(6)) + ...
                cos(X1(4)) * cos(X1(6)) ) + ...
                X2(3) * -sin(X1(4)) * cos(X1(5));
    
	% Calculate new z-Position 
    result(3) = X1(3) + X2(1) * ( -cos(X1(4)) * sin(X1(5)) * cos(X1(6))+...
                sin(X1(4)) * sin(X1(6)) ) + ...
                X2(2) * ( cos(X1(4)) * sin(X1(5)) * sin(X1(6)) + ...
                sin(X1(4)) * cos(X1(6)) ) + ...
                X2(3) * cos(X1(4)) * cos(X1(5));
    
	% Calculate new roll-Position 
    result(4) = X1(4) + X2(4);
    
    % Calculate new pitch-Position 
    result(5) = X1(5) + X2(5);
    
    % Calculate new yaw-Position 
    result(6) = X1(6) + X2(6);
    
    Xplus = result;

end