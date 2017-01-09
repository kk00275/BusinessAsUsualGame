function varargout = End_Page(varargin)
% END_PAGE MATLAB code for End_Page.fig
%      END_PAGE, by itself, creates a new END_PAGE or raises the existing
%      singleton*.
%
%      H = END_PAGE returns the handle to a new END_PAGE or the handle to
%      the existing singleton*.
%
%      END_PAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in END_PAGE.M with the given input arguments.
%
%      END_PAGE('Property','Value',...) creates a new END_PAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before End_Page_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to End_Page_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help End_Page

% Last Modified by GUIDE v2.5 08-Dec-2016 13:47:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @End_Page_OpeningFcn, ...
                   'gui_OutputFcn',  @End_Page_OutputFcn, ...
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


% --- Executes just before End_Page is made visible.
function End_Page_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to End_Page (see VARARGIN)

% Choose default command line output for End_Page
handles.output = hObject;
[y,Fs] = audioread('Question_music.wav');
sound(y,Fs)


% Update handles structure
guidata(hObject, handles);
 
% UIWAIT makes End_Page wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = End_Page_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
% Get default command line output from handles structure
varargout{1} = handles.output;
set(handles.EndMoney,'FontSize',30,'String',num2str(x));

for i = 1:5
        set(handles.text2,'ForegroundColor','white') 
        pause(0.3)
        set(handles.text2,'ForegroundColor','green') 
        pause(0.3)
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
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
    [y,Fs] = audioread('Question_music.wav');
    sound(y,Fs)
end
