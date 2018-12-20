function sendCOMMs( comms, socket )
% sendCOMMs Sends multiple commands to X-Plane
%
% Inputs
%     comms: An array of commands to send.
%     socket (optional): The client to use when sending the command.
%
% Use
%   1. import XPlaneConnect.*
%   2. cmd1  = 'sim/command/xyz1';
%   3. cmd2  = 'sim/command/xyz2';
%   4. sendCOMMs({cmd1, cmd2}, socket);
%
% Contributors
%   Nicolas Himmelmann

import XPlaneConnect.*

%% Get client
global clients;
if ~exist('socket', 'var')
    assert(isequal(length(clients) < 2, 1), '[sendCOMM] ERROR: Multiple clients open. You must specify which client to use.');
    if isempty(clients)
    	socket = openUDP();
    else
    	socket = clients(1);
    end
end

%% Send command
socket.sendCOMMs(comms);
