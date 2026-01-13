clc; clear;

% --- Función y derivadas ---
f  = @(x) (x-5*exp(-2*x))*(1/2-exp(-x)+exp(-2*x)/2);
df = @(x) 0.5 * ( -2*exp(-x) + 11*exp(-2*x) + 2*x.*exp(-x)- 2*x*exp(-2*x) - 30*exp(-x).*exp(-2*x) + 20*(exp(-4*x)) + 1 );
d2f = @(x) 2*exp(-x) - 12*exp(-2*x) - x.*exp(-x) + 2*x.*exp(-2*x) + 45*exp(-x).*exp(-2*x) - 40*(exp(-4*x));


% --- Parámetros ---
tol = 1e-12;
maxIter = 100;
x0_list = [-0.2 0 0.1 0.3 0.5 0.9 ];  % semillas iniciales
dupTol = 1e-6; % tolerancia para duplicados

roots_found = [];
multiplicities = [];

fprintf('--- Buscando raíces ---\n\n');

for j = 1:length(x0_list)
    x = x0_list(j);

    for k = 1:maxIter
        fx = f(x);
        dfx = df(x);

        if abs(dfx) < 1e-14
            break; % Evita división por cero
        end

        % Iteración de Newton normal
        x_new = x - fx/dfx;

        if abs(x_new - x) < tol || abs(f(x_new)) < tol
            root = x_new;

            % --- Estimar multiplicidad al final ---
            dfx  = df(root);
            d2fx = d2f(root);
            fx   = f(root);

            if abs(dfx) > 1e-14
                m_est = round((fx * d2fx) / (dfx^2));
                if m_est < 1, m_est = 1; end
            else
                m_est = NaN; % caso degenerado
            end

            % Redondeo para comparar duplicados
            r_rnd = round(real(root)*1e10)/1e10 + 1i*round(imag(root)*1e10)/1e10;

            if isempty(roots_found) || all(abs(roots_found - r_rnd) > dupTol)
                roots_found(end+1) = r_rnd; %#ok<SAGROW>
                multiplicities(end+1) = m_est; %#ok<SAGROW>
                fprintf('Raíz: %.10f %+ .10fi   (multiplicidad ≈ %d)\n', ...
                        real(r_rnd), imag(r_rnd), m_est);
            end
            break;
        end

        x = x_new;
    end
end


