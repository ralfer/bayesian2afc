function add_text_to_figure(position,txt, fs, varargin)
%
% add_text_to_figure('TL','hello', 15)
%
% written by: Benjamin T Vincent


if numel(varargin)==0
	interpreter='none';
else
	interpreter=varargin{1};
end
	
a=axis;

switch position
    case{'TL'}
        pos					= [a(1) a(4)];
        VerticalAlignment	= 'top';
        HorizontalAlignment = 'Left';
    case{'TR'}
        pos					= [a(2) a(4)];
        VerticalAlignment	= 'top';
        HorizontalAlignment = 'Right';
        
    case{'T'}
        pos					= [(a(2)-a(1))/2 a(4)];
        VerticalAlignment	= 'top';
        HorizontalAlignment = 'Center';
        
    case{'BL'}
        pos					= [a(1) a(3)];
        VerticalAlignment	= 'bottom';
        HorizontalAlignment = 'Left';
    case{'BR'}
        pos					= [a(2) a(3)];
        VerticalAlignment	= 'bottom';
        HorizontalAlignment = 'Right';
        
end

text(pos(1),pos(2),[txt],...
    'VerticalAlignment',VerticalAlignment,...
    'HorizontalAlignment',HorizontalAlignment,...
    'Color',[0 0 0],...
    'FontSize', fs,...
	'interpreter',interpreter);

end