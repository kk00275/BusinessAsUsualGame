function varargout = Boxes_1(varargin)
global score
score = 0 ;

% BOXES_1 MATLAB code for Boxes_1.fig
%      BOXES_1, by itself, creates a new BOXES_1 or raises the existing
%      singleton*.
%
%      H = BOXES_1 returns the handle to a new BOXES_1 or the handle to
%      the existing singleton*.
%
%      BOXES_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BOXES_1.M with the given input arguments.
%
%      BOXES_1('Property','Value',...) creates a new BOXES_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Boxes_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Boxes_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Boxes_1

% Last Modified by GUIDE v2.5 07-Dec-2016 17:23:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Boxes_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Boxes_1_OutputFcn, ...
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


% --- Executes just before Boxes_1 is made visible.
function Boxes_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Boxes_1 (see VARARGIN)

% Choose default command line output for Boxes_1
handles.output = hObject;
[y,Fs] = audioread('Boxes_music.wav');
sound(y,Fs)

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Boxes_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Boxes_1_OutputFcn(hObject, eventdata, handles) 
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
global score

 for i = 1:4
        set(handles.pushbutton1,'BackgroundColor','white') 
        pause(0.3)
        set(handles.pushbutton1,'BackgroundColor','blue') 
        pause(0.3)
 end
    set(handles.pushbutton1,'string','£3,000','ForegroundColor','red','BackgroundColor','blue') 
score = score + 3000;

pause(2)
close
run Question_2.m


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global score
for i = 1:4
        set(handles.pushbutton4,'BackgroundColor','white') 
        pause(0.3)
        set(handles.pushbutton4,'BackgroundColor','blue') 
        pause(0.3)
    end
    set(handles.pushbutton4,'string','£1,000','ForegroundColor','red','BackgroundColor','blue')
score = score + 1000;

pause(2)
close
run Question_2.m

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global score 
for i = 1:4
        set(handles.pushbutton5,'BackgroundColor','white') 
        pause(0.3)
        set(handles.pushbutton5,'BackgroundColor','blue') 
        pause(0.3)
    end
    set(handles.pushbutton5,'string','£5,000','ForegroundColor','red','BackgroundColor','blue')
score = score + 5000;

pause(2)
close
run Question_2.m

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global score
for i = 1:4
        set(handles.pushbutton6,'BackgroundColor','white') 
        pause(0.3)
        set(handles.pushbutton6,'BackgroundColor','blue') 
        pause(0.3)
    end
    set(handles.pushbutton6,'string','£20,000','ForegroundColor','red','BackgroundColor','blue')
score = score + 20000;
pause(2)
close
run Question_2.m
