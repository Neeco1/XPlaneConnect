function sendCOMM( comm, socket )
% sendCOMM Sends a command to X-Plane
%
% Inputs
%     comm: The name of the X-Plane command to send.
%     socket (optional): The client to use when sending the command.
%
% Contributors
%   Nicolas Himmelmann

import XPlaneConnect.*

if ~exist('socket', 'var')
    sendCOMMs(comm)
else
    sendCOMMs(comm, socket)
end