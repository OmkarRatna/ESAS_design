function [final_sqrt]=sqrt_proposed_floating(A)
if(A<1)
    final_sqrt=0;
else
p=10;q=5;            %8-bit for integer part and 4-bit for fraction part
n=10;reg=[0,0,1,0,1,0,1,1,1,1];odd=0;
a=dec_2_bin(A,2*p,2*q); %20-bit output with 20-bit integer and 10-bit fraction part
[k,x]=normal_block(a,2*p);
x=trunc_block(x,n);
if(x(1)==1)
    x=sub_block(x,reg,n);       %checking if x>0.5 then x-0.1717
end
x_appr=shift_2(x);              %x/2 or x-0.1717/2
x_appr=[1,x_appr];              %1+x/2 or 1+(x-0.1717)/2
k=dec_2_bin_int(k,q);

if(k(5)==1)                    % if k is odd then k-1 else k
    k(5)=0;
    odd=1;
end
k=shift_2(k);                   %k/2 or k-1/2
k=bin_2_dec(k);
out1=trunc_block(x_appr,n);
out2=shifter_block(out1,-2,n);
out3=shifter_block(out2,-1,n);
out4=shifter_block(out3,-2,n);
op1=addition_block(out1,out2,n);
op2=addition_block(out3,out4,n);
op3=addition_block(op1,op2,n);
op3=trunc_block(op3,n);
out1=trunc_block(out1,n);
 if(odd==1)
     final_sqrt=conversion_logic(op3,k+1,n);
 else
     final_sqrt=conversion_logic(out1,k+1,n);
 end
end
end

%...................decimal to binary..........................
function [out]=dec_2_bin(in,p,q)
    m=fix(in);
    in2=in-m;
    for i=p:-1:1
      if(m>=0)
        op1(i)=rem(m,2);                  %intger part converts to binary
        m=floor(m/2);
      end
    end  
    
    for i=1:1:q
        temp=in2*2;
        int_part=fix(temp);              %fractional part converts to binary   
        op2(i)=int_part;
        in2=temp-int_part;
    end    
        out=[op1,op2];              %concatination of intger and fraction part
end


%...............normalize block.................................
function [expo,mantissa]=normal_block(in,p)
    for i=1:1:p
        if(in(i)==1)
            exp=(p-i);
            break;
        end
    end
    expo=exp;
    k=p-exp;
    op=circshift(in,-k);
    op(length(in))=0;
    mantissa=op;
end
%...................decimal to binary..........................
function [out]=dec_2_bin_int(in,p)
    m=fix(in);
    for i=p:-1:1
      if(m>=0)
        out(i)=rem(m,2);                  %dividend converts to binary
        m=floor(m/2);
      end
    end   
end

%.................truncation block.........................
function [out]=trunc_block(in,p)
    for i=1:1:p
        out(i)=in(i);
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
        op1=bin_2_dec(temp);
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

%...........binary to fraction...................
function [out]=bin_frac(in)
    out=0;
    for i=1:1:length(in)
        out=out+(in(i)*2^(-i));
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
function [out]=bin_2_dec(in)
    out=0;
    for i=length(in):-1:1
        out=out+(in(i)*2^(length(in)-i));
    end
end