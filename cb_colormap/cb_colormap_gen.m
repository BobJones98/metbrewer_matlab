function [cm] = cb_colormap_gen(palette_name,varargin)
%CB_COLORMAP_GEN This function generate colorblind-friendly colormap for
%your plot for publications. 
%   Color palettes from https://github.com/BlakeRMills/MetBrewer. Cite the author in
%   your publication if you have used the color palette. Check color
%   palette examples from the above website.
% 
%   This function must work with hex2rgb.m. Make sure this function and
%   hex2rgb are in the same directory
%   
%   [cm] = cb_colormap_gen(palette_name,is_inv,is_discrete,nlevel)
%   palette_name => char, essential input variable!!!
%   is_inv => bool (0,1 or false, true)
%   is_discrete => bool (0,1 or false, true)
%   nlevel => int8/in16/double/single/long (any number)
%
%   


%%   Colormap library
    switch palette_name
        case 'Austria'
            palette = ['#a40000';'#16317d';'#007e2f';'#ffcd12';'#b86092';'#721b3e';'#00b7a7'];
        case 'Cassatt'    
            palette = ['#b1615c';'#d88782';'#e3aba7';'#edd7d9';'#c9c9dd';'#9d9dc7';'#8282aa';'#5a5a83'];
        case 'Cross'
            palette = ['#c969a1';'#ce4441';'#ee8577';'#eb7926';'#ffbb44';'#859b6c';'#62929a';'#004f63';'#122451'];
        case 'Degas'
            palette = ['#591d06';'#96410e';'#e5a335';'#556219';'#418979';'#2b614e';'#053c29'];
        case 'Egypt'
            palette = ['#dd5129';'#0f7ba2';'#43b284';'#fab255'];
        case 'Gauguin'
            palette = ['"#b04948';'#811e18';'#9e4013';'#c88a2c';'#4c6216';'#1a472a'];
        case 'Greek'
            palette = ['#3c0d03';'#8d1c06';'#e67424';'#ed9b49';'#f5c34d'];
        case 'Hokusai'
            palette = ['#6d2f20';'#b75347';'#df7e66';'#e09351';'#edc775';'#94b594';'#224b5e'];
        case 'Ingres'
            palette = ['#041d2c';'#06314e';'#18527e';'#2e77ab';'#d1b252';'#a97f2f';'#7e5522';'#472c0b'];
        case 'Isfahan1'
            palette = ['#4e3910';'#845d29';'#d8c29d';'#4fb6ca';'#178f92';'#175f5d';'#1d1f54'];
        case 'Isfahan2'
            palette = ['#d7aca1';'#ddc000';'#79ad41';'#34b6c6';'#4063a3'];
        case 'Juarez'
            palette = ['#a82203';'#208cc0';'#f1af3a';'#cf5e4e';'#637b31';'#003967'];
        case 'Klimt'
            palette = ['#df9ed4';'#c93f55';'#eacc62';'#469d76';'#3c4b99';'#924099'];
        case 'Manet'
            palette = ['#3b2319';'#80521c';'#d29c44';'#ebc174';'#ede2cc';'#7ec5f4';'#4585b7';'#225e92';'#183571';'#43429b';'#5e65be'];
        case 'Monet'
            palette = ['#4e6d58';'#749e89';'#abccbe';'#e3cacf';'#c399a2';'#9f6e71';'#41507b';'#7d87b2';'#c2cae3'];
        case 'Moreau'
            palette = ['#421600';'#792504';'#bc7524';'#8dadca';'#527baa';'#104839';'#082844'];
        case 'Morgenstern'
            palette = ['#7c668c';'#b08ba5';'#dfbbc8';'#ffc680';'#ffb178';'#db8872';'#a56457'];
        case 'Nattier'
            palette = ['#52271c';'#944839';'#c08e39';'#7f793c';'#565c33';'#184948';'#022a2a'];
        case 'NewKingdom'
            palette = ['#e1846c';'#9eb4e0';'#e6bb9e';'#9c6849';'#735852'];
        case 'Pillement'
            palette = ['#a9845';'#697852';'#738e8e';'#44636f';'#2b4655';'#0f252f'];
        case 'Pissaro'
            palette = ['#13413';'#4c825d';'#8cae9e';'#8dc7dc';'#508ca7';'#1a5270';'#0e2a4d'];
        case 'Redon'
            palette = ['#5b859e';'#1e395f';'#75884b';'#1e5a46';'#df8d71';'#af4f2f';'#d48f90';'#732f30';'#ab84a5';'#59385c';'#d8b847';'#b38711'];
        case 'Renoir'
            palette = ['#17154f';'#2f357c';'#6c5d9e';'#9d9cd5';'#b0799a';'#f6b3b0';'#e48171';'#bf3729';'#e69b00';'#f5bb50';'#ada43b';'#355828'];
        case 'Robert'
            palette = ['#11341a';'#375624';'#6ca4a0';'#487a7c';'#18505f';'#062e3d'];
        case 'Stevens'
            palette = ['#042e4e';'#307d7f';'#598c4c';'#ba5c3f';'#a13213';'#470c00'];
        case 'Tara'
            palette = ['#eab1c6';'#d35e17';'#e18a1f';'#e9b109';'#829d44'];
        case 'Thomas'
            palette = ['#b24422';'#c44d76';'#4457a5';'#13315f';'#b1a1cc';'#59386c';'#447861';'#7caf5c'];
        case 'Tiepolo'
            palette = ['#802417';'#c06636';'#ce9344';'#e8b960';'#646e3b';'#2b5851';'#508ea2';'#17486f'];
        case 'Troy'
            palette = ['#421401';'#6c1d0e';'#8b3a2b';'#c27668';'#7ba0b4';'#44728c';'#235070';'#0a2d46'];
        case 'VanGogh1'
            palette = ['#2c2d54';'#434475';'#6b6ca3';'#969bc7';'#87bcbd';'#89ab7c';'#6f9954'];
        case 'VanGogh2'
            palette = ['#bd3106';'#d9700e';'#e9a00e';'#eebe04';'#5b7314';'#c3d6ce';'#89a6bb';'#454b87'];
        case 'Veronese'
            palette = ['#67322e';'#99610a';'#c38f16';'#6e948c';'#2c6b67';'#175449';'#122c43'];
        case 'Wissing'
            palette = ['#4b1d0d';'#7c291e';'#ba7233';'#3a4421';'#2d5380'];
        otherwise
            palette = ['#0000ff';'#0080ff';'#00ffff';'#80ff80';'#ffff00';'#ff8000';'#ff0000';'#800000']; %jet
    end
    %% Main function part
    
    switch nargin
        case 2
            is_inv = varargin{1};
            is_discrete = false;
        case 3
            is_inv = varargin{1};
            is_discrete = varargin{2};  %discretize color steps or not
            nlevel = 256;               %256 colors by default
            disp("Missing color discretizing levels. Default # of levels (256 colors) is used.")
        case 4
            is_inv = varargin{1};
            is_discrete = varargin{2};
            nlevel = varargin{3};

        otherwise
            is_inv = false;
            is_discrete = false;

    end
    
    if is_discrete == true    
        n_level = round(abs(nlevel));           %discretize color steps
    else
        n_level = 256;                          %256 colors by default
    end

    palette_rgb = hex2rgb(palette);
    len=length(palette_rgb);
        
    cmap = interp1(palette_rgb,linspace(1,len,n_level));
    
    if is_inv == false
        cm = flip(cmap,1);
    else
        cm = cmap;
    end


end



