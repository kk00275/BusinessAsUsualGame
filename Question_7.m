function varargout = Question_7(varargin)
% QUESTION_7 MATLAB code for Question_7.fig
%      QUESTION_7, by itself, creates a new QUESTION_7 or raises the existing
%      singleton*.
%
%      H = QUESTION_7 returns the handle to a new QUESTION_7 or the handle to
%      the existing singleton*.
%
%      QUESTION_7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUESTION_7.M with the given input arguments.
%
%      QUESTION_7('Property','Value',...) creates a new QUESTION_7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Question_7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Question_7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Question_7

% Last Modified by GUIDE v2.5 16-Dec-2016 12:39:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Question_7_OpeningFcn, ...
                   'gui_OutputFcn',  @Question_7_OutputFcn, ...
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


% --- Executes just before Question_7 is made visible.
function Question_7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Question_7 (see VARARGIN)

% Choose default command line output for Question_7
handles.output = hObject;
[y,Fs] = audioread('Game Show Timekeeper - SOUND EFFECT - Quiz Show.wav');
sound(y,Fs);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Question_7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Question_7_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
% Get default command line output from handles structure
varargout{1} = handles.output;
set(handles.Q7lbl,'FontSize',30,'String',num2str(x));

for i = 1:61
   
    set(handles.text8,'FontSize',30,'String',num2str(61-i));
    pause(1)
end
clear sound
close
run PopUp_Time.m


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear sound

close
run PopUp_Incorrect.m

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear sound

close
run Boxes_7.m

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear sound

close
run PopUp_Incorrect.m

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear sound

close
run PopUp_Incorrect.m

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
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
    [y,Fs] = audioread('Game Show Timekeeper - SOUND EFFECT - Quiz Show.wav');
    sound(y,Fs)
end
