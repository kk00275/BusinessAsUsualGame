function varargout = Boxes_9(varargin)
global x
% BOXES_9 MATLAB code for Boxes_9.fig
%      BOXES_9, by itself, creates a new BOXES_9 or raises the existing
%      singleton*.
%
%      H = BOXES_9 returns the handle to a new BOXES_9 or the handle to
%      the existing singleton*.
%
%      BOXES_9('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BOXES_9.M with the given input arguments.
%
%      BOXES_9('Property','Value',...) creates a new BOXES_9 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Boxes_9_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Boxes_9_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Boxes_9

% Last Modified by GUIDE v2.5 07-Dec-2016 22:58:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Boxes_9_OpeningFcn, ...
                   'gui_OutputFcn',  @Boxes_9_OutputFcn, ...
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


% --- Executes just before Boxes_9 is made visible.
function Boxes_9_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Boxes_9 (see VARARGIN)

% Choose default command line output for Boxes_9
handles.output = hObject;
[y,Fs] = audioread('Boxes_music.wav');
sound(y,Fs)

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Boxes_9 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Boxes_9_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
for i = 1:4
        set(handles.pushbutton1,'BackgroundColor','white') 
        pause(0.3)
        set(handles.pushbutton1,'BackgroundColor','blue') 
        pause(0.3)
    end
    set(handles.pushbutton1,'string','£10','ForegroundColor','red','BackgroundColor','blue')
x = x + 10;
pause(2)
close
run Question_10.m

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global x
for i = 1:4
        set(handles.pushbutton2,'BackgroundColor','white') 
        pause(0.3)
        set(handles.pushbutton2,'BackgroundColor','blue') 
        pause(0.3)
    end
    set(handles.pushbutton2,'string','£9,000','ForegroundColor','red','BackgroundColor','blue')
x = x + 9000 ;
pause(2)
close
run Question_10.m

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global x
for i = 1:4
        set(handles.pushbutton3,'BackgroundColor','white') 
        pause(0.3)
        set(handles.pushbutton3,'BackgroundColor','blue') 
        pause(0.3)
    end
    set(handles.pushbutton3,'string','£17,000','ForegroundColor','red','BackgroundColor','blue')
x = x + 17000 ;
pause(2)
close
run Question_10.m

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
for i = 1:4
        set(handles.pushbutton4,'BackgroundColor','white') 
        pause(0.3)
        set(handles.pushbutton4,'BackgroundColor','blue') 
        pause(0.3)
    end
    set(handles.pushbutton4,'string','£5,000','ForegroundColor','red','BackgroundColor','blue')
x = x + 5000 ;
pause(2)
close
run Question_10.m

