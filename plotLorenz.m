function plotLorenz
    t = 1000;
    dt = 0.01;
    x = 0*ones(1,t);
    y = 1*ones(1,t);
    z = 0*ones(1,t);
    a = 28;
    b = 10;
    c = 8/3;
    for k = 1:t
        x(k + 1) = x(k) + b*(y(k) - x(k))*dt; 
        y(k + 1) = y(k) + (x(k)*(a - z(k)) - y(k))*dt; 
        z(k + 1) = z(k) + (x(k)*y(k) - c*z(k))*dt;
        pause(0.001);
        plot3(x(1:k),y(1:k),z(1:k),'k');
        axis([-40,40,-40,40,-20,60]);
    end
end
