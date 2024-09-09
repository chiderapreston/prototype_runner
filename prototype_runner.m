% Main script

% Mock function to simulate get_spawn_points
function spawn_points = mock_get_spawn_points()
    % Simulate spawn points as an array of structs with a 'location' field
    spawn_points = struct('location', num2cell(1:10));  % Example locations: 1, 2, 3, ..., 10
end

% Mock function to simulate get_map
function map = mock_get_map()
    % Assign the mock_get_spawn_points function to get_spawn_points method
    map.get_spawn_points = @mock_get_spawn_points;
end

% Initialize the world object
world = struct();
world.get_map = @mock_get_map;  % Assign the mock_get_map function to the get_map method

% Example selectedCameras array
selectedCameras = {'sensor.camera.rgb', 'sensor.camera.depth'};

% Call the prototype_testing function with the world object
prototype_testing(world, selectedCameras);
