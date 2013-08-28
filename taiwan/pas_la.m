tab = 'azertyui_$&@{}%^&opq/_\+-sdfghjklmwxcvbnAZERTYUIOPQSDFGHJKLMWXCVBN0123456789';
tab = 'azertyuiopqsdfghjklmwxc({-})123456789_$&@vbnAZERTYUIOPQSDFGHJKLMWXCVBN0';

%tab='azertyuiopqsdfghjklmwxc123456789_-$&@vbnAZERTYUIOPQSDFGHJKLMWXCVBN0';


tab = tab_original;
code ='Sorry_I_am_Canadian';
code = '\frac{\nu}{\mu-\lambda}'
code = '\nu/(\mu-\lambda)'
n = length(code);
sum = 1;

for k = 1:n
    
        if strcmp(code(k),'\')==1 || strcmp(code(k),'/')==1
            index = -1;
        else
    %here, find the index
            for i=1:length(tab)
                    if strcmp(code(k),tab(i))==1
                        index = i-1;
                        coucou = 1;
                    end
            end
        end
    
    %now, increase the sum
    sum = sum + (index * n * (k-1)) *(index * (k-1) * (k-1));
    
end
clc
tab
code
sum 