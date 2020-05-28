%***************************************************************************
% Fourier interpolation 
%***************************************************************************
% function imgfl = Fourier_Oversample( imgstack, n)
%-----------------------------------------------
%Source code for background estimation
%imgstack    input data
%n           magnification times  {default:2}
%------------------------------------------------
%Output:
%  imgfl
%***************************************************************************
% Written by WeisongZhao @ zhaoweisong950713@163.com
% Version 1.0.3
% if any bugs is found, please just email me or put an issue on the github.
%***************************************************************************
% https:/weisongzhao.github.io
%***************************************************************************
% It is a part of publication:
% Weisong Zhao et al. Extending resolution of structured illumination
% microscopy with sparse deconvolution (2020).
%***************************************************************************
%   Copyright  2019 Weisong Zhao et al.
%
%    This program is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with this program.  If not, see <http://www.gnu.org/licenses/>.
%***************************************************************************