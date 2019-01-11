function sendCOMM( comm, socket )
% sendCOMM Sends a command to X-Plane
%
% Inputs
%     comm: The name of the X-Plane command to send.
%     socket (optional): The client to use when sending the command.

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

%%Send command
socket.sendCOMM(comm);
