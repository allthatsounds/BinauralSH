function x = iffth(y,nfft,dim)
% Like ifft(), but y only contains up to the Nyquist frequency.
%
% INPUT:
%   y = discrete Fourier transform of x, up to Nyquist frequency (see ffth)
%
% OUTPUT:
%   x = inverse discrete Fourier transform of the full-spectrum y
%
% AUTHOR: Isaac Engel - isaac.engel(at)imperial.ac.uk
% February 2021

if ~exist('nfft','var')
    nfft = [];
end
if ~exist('dim','var')
    dim = 1;
end

x = ifft(AKsingle2bothSidedSpectrum(y),nfft,dim);