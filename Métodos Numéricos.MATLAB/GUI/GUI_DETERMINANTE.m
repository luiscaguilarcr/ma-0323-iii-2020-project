function varargout = GUI_DETERMINANTE(varargin)
% GUI_DETERMINANTE MATLAB code for GUI_DETERMINANTE.fig
%      GUI_DETERMINANTE, by itself, creates a new GUI_DETERMINANTE or raises the existing
%      singleton*.
%
%      H = GUI_DETERMINANTE returns the handle to a new GUI_DETERMINANTE or the handle to
%      the existing singleton*.
%
%      GUI_DETERMINANTE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DETERMINANTE.M with the given input arguments.
%
%      GUI_DETERMINANTE('Property','Value',...) creates a new GUI_DETERMINANTE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_DETERMINANTE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_DETERMINANTE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_DETERMINANTE

% Last Modified by GUIDE v2.5 02-Feb-2021 22:25:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_DETERMINANTE_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_DETERMINANTE_OutputFcn, ...
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


% --- Executes just before GUI_DETERMINANTE is made visible.
function GUI_DETERMINANTE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_DETERMINANTE (see VARARGIN)

% Choose default command line output for GUI_DETERMINANTE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_DETERMINANTE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_DETERMINANTE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_Matriz_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Matriz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Matriz as text
%        str2double(get(hObject,'String')) returns contents of edit_Matriz as a double


% --- Executes during object creation, after setting all properties.
function edit_Matriz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Matriz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_Aceptar.
function pushbutton_Aceptar_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Aceptar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_Limpiar.
function pushbutton_Limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_Regresar.
function pushbutton_Regresar_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
