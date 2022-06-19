function [final_sqrt]=LESQ_EC(A)
if(A<1)
    final_sqrt=0;
else
odd=0;n=16;
a=dec_2_bin(A,2*n);
exp=normal_block(a,2*n);
m=decoder_block(exp,n);
a=trunc_block(a,n);
x=sub_block(a,m,n);
k=dec_2_bin(exp,n);
if(k(16)==1)                    % if k is odd then k-1 else k
    k(16)=0;
    odd=1;
end
k=shift_2(k);                   %k/2 or k-1/2
k=bin_2_dec(k,n);
x_shift=shifter_block(x,-k-1,n);        % x/2^(k/2 + 1)
out1=decoder_block(k,n);                % 2^(k/2)
out2=addition_block(out1,x_shift,n);
%op=conversion_logic(out2,k+1,n)
p1=(exp+1)/2;
if(odd==1 && p1>=3)
m1=p1-3;
out3=decoder_block(m1,n);              % 2^(m-3)
out4=addition_block(out3,out2,n);
%out4=trunc_block(out4,n);
final_sqrt=bin_2_dec(out4,n);
else
    %out2=trunc_block(out2,n);
    final_sqrt=bin_2_dec(out2,n);
end
end
end
%...................decimal to binary..........................
function [out]=dec_2_bin(in,p)
    m=fix(in);
    for i=p:-1:1
      if(m>=0)
        out(i)=rem(m,2);                  %dividend converts to binary
        m=floor(m/2);
      end
    end   
end
%....................decoder............................
function [out]=decoder_block(in,n)
       out=[zeros(1,n-in-1),1,zeros(1,in)];

end
%...............normalize block............................
function [expo]=normal_block(in,p)
    for i=1:1:p
        if(in(i)==1)
            exp=(p-i)+1;
            break;
        end
    end
    expo=exp-1;
end
%.................truncation block.........................
function [out]=truncation_block(in,p)
    for i=1:1:p
        out(i)=in(i);
    end    
end
%................subtraction..............................
function [out,carry]=sub_block(in1,in2,p)
  carry=0;
  for i=length(in1):-1:1
    switch carry 
       case 0
           if(in1(i)==0 && in2(i)==0)
               out(i)=0;
               carry=0;
           elseif(in1(i)==0 && in2(i)==1)
               out(i)=1;
               carry=1;
           elseif(in1(i)==1 && in2(i)==0)
               out(i)=1;
               carry=0;
           elseif(in1(i)==1 && in2(i)==1)
               out(i)=0;
               carry=0;
           end    
       case 1
           if(in1(i)==0 && in2(i)==0)
               out(i)=1;
               carry=1;
           elseif(in1(i)==0 && in2(i)==1)
               out(i)=0;
               carry=1;
           elseif(in1(i)==1 && in2(i)==0)
               out(i)=0;
               carry=0;
           elseif(in1(i)==1 && in2(i)==1)
               out(i)=1;
               carry=1;
           end 
    end
  end 
end

%.................binary to decimal.............................
function [out]=bin_2_dec(in,p)
    out=0;
    for i=length(in):-1:1
        out=out+(in(i)*2^(length(in)-i));
    end
end
%...........binary to fraction...................
function [out]=bin_frac(in)
    out=0;
    for i=1:1:length(in)
        out=out+(in(i)*2^(-i));
    end
end
%....trunc block last n bits............
function [out]=trunc_block(in,n)
out=zeros(1,n);
    for i=1:1:n
        out(i)=in(i+n);
    end
end

%................shift by 2.............
function [out]=shift_2(in)
op=circshift(in,1);
op(1)=0;
out=op;
end

%.........addition block...................
function [out,carry]=addition_block(in1,in2,p)
  carry=0;
  for i=length(in1):-1:1
    switch carry 
       case 0
           if(in1(i)==0 && in2(i)==0)
               out(i)=0;
               carry=0;
           elseif(in1(i)==0 && in2(i)==1)
               out(i)=1;
               carry=0;
           elseif(in1(i)==1 && in2(i)==0)
               out(i)=1;
               carry=0;
           elseif(in1(i)==1 && in2(i)==1)
               out(i)=0;
               carry=1;
           end    
       case 1
           if(in1(i)==0 && in2(i)==0)
               out(i)=1;
               carry=0;
           elseif(in1(i)==0 && in2(i)==1)
               out(i)=0;
               carry=1;
           elseif(in1(i)==1 && in2(i)==0)
               out(i)=0;
               carry=1;
           elseif(in1(i)==1 && in2(i)==1)
               out(i)=1;
               carry=1;
           end 
    end
  end 
end
%...............conversion logic...............
function [final_div]=conversion_logic(taylor_div,m,n)
   if(m>=0)
        temp=zeros(1,m);temp1=zeros(1,n-m+1);
        for i=1:1:m
            temp(i)=taylor_div(i);
        end
        op1=bin_2_dec(temp,m);
        j=1;
        for i=m+1:1:n
            temp1(j)=taylor_div(i);
            j=j+1;
        end
        op2=bin_frac(temp1);
        final_div=op1+op2;
   else
       m=-m;
       temp=zeros(1,m);
       taylor_div=[temp,taylor_div];
       temp1=trunc_block(taylor_div,n);
       final_div=bin_frac(temp1);
   end
end
%................shifter block................................
function [out]=shifter_block(in,in2,n)
p=1;q=1;
if(in2==n || in2==(-n))
    shift1=(in2);
    shift2=n-(-in2-1);  %....for shift values equal to bit length
else
    shift1=(in2)+1;
    shift2=n-(-in2);
end
if(in2>0)
    for i=shift1:1:n
        temp(p)=in(i);            %.......right shift opern 
        p=p+1;
    end
     if(in2==n)
       temp(1)=0;                  %.......for shift opern equals to bit length
     end
    for i=1:1:in2
        temp1(i)=0;                 %...initalize zeros in right most position 
    end
else
    for i=1:1:(-in2)
        temp(i)=0;
    end
    for i=1:1:shift2
        temp1(i)=in(q);
        q=q+1;
    end
    if(in2==(-n))
        temp1(1)=0;
    end
end

    out=[temp,temp1];
end