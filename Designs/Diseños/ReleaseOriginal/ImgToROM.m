function [Width, Height, Pixeles] = ImgToROM(img)
    
    % Buffers
    a = []; % It'll content the pixels matrix
    Width = 0; % Image Width
    Height = 0; % Image Height
    Pixels = 0; % Number of pixels
    
    % Prepare output file
    filename = strcat(img,'.hex');
    file = fopen(filename,'wt');
    
    % Load Image
    a = imread(img);
    
    % Catch dimensions
    S = size(a);
    Width = S(2);
    Height = S(1);
    Pixels = Width*Height;
    
    for y = 1:Height
        for x = 1:Width
            % Acquiring colors
            R = a(y,x,1);
            G = a(y,x,2);
            B = a(y,x,3);
            % Converting to binary string
            R = dec2bin(R,8);
            G = dec2bin(G,8);
            B = dec2bin(B,8);
            % Get 2 MSB
            R = R(1:2);
            G = G(1:2);
            B = B(1:2);
            
            % Write the file
            fprintf(file, '%s%s%s\n',R, G, B);
        end
    end
    % Close the file
    fclose(file);
    
    fprintf('The ROM file was created successfully\n');
    fprintf('The image dimensions are %uX%u and the pixels are %u\n', Width, Height, Pixels);
end