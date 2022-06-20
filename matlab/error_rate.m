clc;
clear;
addpath 'D:\iiitb\matlab\sqrt\16_bit'
size=712;
 in=zeros(size,size); sq1=zeros(size,size); sq2=zeros(size,size); true_sq=zeros(size,size);
err_sq1=zeros(size,size); err_sq2=zeros(size,size);
for i=1:1:size
    for j=1:1:size
        in(i,j)=randi(500000);
    end
end

for i=1:1:size
    for j=1:1:size
        sq1(i,j)=sqrt_proposed_int(in(i,j));
        sq2(i,j)=sqrt_proposed_fixed(in(i,j));
        sq3(i,j)=sqrt_proposed_floating(in(i,j));
        sq4(i,j)=LESQ_EC(in(i,j));
        true_sq(i,j)=sqrt(in(i,j));
    end
end
avg_sqrt=0; er_lesq=0; er_float=0; er_fix=0; er_int=0;
for i=1:1:size
    for j=1:1:size
        lesq_sqrt_err=(abs(true_sq(i,j))-sq4(i,j));
        esas_float_err=(abs(true_sq(i,j))-abs(sq3(i,j)));
        esas_fix_err=(abs(true_sq(i,j))-abs(sq2(i,j)));
        esas_int_err=(abs(true_sq(i,j))-sq1(i,j));
        if(lesq_sqrt_err>0)    
            er_lesq=er_lesq+1;
        end
        if(esas_float_err>0)
            er_float=er_float+1;
        end
        if(esas_fix_err>0)
            er_fix =er_fix+1;
        end
        if(esas_int_err>0)
            er_int=er_int+1;
        end
    end
end

er_lesq_sqrt=er_lesq/(size*size);
er_esas_float=er_float/(size*size);
er_esas_fix=er_fix/(size*size);
er_esas_int=er_int/(size*size);

