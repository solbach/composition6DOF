function [Xtrans Jac1] = trans(X)
%   This function calculates the 3D transformation.
%   Note:   p is the translation vector (easy as it gets)
%           n, o and a are the column vector of the 3D Rotation Matrix.
%           Have a look on the pdf in the "doc" subfolder for more details.

    p = [ X(1); X(2); X(3); 1];

    n = [ cos(X(5))*cos(X(6)); ... 
          sin(X(4))*sin(X(5))*cos(X(6))+cos(X(4))*sin(X(6)); ...
          -cos(X(4))*sin(X(5))*cos(X(6))+sin(X(4))*sin(X(6)); ...
          0];
    
    o = [ -cos(X(5))*sin(X(6)); ... 
          -sin(X(4))*sin(X(5))*sin(X(6))+cos(X(4))*cos(X(6)); ...
          cos(X(4))*sin(X(5))*cos(X(6))+sin(X(4))*cos(X(6)); ...
          0];
      
    a = [ sin(X(5)); ... 
          -sin(X(4))*cos(X(5)); ...
          cos(X(4))*cos(X(5)); ...
          0];

    Xtrans = [n o a p];
    
    
     if nargout > 1
         Jac1 = [ ...
                [ 0, 0, 0, 0, -cos(X(6))*sin(X(5)), -cos(X(5))*sin(X(6))]
                [ 0, 0, 0, cos(X(4))*cos(X(6))*sin(X(5)) - sin(X(4)) ... 
                    *sin(X(6)),  cos(X(6))*cos(X(5))*sin(X(4)), ... 
                    cos(X(4))*cos(X(6)) - sin(X(4))*sin(X(6))*sin(X(5))]
                [ 0, 0, 0, cos(X(4))*sin(X(6)) + cos(X(6))*sin(X(4)) ... 
                    *sin(X(5)), -cos(X(4))*cos(X(6))*cos(X(5)), ... 
                    cos(X(6))*sin(X(4)) + cos(X(4))*sin(X(6))*sin(X(5))]
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, sin(X(6))*sin(X(5)), -cos(X(6))*cos(X(5))]
                [ 0, 0, 0, - cos(X(6))*sin(X(4)) - cos(X(4))*sin(X(6)) ... 
                    *sin(X(5)), -cos(X(5))*sin(X(4))*sin(X(6)), ... 
                    - cos(X(4))*sin(X(6)) - cos(X(6))*sin(X(4))*sin(X(5))]
                [ 0, 0, 0, cos(X(4))*cos(X(6)) - cos(X(6))*sin(X(4)) ... 
                    *sin(X(5)),  cos(X(4))*cos(X(6))*cos(X(5)), ... 
                    - sin(X(4))*sin(X(6)) - cos(X(4))*sin(X(6))*sin(X(5))]
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, cos(X(5)), 0]
                [ 0, 0, 0, -cos(X(4))*cos(X(5)), sin(X(4))*sin(X(5)), 0]
                [ 0, 0, 0, -cos(X(5))*sin(X(4)), -cos(X(4))*sin(X(5)), 0]
                [ 0, 0, 0, 0, 0, 0]
                [ 1, 0, 0, 0, 0, 0]
                [ 0, 1, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0]
                ];
     end

end

%%
function f()
%%
    syms x y z phi theta psi
    x1 = [x, y, z, phi, theta, psi];
    p_r = trans(x1);
    Jac1 = jacobian(p_r, x1)
end

% Copyright (c) 2014, Markus Solbach
% All rights reserved.

% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are
% met:

%     * Redistributions of source code must retain the above copyright
%       notice, this list of conditions and the following disclaimer.
%     * Redistributions in binary form must reproduce the above copyright
%       notice, this list of conditions and the following disclaimer in
%       the documentation and/or other materials provided with the distribution

% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.