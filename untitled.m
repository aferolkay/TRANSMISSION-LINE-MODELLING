hFig = figure;
country = {'usa'; 'china'; 'india'; 'russia'; 'saudi'; 'germany'; 'italy'; 'spain'; 'canada'; 'syria'};
values={"Waxwing" ;"Ostrich" ;"Linnet" ;"Ibis" ;"Hawk" ;"Dove"}

density = [35.77, 148.60, 382, 237, 205, 92.29, 95, 8.82, 15.68, 4.0753];
Y=[R_per_unit_1   X_per_unit_1   B_per_unit_1 
    R_per_unit_2   X_per_unit_2   B_per_unit_2 
    R_per_unit_3   X_per_unit_3  B_per_unit_3 
    R_per_unit_4   X_per_unit_4   B_per_unit_4
    R_per_unit_5   X_per_unit_5   B_per_unit_5
    R_per_unit_6   X_per_unit_6   B_per_unit_6]




bar(Y(:,3));
grid on;
xticklabels(values);
hFig.WindowState = 'maximized';
xlabel("Cable Type")
ylabel("shunt susceptance (℧)")
