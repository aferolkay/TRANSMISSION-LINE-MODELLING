function [S_base, V_base, N_circuit, N_bundle, d_bundle, length,conductor_name, outside_diameter, R_AC, GMR_conductor] = e230512_p1(text_path, library_path)
   
    input = fopen(text_path); %file source is obtained

    tline=fgetl(input); %first line is obtained
  
    while  ~isa(tline,"double")     %it'll finish looping when lines are over
        
        switch tline                %cases are helpful because when the desired parameter is found, it is extracted easily form the line below
            case 'Sbase (MVA)'
                tline=fgetl(input);
                S_base=str2double(tline)*10^6; % MVA-->VA
            case 'Vbase (kV)'
                tline=fgetl(input);
                V_base=str2double(tline)*10^3; %kV-->V
            case 'Number of circuits'
                tline=fgetl(input);
                N_circuit=str2double(tline);
            case 'Number of bundle conductors per phase'
                tline=fgetl(input);
                N_bundle=str2double(tline);
            case 'Bundle distance (m)'
                tline=fgetl(input);
                d_bundle=str2double(tline);
            case 'Length of the line (km)'
                tline=fgetl(input);
                length=str2double(tline)*1000; % km-->m
            case 'ACSR conductor name'
                tline=fgetl(input);
                conductor_name=tline;
            otherwise
                %fprintf("bir sıkıntı var")
        end
        tline=fgetl(input) ;        %shifting down another line to reach other parameters
    end

    %%%%%%%%%% INPUT FILE IS READ %%%%%%%%%%%%%%%


    library = fopen(library_path);
    tline=fgetl(library);    
    while  ~isa(tline,"double")     %it'll finish looping when lines are over
     
        parameters = split(tline,",");

        if  conductor_name == string(parameters(1));     % stops when the desired conductor type is found and retracts the data that we are interested in    
            outside_diameter = str2double( parameters(5) )* 0.0254;  %inch to m conversion
            R_AC= str2double( parameters(7) ) / 1609.344 ; % ohm/mi --> ohm/m
            GMR_conductor= str2double( parameters(8) ) * 0.3048  ; % feet --> meter
            break;  % stops to loop since we found what we looked for
        end
        tline=fgetl(library);  % go to next conductor type
    end

end