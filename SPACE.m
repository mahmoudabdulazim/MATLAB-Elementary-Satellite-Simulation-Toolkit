function varargout = SPACE(varargin)
% SPACE MATLAB code for SPACE.fig
%      SPACE, by itself, creates a new SPACE or raises the existing
%      singleton*.
%
%      H = SPACE returns the handle to a new SPACE or the handle to
%      the existing singleton*.
%
%      SPACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPACE.M with the given input arguments.
%
%      SPACE('Property','Value',...) creates a new SPACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SPACE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SPACE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SPACE

% Last Modified by GUIDE v2.5 10-Apr-2016 14:00:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SPACE_OpeningFcn, ...
                   'gui_OutputFcn',  @SPACE_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SPACE is made visible.
function SPACE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SPACE (see VARARGIN)

% Choose default command line output for SPACE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SPACE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SPACE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
varargout{2} = handles;
