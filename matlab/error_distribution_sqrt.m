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

for i=1:1:size
    for j=1:1:size
        err_sq1(i,j)=(sq1(i,j)-true_sq(i,j))*100/(true_sq(i,j));
        err_sq2(i,j)=(sq2(i,j)-true_sq(i,j))*100/(true_sq(i,j));
        err_sq3(i,j)=(sq3(i,j)-true_sq(i,j))*100/(true_sq(i,j));
        err_sq4(i,j)=(sq4(i,j)-true_sq(i,j))*100/(true_sq(i,j));      
    end
end

mae_sq1=sum(abs(err_sq1),'all');
mae_sq1_int=mae_sq1/(size*size);
mae_sq2=sum(abs(err_sq2),'all');
mae_sq2_fix=mae_sq2/(size*size);
mae_sq3=sum(abs(err_sq3),'all');
mae_sq3_float=mae_sq3/(size*size);
mae_sq4=sum(abs(err_sq4),'all');
mae_sq4_lesq=mae_sq4/(size*size);

rmse_sq1=sqrt(sum((err_sq1.^2),'all'));
rmse_sq1_int=rmse_sq1/(size*size);
rmse_sq2=sqrt(sum((err_sq2.^2),'all'));
rmse_sq2_fix=rmse_sq2/(size*size);
rmse_sq3=sqrt(sum((err_sq3.^2),'all'));
rmse_sq3_float=rmse_sq3/(size*size);
rmse_sq4=sqrt(sum((err_sq4.^2),'all'));
rmse_sq4_int=rmse_sq4/(size*size);

figure,
histogram(err_sq1,'normalization','probability');
ytix = get(gca, 'YTick');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
xlim([-15,15]);
set(gca,'FontSize',30)
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',30)
set(k_lab,'FontSize',30)
% m_lab=title('Error Distribution Of proposed int');
% set(m_lab,'FontSize',30)

figure,
histogram(err_sq2,'normalization','probability');
ytix = get(gca, 'YTick');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
xlim([-15,15]);
set(gca,'FontSize',30)
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',30)
set(k_lab,'FontSize',30)
% m_lab=title('Error Distribution proposed fixed');
% set(m_lab,'FontSize',30)

figure,
histogram(err_sq3,'normalization','probability');
ytix = get(gca, 'YTick');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
xlim([-15,15]);
set(gca,'FontSize',30)
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',30)
set(k_lab,'FontSize',30)
% m_lab=title('Error Distribution proposed floating');
% set(m_lab,'FontSize',30)

figure,
histogram(err_sq4,'normalization','probability');
ytix = get(gca, 'YTick');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
xlim([-25,15]);
set(gca,'FontSize',30)
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',30)
set(k_lab,'FontSize',30)
% m_lab=title('Error Distribution lesq');
% set(m_lab,'FontSize',30)