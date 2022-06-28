% Function to make multi rectangles in an NxN image
% clist is a cell with the top left corner, height and width
% Ex: If we want to draw two rectangles (squares) with top left corner at 
% (x1,y1), (x2,y2), and height, width as h1,w1 and h2,w2 respectively,
% cList will be: cList{1,1} = [y1,x1]; cList{1,2} = h1; cList{1,3} = w1;
% cList{2,1} = [y2,x2]; cList{2,2} = h2; cList{2,3} = w2

function R1 = makeMultiRect(N,clist)

s = (size(clist));

if (s(1) <= 3)
    s = s(1);
else
    s = max(s);
end

R1 = zeros(N,N);

for i = 1:1:s
    p = clist{i,1};
    h = clist{i,2};
    w = clist{i,3};
    %R1(clist{i,1}:clist{i,1} + clist{i,2},clist{i,1}:clist{i,1} + clist{i,3}) = 1;
    R1(p(1):p(1) + h - 1, p(2):p(2) + w - 1) = 1;
end
