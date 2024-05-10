% List of folders containing .mat files
folders = {'brainTumorDataPublic_1766', 'brainTumorDataPublic_22993064', 'brainTumorDataPublic_7671532','brainTumorDataPublic_15332298'};

% Create folders for different tumor types if they don't exist already
tumor_types = {'Meningioma', 'Glioma', 'Pituitary'};
for i = 1:length(tumor_types)
    if ~exist(tumor_types{i}, 'dir')
        mkdir(tumor_types{i});
    end
end

% Loop through each folder
for i = 1:length(folders)
    folder = folders{i};
    files = dir(fullfile(folder, '*.mat'));
    
    % Loop through each .mat file in the folder
    for j = 1:length(files)
        file = files(j).name;
        full_path = fullfile(folder, file);
        
        % Load .mat file
        data = load(full_path);
        
        % Extract image data and tumor type
        image_data = data.cjdata.image;
        tumor_type = data.cjdata.label;
        
        % Convert image data to uint16
        image_data = uint16(image_data);
        
        % Apply contrast adjustment to reduce brightness
        image_data = imadjust(image_data);
        
        % Save the image in the respective tumor type folder
        destination_folder = tumor_types{tumor_type};
        disp(tumor_type);
        disp(destination_folder);
        imwrite(image_data, fullfile(destination_folder, [file(1:end-4) '.png']));
    end
end

disp('Images saved and distributed into folders based on tumor type.');
