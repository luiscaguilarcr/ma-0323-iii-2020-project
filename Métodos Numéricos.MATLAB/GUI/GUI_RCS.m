function varargout = GUI_RCS(varargin)
% GUI_RCS MATLAB code for GUI_RCS.fig
%      GUI_RCS, by itself, creates a new GUI_RCS or raises the existing
%      singleton*.
%
%      H = GUI_RCS returns the handle to a new GUI_RCS or the handle to
%      the existing singleton*.
%
%      GUI_RCS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_RCS.M with the given input arguments.
%
%      GUI_RCS('Property','Value',...) creates a new GUI_RCS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_RCS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_RCS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_RCS

% Last Modified by GUIDE v2.5 02-Feb-2021 20:29:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @GUI_RCS_OpeningFcn, ...
    'gui_OutputFcn',  @GUI_RCS_OutputFcn, ...
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


% --- Executes just before GUI_RCS is made visible.
function GUI_RCS_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_RCS (see VARARGIN)

% Choose default command line output for GUI_RCS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_RCS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_RCS_OutputFcn(~, ~, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

syms x;
%fx= str2sym(get(handles.Funcion,'String'));
fx= (get(handles.Funcion,'String'));
funTemp=str2sym(fx);
a= str2double(get(handles.valorA,'String'));
b= str2double(get(handles.valorB,'String'));
n= str2double(get(handles.valorN,'String'));
if  rem(n,2)==1 || isnan(a) || isnan(b) || isnan(n) || isempty(fx) || n<0
    mensaje=msgbox('Estimado Usuario, has ingresado caracteres incorrectos!','Error','error');
else
    f = inline(fx);
    derivada1=diff(funTemp);
    
    derivada2=diff(derivada1);
    derivada3=diff(derivada2);
    derivada4=diff(derivada3);
    set(handles.d1,'String',sprintf('%s',derivada1));
    set(handles.d2,'String',sprintf('%s',derivada2));
    set(handles.d3,'String',sprintf('%s',derivada3));
    set(handles.d4,'String',sprintf('%s',derivada4));
    %fprintf('El Valor de l:%s ',derivada1)
    
    h=(b-a)/n;
    fprintf('El Valor de H es:%9.9f \n\n ',h)
    set(handles.valorH,'String',sprintf('%9.9f',h));
    
    %     if rem(n,2)==1
    %         fprintf('\n Inválido valor de n!!!');
    %         n=input('\n Recordá que el valor de n tiene que ser par. ');
    %     end
    for k=1:1:n
        x(k)=a+k*h;
        y(k)=f(x(k));
    end
    so=0;se=0;
    for k=1:1:n-1
        if rem(k,2)==1
            so=so+y(k);%Sumo pares
        else
            se=se+y(k); %Sumo Impares
        end
    end
    
    gx = inline(derivada4); 
    puntoMedio= (a+b)/2; %
    errorDerivada=gx(puntoMedio); %Evaluamos en la 4ta derivada, el valor medio calculado
    error=-((b-a)/180)*h^4*errorDerivada;%Calculamos el Error
    
    
    set(handles.valorError,'String',sprintf('%s',error)); %Mostramos el error por pantalla
    
    answer=h/3*(f(a)+f(b)+4*so+2*se);%Aplicamos la formula de la RCS
    set(handles.valorIntegral,'String',sprintf('%9.9f',answer)); %Mostramos valor aproximacion en pantalla
    % elseif rem(a,2)==1
    %    advertencia=msgbox('El N debe ser un valor PAR!');
end


function valorB_Callback(hObject, eventdata, handles)
% hObject    handle to valorB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valorB as text
%        str2double(get(hObject,'String')) returns contents of valorB as a double


% --- Executes during object creation, after setting all properties.
function valorB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valorB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Funcion_Callback(hObject, eventdata, handles)
% hObject    handle to Funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Funcion as text
%        str2double(get(hObject,'String')) returns contents of Funcion as a double


% --- Executes during object creation, after setting all properties.
function Funcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valorA_Callback(hObject, eventdata, handles)
% hObject    handle to valorA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valorA as text
%        str2double(get(hObject,'String')) returns contents of valorA as a double


% --- Executes during object creation, after setting all properties.
function valorA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valorA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valorN_Callback(hObject, eventdata, handles)
% hObject    handle to valorN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valorN as text
%        str2double(get(hObject,'String')) returns contents of valorN as a double


% --- Executes during object creation, after setting all properties.
function valorN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valorN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
set(handles.valorIntegral,'String','');
set(handles.valorH,'String','');
set(handles.valorError,'String','');
set(handles.valorN,'String','');
set(handles.valorA,'String','');
set(handles.valorB,'String','');
set(handles.Funcion,'String','');
set(handles.d1,'String','');
set(handles.d2,'String','');
set(handles.d3,'String','');
set(handles.d4,'String','');
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
