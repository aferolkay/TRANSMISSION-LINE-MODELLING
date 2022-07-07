target_file="Input_file_example2.txt"

values=[1 2 3 4 5 6]

txt_write(target_file,16,values(1))
txt_write(target_file,19,-values(1))
[R_per_unit_1 , X_per_unit_1 , B_per_unit_1]=e230512_p2(target_file, "library.csv")

txt_write(target_file,16,values(2))
txt_write(target_file,19,-values(2))
[R_per_unit_2 , X_per_unit_2 , B_per_unit_2]=e230512_p2(target_file, "library.csv")

txt_write(target_file,16,values(3))
txt_write(target_file,19,-values(3))
[R_per_unit_3 , X_per_unit_3 , B_per_unit_3]=e230512_p2(target_file, "library.csv")

txt_write(target_file,16,values(4))
txt_write(target_file,19,-values(4))
[R_per_unit_4 , X_per_unit_4 , B_per_unit_4]=e230512_p2(target_file, "library.csv")

txt_write(target_file,16,values(5))
txt_write(target_file,19,-values(5))
[R_per_unit_5 , X_per_unit_5 , B_per_unit_5]=e230512_p2(target_file, "library.csv")

txt_write(target_file,16,values(6))
txt_write(target_file,19,-values(6))
[R_per_unit_6 , X_per_unit_6 , B_per_unit_6]=e230512_p2(target_file, "library.csv")

Y=[R_per_unit_1   X_per_unit_1   B_per_unit_1 
    R_per_unit_2   X_per_unit_2   B_per_unit_2 
    R_per_unit_3   X_per_unit_3  B_per_unit_3 
    R_per_unit_4   X_per_unit_4   B_per_unit_4
    R_per_unit_5   X_per_unit_5   B_per_unit_5
    R_per_unit_6   X_per_unit_6   B_per_unit_6]

subplot(1,3,1)

plot( values , Y(:,1) ,'-o','LineWidth',1);
xlabel("Distance of Ph_a and Ph_b to y-axis(m)")
ylabel("series resistance (Ω)")
ylim([-0.005,0.005])

subplot(1,3,2)
plot( values , Y(:,2) ,'-o','LineWidth',2);
xlabel("Distance of Ph_a and Ph_b to y-axis(m)")
ylabel("series reactance (Ω)")


subplot(1,3,3)
plot( values , Y(:,3) ,'-o','LineWidth',2);
xlabel("Distance of Ph_a and Ph_b to y-axis(m)")
ylabel("shunt susceptance (℧)")

txt_write(target_file,16,4)
txt_write(target_file,19,-4)


