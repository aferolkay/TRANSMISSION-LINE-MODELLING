
function [phase_A , phase_B , phase_C]= phase_locations(text_path, N_circuit)  %resistance (R), reactance (X) and susceptance (B)

input_file= fopen(text_path);

for i = 1:14
    fgetl(input_file);
end  %skips the initial info and arrives at phase locations


fgetl(input_file); %15

phase_C(1)=str2double(fgetl(input_file));
phase_C(2)=str2double(fgetl(input_file));

fgetl(input_file); %18

phase_A(1)=str2double(fgetl(input_file));
phase_A(2)=str2double(fgetl(input_file));

fgetl(input_file); %21

phase_B(1)=str2double(fgetl(input_file));
phase_B(2)=str2double(fgetl(input_file));


if(N_circuit==2)
    
    fgetl(input_file); %24

    phase_C(3)=str2double(fgetl(input_file));
    phase_C(4)=str2double(fgetl(input_file));
    
    fgetl(input_file); %27
    
    phase_A(3)=str2double(fgetl(input_file));
    phase_A(4)=str2double(fgetl(input_file));
    
    fgetl(input_file); %30
    
    phase_B(3)=str2double(fgetl(input_file));
    phase_B(4)=str2double(fgetl(input_file));

else
    phase_C(3)=0;
    phase_C(4)=0;
 
    phase_A(3)=0;
    phase_A(4)=0;
        
    phase_B(3)=0;
    phase_B(4)=0;
end



end

