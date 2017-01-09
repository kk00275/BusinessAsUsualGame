function varargout = First_Page(varargin)
% FIRST_PAGE MATLAB code for First_Page.fig
%      FIRST_PAGE, by itself, creates a new FIRST_PAGE or raises the existing
%      singleton*.
%
%      H = FIRST_PAGE returns the handle to a new FIRST_PAGE or the handle to
%      the existing singleton*.
%
%      FIRST_PAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIRST_PAGE.M with the given input arguments.
%
%      FIRST_PAGE('Property','Value',...) creates a new FIRST_PAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before First_Page_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to First_Page_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help First_Page

% Last Modified by GUIDE v2.5 08-Dec-2016 13:28:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @First_Page_OpeningFcn, ...
                   'gui_OutputFcn',  @First_Page_OutputFcn, ...
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


% --- Executes just before First_Page is made visible.
function First_Page_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to First_Page (see VARARGIN)

% Choose default command line output for First_Page
handles.output = hObject;
axes(handles.axes1);
imshow('central_bank_dollar.png')

% Update handles structure
[y,Fs] = audioread('Intro_music.wav');
sound(y,Fs)
guidata(hObject, handles);


% UIWAIT makes First_Page wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = First_Page_OutputFcn(hObject, eventdata, handles) 
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

clear sound

close
run Question_1.m


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear sound
close


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
button_state = get(hObject,'Value');
if button_state == get(hObject,'Max')
	set(handles.togglebutton1,'string','Music On');
    clear sound
elseif button_state == get(hObject,'Min')
	set(handles.togglebutton1,'string','Music Off');
    [y,Fs] = audioread('Intro_music.wav');
    sound(y,Fs)
end
