function varargout = Question_1(varargin)
% QUESTION_1 MATLAB code for Question_1.fig
%      QUESTION_1, by itself, creates a new QUESTION_1 or raises the existing
%      singleton*.
%
%      H = QUESTION_1 returns the handle to a new QUESTION_1 or the handle to
%      the existing singleton*.
%
%      QUESTION_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QUESTION_1.M with the given input arguments.
%
%      QUESTION_1('Property','Value',...) creates a new QUESTION_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Question_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Question_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Question_1

% Last Modified by GUIDE v2.5 08-Dec-2016 13:47:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Question_1_OpeningFcn, ...
                   'gui_OutputFcn',  @Question_1_OutputFcn, ...
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


% --- Executes just before Question_1 is made visible.
function Question_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Question_1 (see VARARGIN)

% Choose default command line output for Question_1
handles.output = hObject;
[y,Fs] = audioread('Game Show Timekeeper - SOUND EFFECT - Quiz Show.wav');
sound(y,Fs);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Question_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Question_1_OutputFcn(hObject, eventdata, handles) 


global x
x = 0;



% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Get default command line output from handles structure
varargout{1} = handles.output;
for i = 1:61
   
    set(handles.text16,'FontSize',30,'String',num2str(61-i));
    pause(1)
end
clear sound
close
run PopUp_Time.m


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear sound

close
run Boxes_1.m


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear sound

close
run PopUp_Incorrect.m


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear sound

close
run PopUp_Incorrect.m

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear sound

close
run PopUp_Incorrect.m


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
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
