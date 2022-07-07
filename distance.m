function d= distance(A, B) 

    d(1)= sqrt(  ( A(1)-B(1) )^2 + ( A(2)-B(2) )^2  );
    d(2)= sqrt(  ( A(1)-B(3) )^2 + ( A(2)-B(4) )^2  );
    d(3)= sqrt(  ( A(3)-B(1) )^2 + ( A(4)-B(2) )^2  );
    d(4)= sqrt(  ( A(3)-B(3) )^2 + ( A(4)-B(4) )^2  );

end