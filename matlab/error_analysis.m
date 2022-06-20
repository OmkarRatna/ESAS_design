 clc;
clear;
addpath 'D:\iiitb\matlab\sqrt\16_bit'
size=712;
 in=zeros(size,size); sq1=zeros(size,size); sq2=zeros(size,size); true_sq=zeros(size,size);
sq3=zeros(size,size);sq4=zeros(size,size);
lesq_sqrt_err=zeros(size,size);esas_float_err=zeros(size,size);esas_fix_err=zeros(size,size);
esas_int_err=zeros(size,size);

for i=1:1:size
    for j=1:1:size
        in(i,j)=randi(500000);
    end
end
max_no = max(in,[],'all');
max_expect_op=sqrt(max_no);
for i=1:1:size
    for j=1:1:size
        sq1(i,j)=sqrt_proposed_int(in(i,j));
        sq2(i,j)=sqrt_proposed_fixed(in(i,j));
        sq3(i,j)=sqrt_proposed_floating(in(i,j));
        sq4(i,j)=LESQ_EC(in(i,j));
        true_sq(i,j)=sqrt(in(i,j));
    end
end

for i=1:1:size
    for j=1:1:size
        lesq_sqrt_err(i,j)=(abs(true_sq(i,j)-sq4(i,j)))/(true_sq(i,j));
        esas_float_err(i,j)=(abs(true_sq(i,j)-sq3(i,j)))/(true_sq(i,j));
        esas_fix_err(i,j)=(abs(true_sq(i,j)-sq2(i,j)))/(true_sq(i,j));
        esas_int_err(i,j)=(abs(true_sq(i,j)-sq1(i,j)))/(true_sq(i,j));
    end
end
for i=1:1:size
    for j=1:1:size
        lesq_ed(i,j)=(abs(true_sq(i,j)-sq4(i,j)));
        esas_float_ed(i,j)=(abs(true_sq(i,j)-sq3(i,j)));
        esas_fix_ed(i,j)=(abs(true_sq(i,j)-sq2(i,j)));
        esas_int_ed(i,j)=(abs(true_sq(i,j)-sq1(i,j)));
    end
end
mred_lesq_sum= sum(lesq_sqrt_err,'all');
mred_lesq=mred_lesq_sum/(size*size);
mred_esas_float= (sum(esas_float_err,'all'))/(size*size);
mred_esas_fix= (sum(esas_fix_err,'all'))/(size*size);
mred_esas_int= (sum(esas_int_err,'all'))/(size*size);

med_lesq=(sum(lesq_ed,'all'))/(size*size);
med_esas_float=(sum(esas_float_ed,'all'))/(size*size);
med_esas_fix=(sum(esas_fix_ed,'all'))/(size*size);
med_esas_int=(sum(esas_int_ed,'all'))/(size*size);

nmed_lesq_ec = med_lesq/max_expect_op;
nmed_esas_float = med_esas_float/max_expect_op;
nmed_esas_fix = med_esas_fix/max_expect_op;
nmed_esas_int = med_esas_int/max_expect_op;
