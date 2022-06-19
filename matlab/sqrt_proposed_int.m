function [final_sqrt]=sqrt_proposed_int(A)
if(A<1)
    final_sqrt=0;
else
n=16;reg=[0,0,1,0,1,0,1,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];odd=0;
a=dec_2_bin(A,2*n);
[k,x]=normal_block(a,2*n);        % 2^k (1+x)
if(x(1)==1)
    x=sub_block(x,reg,2*n);       %checking if x>0.5 then x-0.1717
end
x_appr=shift_2(x);              %x/2 or x-0.1717/2
x_appr=[1,x_appr];              %1+x/2 or 1+(x-0.1717)/2
k=dec_2_bin(k,2*n);
if(k(32)==1)                    % if k is odd then k-1 else k
    k(32)=0;
    odd=1;
end
k=shift_2(k);                   %k/2 or k-1/2
k=bin_2_dec(k,2*n);
out1=trunc_block(x_appr,2*n);
out2=shifter_block(out1,-2,2*n);
out3=shifter_block(out2,-1,2*n);
out4=shifter_block(out3,-2,2*n);
op1=addition_block(out1,out2,2*n);
op2=addition_block(out3,out4,2*n);
op3=addition_block(op1,op2,2*n);
op3=trunc_block(op3,n);
out=trunc_block(out1,n);
 if(odd==1)
     op=conversion_logic(op3,k+1,n);
     final_sqrt=bin_2_dec(op,n);
 else
     out=conversion_logic(out,k+1,n);
     final_sqrt=bin_2_dec(out,n);
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

%...............normalize block............................
function [expo,mantissa]=normal_block(in,p)
    for i=1:1:p
        if(in(i)==1)
            exp=(p-i)+1;
            break;
        end
    end
    expo=exp-1;
    k=p-exp+1;
    op=circshift(in,-k);
    op(16)=0;
    mantissa=op;
end

%.................binary to decimal.............................
function [out]=bin_2_dec(in,p)
    out=0;
    for i=length(in):-1:1
        out=out+(in(i)*2^(length(in)-i));
    end
end
%...
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
function [out]=conversion_logic(in,m,n)
    for i=1:1:m
        temp2(i)=in(i);
    end
    if(m==n)
        out=temp2;
    else
        out=[zeros(1,n-m+1),temp2];
    end
end

%...........binary to fraction...................
function [out]=bin_frac(in)
    out=0;
    for i=1:1:length(in)
        out=out+(in(i)*2^(-i));
    end
end

%.................truncation block.........................
function [out]=trunc_block(in,p)
    for i=1:1:p
        out(i)=in(i);
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