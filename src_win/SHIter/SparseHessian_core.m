%***************************************************************************
% Sparse-SIM algorithm core
%***************************************************************************
% function g = SparseHessian_core(f,fidelity,contiz,paral1,iteration,gpu,mu)
%-----------------------------------------------
%Source code for
% argmin_g { ||f-g ||_2^2 +||gxx||_1+||gxx||_1+||gyy||_1+lamdbaz*||gzz||_1+2*||gxy||_1
% +2*sqrt(lamdbaz)||gxz||_1+ 2*sqrt(lamdbaz)|||gyz||_1+2*sqrt(lamdbal1)|||g||_1}
%f           input data
%fidelity    fidelity {example:150}
%contiz      continuity along z-axial {example:1}
%paral1      sparsity {example:15}
%iteration   iteration {default:100}
%gpu         if using CUDA {default:cudaAvailable}
%mu          lagrangian multiplier{default:1}
%------------------------------------------------
%Output:
%   g
%
%***************************************************************************
% Written by WeisongZhao @ zhaoweisong950713@163.com
% Version 1.0.3
% if any bugs is found, please just email me or put an issue on the github.
%***************************************************************************
% https:/weisongzhao.github.io
%***************************************************************************
% It is a part of publication:
% Weisong Zhao et al. Overcoming physical resolution limit of structured illumination
% microscopy with sparse deconvolution, Nature Biotechnology, X, XXX-XXX (2020).
% *********************************************************************************
%   Copyright 2019~2020 Weisong Zhao et al.
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