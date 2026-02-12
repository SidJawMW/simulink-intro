toolboxes = {
    'Simulink'
    'Aerospace Blockset'
    'Aerospace Toolbox'
    'Control System Toolbox'
    'Embedded Coder'
    'Signal Processing Toolbox'
    'Simulink 3D Animation'
    'Robotics System Toolbox'
    'Computer Vision Toolbox'
    'Image Processing Toolbox'
    'Simulink Coder'
    'Simulink Compiler'
    'MATLAB Coder'
    'MATLAB Compiler'
    'UAV Toolbox'
};

installed = ver;
installedNames = {installed.Name};
missing = setdiff(toolboxes, installedNames, 'stable');

if isempty(missing)
    fprintf('All specified toolboxes are installed.\n');
else
    fprintf('The following toolboxes are NOT installed:\n');
    fprintf(' - %s\n', missing{:});
end
