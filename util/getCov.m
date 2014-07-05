function COV = getCov(samplingRateSLAM)
% This function provides the covariance measured by hand of the used
% dataset

    numIter = 160;
%       numIter = 1600000;
      
%     sigmax = ( 0.1106 / (numIter) ) * samplingRateSLAM;
%     sigmay = ( 0.0111 / (numIter) ) * samplingRateSLAM;
%     sigmaz = ( -0.0763 / (numIter) ) * samplingRateSLAM;
%     sigmaqw = ( 1.880284430914108 / (numIter) ) * samplingRateSLAM;
%     sigmaqx = ( 0.012862493640703 / (numIter) ) * samplingRateSLAM;
%     sigmaqy = ( 0.084501999200303 / (numIter) ) * samplingRateSLAM;
%     sigmaqz = ( 0.671779888139042 / (numIter) ) * samplingRateSLAM;
    
    sigmax = ( 0.1106 / (numIter) ) * samplingRateSLAM;
    sigmay = ( 0.0111 / (numIter) ) * samplingRateSLAM;
    sigmaz = ( -0.0763 / (numIter) ) * samplingRateSLAM;
    sigmaqw = ( 1.880284430914108 / (numIter) ) * samplingRateSLAM;
    sigmaqx = ( 0.012862493640703 / (numIter) ) * samplingRateSLAM;
    sigmaqy = ( 0.084501999200303 / (numIter) ) * samplingRateSLAM;
    sigmaqz = ( 0.671779888139042 / (numIter) ) * samplingRateSLAM;

    xcov = sigmax*sigmax;
    ycov = sigmay*sigmay;
    zcov = sigmaz*sigmaz;
    qwcov = sigmaqw*sigmaqw;
    qxcov = sigmaqx*sigmaqx;
    qycov = sigmaqy*sigmaqy;
    qzcov = sigmaqz*sigmaqz;

% relative measurement covariance
    COV      = zeros( 7, 7 );
    COV(1,1) = xcov;
    COV(2,2) = ycov;
    COV(3,3) = zcov;
    COV(4,4) = qwcov;
    COV(5,5) = qxcov;
    COV(6,6) = qycov;
    COV(7,7) = qzcov;

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Copyright (c) 2014, Markus Solbach
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