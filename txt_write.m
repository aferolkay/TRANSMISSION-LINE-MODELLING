function txt_write(target_file,parameter_in_test,values,default value)
% Read txt into cell A
fid = fopen(target_file,'r');
i = 1;
tline = fgetl(fid);
A{i} = tline;
while ischar(tline)
    i = i+1;
    tline = fgetl(fid);
    A{i} = tline;
end
fclose(fid);
% Change cell A
A{line_number} = sprintf('%d',value);
% Write cell A into txt
fid = fopen(target_file, 'w');
for i = 1:numel(A)
    if A{i+1} == -1
        fprintf(fid,'%s', A{i});
        break
    else
        fprintf(fid,'%s\n', A{i});
    end
end