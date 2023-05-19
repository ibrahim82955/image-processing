function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 19-May-2022 09:39:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes12.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in upload_photo.
function upload_photo_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
% hObject    handle to upload_photo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=uigetfile('*.*');
a=imread(a);
axes(handles.axes1);
imshow(a)
setappdata(0,'b',a);
setappdata(0,'a',a);





% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in nag.
function nag_Callback(hObject, eventdata, handles)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
handles.panel1.Visible = 'on';
% hObject    handle to nag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
b=getappdata(0,'b');
L = 2 ^ 8;
negImg = (L - 1) - b;
axes(handles.axes2);
imshow(negImg)
setappdata(0,'b',negImg);



% --- Executes on button press in down.
function down_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to down (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c=getappdata(0,'b');
v=getappdata(0,'a');


[rows, cols, matricesNo] = size(c);
SamplingFactor = 16;
for metricesIndex=1:1:matricesNo
    resizedImage(:,:,metricesIndex) = subSampling(c(:,:,metricesIndex),SamplingFactor);
end

axes(handles.axes2);
imshow(resizedImage)
setappdata(0,'b',resizedImage);

function [outImage] = subSampling(image, subSamplingFactor)
[rows, cols] = size(image);
outImage = image(1:subSamplingFactor:rows,1:subSamplingFactor:cols);



% --- Executes on button press in upsize.
function upsize_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to upsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
originalImage=getappdata(0,'b');
[rows, cols,~] = size(originalImage);
upSamplingFactor=16;
newRows = rows*upSamplingFactor;
newCols = cols*upSamplingFactor;
newImage = zeros(newRows, newCols);
rowStart = 1;
colStart=1;
for rowsIndex=1:upSamplingFactor:newRows
    colStart = 1;
    for columnIndex=1:upSamplingFactor:newCols
        
        newImage(rowsIndex:rowsIndex+upSamplingFactor-1,columnIndex:columnIndex+upSamplingFactor-1) = originalImage(rowStart,colStart);
    colStart = colStart + 1;
    end
    rowStart = rowStart + 1;
end
% for row = 1:3:origImRows*3   
%     for column = 1:3:origImColumns*3
%         newImage(row:row+2, column:column+2)=originalImage(rowCounter,columnCounter);   
%         columnCounter = columnCounter+1;    
%     end
%     rowCounter=rowCounter+1;
%     columnCounter=1;
%      
% end
axes(handles.axes2);
imshow(newImage/255);
newImage=uint8(newImage);
setappdata(0,'b',newImage);
% g=imresize(g,10);
 



% --- Executes on button press in gray.
function gray_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes3,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'b');
b=getappdata(0,'a');
[row,cols,matrix]=size(a);
if matrix >1
a=rgb2gray(a);
axes(handles.axes2);
imshow(a);
setappdata(0,'b',a);
else
setappdata(0,'b',a);
end

[row,cols,matrix]=size(b);
if matrix >1
b=rgb2gray(b);
setappdata(0,'a',b);
else
setappdata(0,'a',b);
end


m=getappdata(0,'l');
[row,cols,matrix]=size(m);
if matrix >1
m=rgb2gray(m);
axes(handles.axes2);
imshow(m);
setappdata(0,'l',m);
else
setappdata(0,'l',m);
end






% --- Executes on button press in log.
function log_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off'; % Show 4 axes.
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
logg=getappdata(0,'b');
c=str2double(get(handles.edit1, 'String'));
orImage=im2double(logg);
lo = c * log((orImage + 1));
axes(handles.axes2);
imshow(lo);
lo=im2uint8(lo);
setappdata(0,'b',lo);




% --- Executes on button press in str.
function str_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes3,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to str (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
logg=getappdata(0,'b');
[origImRows, origImColumns, matricesNo] = size(logg);
maxR = max(max(max(logg)));
minR =min(min(min(logg)));
maxs=str2double(get(handles.edit3, 'String'));
mins=str2double(get(handles.edit4, 'String'));

for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
contrastStretching(rows,cols,:) = ((maxs - mins)/(maxR - minR)) * (logg(rows , cols) - minR)+mins;

    end
end
axes(handles.axes2);
imshow(contrastStretching);
setappdata(0,'b',contrastStretching);



% --- Executes on button press in hist.
function hist_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to hist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=getappdata(0,'b');
[rows,cols]=size(s);
counts=zeros(1,256);
for i=1:rows
 for j=1:cols
    grayLevel=s(i,j);
    counts(grayLevel+1)=counts(grayLevel+1)+1;
 end
 
end

axes(handles.axes1);
imshow(s);
grayLevels = 0 : 255;
axes(handles.axes2);
bar(grayLevels, counts, 'BarWidth', 1, 'FaceColor', 'b');
xlabel('Gray Level', 'FontSize', 20);
ylabel('Pixel Count', 'FontSize', 20);
title('Histogram', 'FontSize', 20);
grid on;

 



% --- Executes on button press in pl.
function pl_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to pl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=getappdata(0,'b');


y=str2double(get(handles.edit7, 'String'));

double_value = im2double(d);
out3= c*(double_value.^y);
axes(handles.axes2)
imshow(out3);
out3=im2uint8(out3);
setappdata(0,'b',out3);



% --- Executes on button press in histo.
function histo_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to histo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=getappdata(0,'b'); 
numofpixels=size(a,1)*size(a,2);



HIm=uint8(zeros(size(a,1),size(a,2)));

freq=zeros(256,1);

probc=zeros(256,1);

output=zeros(256,1);
for i=1:size(a,1)

    for j=1:size(a,2)

        value=a(i,j);

        freq(value+1)=freq(value+1)+1;

    end

end


sum=0;
no_bins=255;
%The cumulative distribution probability is calculated. 

for i=1:size(freq)

   sum=sum+freq(i);

   probc(i)=sum/numofpixels;

   output(i)=round(probc(i)*no_bins);

end

for i=1:size(a,1)

    for j=1:size(a,2)

            HIm(i,j)=output(a(i,j)+1);

    end

end
% Plot top plot.


axes(handles.axes2)
imshow(HIm);
setappdata(0,'b',HIm);


function MedianFilter_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to MedianFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray_image = getappdata(0,'b');    


[rows,cols]=size(gray_image);
out=gray_image;
for i=2:rows-1
 for j=2:cols-1
     temp = [gray_image(i-1, j-1) gray_image(i-1, j) gray_image(i-1, j + 1) gray_image(i, j-1) gray_image(i, j) gray_image(i, j + 1) gray_image(i + 1, j-1) gray_image(i + 1, j) gray_image(i + 1, j + 1)];
     temp = sort(temp);
     out(i, j)= temp(5);
end
end
axes(handles.axes2);
imshow(out);
title("Median Image");
setappdata(0,'b',out);



% --- Executes on button press in slicing.
function slicing_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to slicing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.edit9, 'String'));
if a==1
    origImage = getappdata(0,'b');
[origImRows, origImColumns, matricesNo] = size(origImage);
bcopyimge=origImage;

for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
         
if (origImage(rows,cols,:)>=100)&(origImage(rows,cols,:)<=150)
    
    origImage(rows,cols,:)=255;
else
    origImage(rows,cols,:)=0;
end
    

    end
end
axes(handles.axes2);
imshow(origImage);
setappdata(0,'b',origImage);

else
 origImage = getappdata(0,'b');
[origImRows, origImColumns, ] = size(origImage);
 bcopyimge=origImage;

for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
         
if (origImage(rows,cols,:)>=100) & (origImage(rows,cols,:)<=150)
    
    origImage(rows,cols,:)=0;
else
    origImage(rows,cols,:)= origImage(rows,cols,:);
end
    

    end
end
axes(handles.axes2);
imshow(origImage);
setappdata(0,'b',origImage);
    
end



% --- Executes on button press in therdshold.
function therdshold_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to therdshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
origImage = getappdata(0,'b');
[origImRows, origImColumns, matricesNo] = size(origImage);
bcopyimge=origImage;
theredshold=str2double(get(handles.edit10, 'String'));
for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
         
if origImage(rows,cols,:)<theredshold 
    origImage(rows,cols,:)=0;
else
    origImage(rows,cols,:)=255;
end
    

    end
end
axes(handles.axes2);
imshow(origImage);
setappdata(0,'b',origImage);


% --- Executes on button press in gray_scale.
function gray_scale_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'off';
handles.axes3.Visible = 'on'; % Show 4 axes.
handles.axes4.Visible = 'on'; % Show 4 axes.
handles.axes5.Visible = 'on'; % Show 4 axes.
handles.axes6.Visible = 'on'; % Show 4 axes.
handles.axes7.Visible = 'on'; % Show 4 axes.
handles.axes8.Visible = 'on'; % Show 4 axes.
handles.axes9.Visible = 'on'; % Show 4 axes.
handles.axes10.Visible = 'on'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to gray_scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
scale=getappdata(0,'b');
k = 8;
while (k > 0)
 target_levels = 2^k;
 target_compr_factor = 256 / target_levels;
 reduced_image = uint8(floor(double(scale)/256 * target_levels) * target_compr_factor);

 handles.hAxes = [ handles.axes3, handles.axes6, handles.axes9,handles.axes4,handles.axes7,handles.axes10,handles.axes5,handles.axes8];
axes( handles.hAxes(k) );
 imshow(reduced_image, [0 255]);
 k = k - 1; 
end






% --- Executes on button press in average.
function average_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray_image = getappdata(0,'b');
[rows,cols]=size(gray_image);

outimage = gray_image;

for i=2:rows-1
   for j=2:cols-1

  temp = (gray_image(i-1, j-1)*1/9 + gray_image(i-1, j)*1/9 + gray_image(i-1,j+1)*1/9 + gray_image(i, j-1)*1/9 + gray_image(i,j)*1/9 + gray_image(i , j+1)*1/9 + gray_image(i+1, j-1)*1/9 + gray_image(i+1,j)*1/9 + gray_image(i+1 , j+1)*1/9);
   
    outimage(i, j)= temp;
%    temp=[gray_image(i-1, j-1)  gray_image(i-1, j)  gray_image(i-1,j+1)  gray_image(i, j-1)  gray_image(i,j)  gray_image(i , j+1)  gray_image(i+1, j-1) gray_image(i+1,j)  gray_image(i+1 , j+1)]; 
% outimage(i,j)=mean(temp);

    end

end
axes(handles.axes2);
imshow(outimage)
setappdata(0,'b',outimage);











% --- Executes on button press in bit.
function bit_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'off';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to bit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
origImage = getappdata(0,'b');
[origImRows, origImColumns,matricesNo] = size(origImage);
bcopyimge=zeros(origImRows,origImColumns,8);
for k=1:8
  for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
        bcopyimge(rows,cols,k)=bitget(origImage(rows,cols),k);      
    end
  end
  
handles.hAxes = [ handles.axes3, handles.axes6, handles.axes9,handles.axes4,handles.axes7,handles.axes10,handles.axes5,handles.axes8];
axes( handles.hAxes(k) );
imshow(bcopyimge(:,:,k));
 
  
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function data_Callback(hObject, eventdata, handles)
% hObject    handle to data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of data as text
%        str2double(get(hObject,'String')) returns contents of data as a double


% --- Executes during object creation, after setting all properties.
function data_CreateFcn(hObject, eventdata, handles)
% hObject    handle to data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in weghtie.
function weghtie_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to weghtie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray_image = getappdata(0,'b');
[rows,cols]=size(gray_image);
out = gray_image;
for i=2:rows-1
   for j=2:cols-1
    temp = (gray_image(i-1, j-1)*1/16 + gray_image(i-1, j)*2/16 + gray_image(i-1,j+1)*1/16 + gray_image(i, j-1)*2/16 + gray_image(i,j)*4/16 + gray_image(i , j+1)*2/16 + gray_image(i+1, j-1)*1/16 + gray_image(i+1,j)*2/16 + gray_image(i+1 , j+1)*1/16);
       out(i, j)= temp;
    end
end
axes(handles.axes2);
imshow(out)
setappdata(0,'b',out);
% --- Executes on button press in photo.
function photo_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
b=uigetfile('*.*');
b=imread(b);
axes(handles.axes2);
imshow(b)
setappdata(0,'l',b);
% hObject    handle to photo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in subtract.
function subtract_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'off';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to subtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
origImage = getappdata(0,'a');
x=getappdata(0,'l');
[origImRows, origImColumns, ] = size(origImage);
bcopyimge=zeros(origImRows,origImColumns);
for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
        
        bcopyimge(rows,cols)= (origImage(rows,cols)) - (x(rows,cols));
   end
end
bcopyimge=uint8(bcopyimge);
axes(handles.axes1);
imshow(origImage)
axes(handles.axes2);
imshow(x)
axes(handles.axes12);
imshow(bcopyimge)


% --- Executes on button press in max.
function max_Callback(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to MedianFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray_image = getappdata(0,'b');    
[rows,cols]=size(gray_image);
out=gray_image;
for i=2:rows-1
 for j=2:cols-1
     temp = [gray_image(i-1, j-1) gray_image(i-1, j) gray_image(i-1, j + 1) gray_image(i, j-1) gray_image(i, j) gray_image(i, j + 1) gray_image(i + 1, j-1) gray_image(i + 1, j) gray_image(i + 1, j + 1)];
     temp =max(temp);
     out(i, j)= temp;
end
end
axes(handles.axes2);
imshow(out);
title("max Image");
setappdata(0,'b',out);


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in min.
function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
gray_image = getappdata(0,'b');    
[rows,cols]=size(gray_image);
out=gray_image;
for i=2:rows-1
 for j=2:cols-1
     temp = [gray_image(i-1, j-1) gray_image(i-1, j) gray_image(i-1, j + 1) gray_image(i, j-1) gray_image(i, j) gray_image(i, j + 1) gray_image(i + 1, j-1) gray_image(i + 1, j) gray_image(i + 1, j + 1)];
     temp =min(temp);
     out(i, j)= temp;
end
end
axes(handles.axes2);
imshow(out);
title("min Image");
setappdata(0,'b',out);


% --- Executes on button press in binary.
function binary_Callback(hObject, eventdata, handles)
% hObject    handle to binary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
gray_image = getappdata(0,'b');
s=str2double(get(handles.edit12, 'String'));
gray_image=im2bw(gray_image,s);
axes(handles.axes2);
imshow(gray_image);
title("bin image");
setappdata(0,'b',gray_image);








% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over edit11.
function edit11_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sd.
function sd_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
gray_image = getappdata(0,'b');
% hObject    handle to sd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
orgimage=double(gray_image);
[rows,cols]=size(gray_image);
mask=[0,1,0;1,-4,1;0,1,0];
outimage = gray_image;
for i=2:rows-1
   for j=2:cols-1

temp= mask.*orgimage(i-1:i+1,j-1:j+1);   
value=sum(temp(:));    
outimage(i, j)= value;

   end
end
axes(handles.axes2);
imshow(outimage);
setappdata(0,'b',outimage);


% --- Executes on button press in sharp.
function sharp_Callback(hObject, eventdata, handles)
% hObject    handle to sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.panel1.Visible = 'off';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
gray_image = getappdata(0,'b');
% hObject    handle to sd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
orgimage=double(gray_image);
[rows,cols]=size(gray_image);
mask=[0,1,0;1,-4,1;0,1,0];
outimage = gray_image;
for i=2:rows-1
   for j=2:cols-1

temp= mask.*orgimage(i-1:i+1,j-1:j+1);   
value=sum(temp(:));    
outimage(i, j)= value;

   end
end
x= gray_image - outimage;
axes(handles.axes12);
imshow(x);
axes(handles.axes2);
imshow(outimage);
setappdata(0,'b',x);
% originalImage = imread("grayImage.png");  
% % gray_image = rgb2gray(originalImage);  
% subplot(1, 2, 1),
% % displaying the image
% imshow(originalImage);
% title("Original image");
% 
% gray_image = double(originalImage);
% [rows,cols]=size(gray_image);
% mask = [0,-1,0;-1,5,-1;0,-1,0];
% out = gray_image;
% for i=2:rows-1
%  for j=2:cols-1
%      temp = mask.*gray_image(i-1:i+1,j-1:j+1);
%      value = sum(temp(:));
%      out(i, j)= value;
% end
% end
% out = uint8(out);
% subplot(1, 2, 2),
% imshow(out);
% title("sharp image");


% --- Executes on button press in fd.
function fd_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off';
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';

% hObject    handle to fd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.panel1.Visible = 'on';
I=getappdata(0,'b');
c=str2double(get(handles.edit13, 'String'));
     
if c==1
    BW1 = edge(I,'sobel');
axes(handles.axes2);
imshow(BW1);
elseif c==2
        BW3 = edge(I,'Roberts');
axes(handles.axes2);
imshow(BW3);
    else
        BW2 = edge(I,'canny');

axes(handles.axes2);
imshow(BW2);
setappdata(0,'b',BW2);
end

     




function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in addition.
function addition_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to subtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
origImage = getappdata(0,'b');
theredshold=str2double(get(handles.edit14, 'String'));
[origImRows, origImColumns, ] = size(origImage);
bcopyimge=zeros(origImRows,origImColumns);
for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
        
        bcopyimge(rows,cols)= (origImage(rows,cols)) + theredshold;
   end
end
bcopyimge=uint8(bcopyimge);
axes(handles.axes2);
imshow(bcopyimge);
setappdata(0,'b',bcopyimge);



% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'color' ,[0 1 0])



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'color' ,[1 1 0])


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf,'color' ,[0 0 1]);


% --- Executes on button press in sobal.
function sobal_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to sobal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
originalImage = getappdata(0,'b');
% gray_image = rgb2gray(originalImage);  
gray_image = double(originalImage);
[rows,cols]=size(gray_image);
% mask = [-1 -2 -1;0 0 0;1 2 1];
mask = [-1 0 1;-2 0 2;-1 0 1];
out = gray_image;
for i=2:rows-1
 for j=2:cols-1
     temp = mask.*gray_image(i-1:i+1,j-1:j+1);
     value = sum(temp(:));
     out(i, j)= value;
end
end
out=uint8(out);
axes(handles.axes2);
imshow(out);
title("edge detection");
setappdata(0,'b',out);


% --- Executes on button press in ILPF.
function ILPF_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to ILPF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input_image =getappdata(0,'b');  
[M, N] = size(input_image, [1 2]); 
FT_img = fft2(im2double(input_image));

D0=str2double(get(handles.edit15, 'String'));

% Designing filter
u = 0:(M-1);
idx = find(u>M/2);
u(idx) = u(idx)-M;
v = 0:(N-1);
idy = find(v>N/2);
v(idy) = v(idy)-N;

% MATLAB library function meshgrid(v, u) returns
% 2D grid which contains the coordinates of vectors
% v and u. Matrix V with each row is a copy 
% of v, and matrix U with each column is a copy of u
[V, U] = meshgrid(v, u);
  
% Calculating Euclidean Distance
D = sqrt(U.^2+V.^2);
  
% Comparing with the cut-off frequency and 
% determining the filtering mask
H = double(D <= D0);
  
% Convolution between the Fourier Transformed
% image and the mask
G = H.*FT_img;
  
% Getting the resultant image by Inverse Fourier Transform
% of the convoluted image using MATLAB library function 
% ifft2 (2D inverse fast fourier transform)  
output_image = real(ifft2(double(G)));
% Displaying Input Image and Output Image
axes(handles.axes2);
imshow(output_image,[]);
% image8Bit = uint8(255 * mat2gray(output_image));
image8Bit=im2uint8(output_image);
setappdata(0,'b',image8Bit);

% --- Executes on button press in BLPF.
function BLPF_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to BLPF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input_image = getappdata(0,'b');  
[M, N] = size(input_image, [1 2]); 
FT_img = fft2(im2double(input_image));
D0 = 15; 
n=2^(str2double(get(handles.edit16, 'String')));
% Designing filter
u = 0:(M-1);
idx = find(u>M/2);
u(idx) = u(idx)-M;
v = 0:(N-1);
idy = find(v>N/2);
v(idy) = v(idy)-N;

% MATLAB library function meshgrid(v, u) returns
% 2D grid which contains the coordinates of vectors
% v and u. Matrix V with each row is a copy 
% of v, and matrix U with each column is a copy of u
[V, U] = meshgrid(v, u);
  
% Calculating Euclidean Distance
D = sqrt(U.^2+V.^2);

D = D./ D0;
% Comparing with the cut-off frequency and 
% determining the filtering mask
H = 1./((1+D).^n);
  
% Convolution between the Fourier Transformed
% image and the mask
G = H.*FT_img;
  
% Getting the resultant image by Inverse Fourier Transform
% of the convoluted image using MATLAB library function 
% ifft2 (2D inverse fast fourier transform)  
output_image = real(ifft2(double(G)));
% Displaying Input Image and Output Image
axes(handles.axes2);
imshow(output_image,[]);
image8Bit = uint8(255 * mat2gray(output_image));
% output = uint8(output_image);
setappdata(0,'b',image8Bit);


% --- Executes on button press in GLPF.
function GLPF_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off';
% hObject    handle to GLPF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input_image = getappdata(0,'b');
[M, N] = size(input_image, [1 2]); 
FT_img = fft2(im2double(input_image));
D0 = 15; 
D0 = (D0^2)*2;
% Designing filter
u = 0:(M-1);
idx = find(u>M/2);
u(idx) = u(idx)-M;
v = 0:(N-1);
idy = find(v>N/2);
v(idy) = v(idy)-N;

% MATLAB library function meshgrid(v, u) returns
% 2D grid which contains the coordinates of vectors
% v and u. Matrix V with each row is a copy 
% of v, and matrix U with each column is a copy of u
[V, U] = meshgrid(v, u);
  
% Calculating Euclidean Distance
D = sqrt(U.^2+V.^2);

D = -D.^2;
% Comparing with the cut-off frequency and 
% determining the filtering mask
H = exp(D/D0);
  
% Convolution between the Fourier Transformed
% image and the mask
G = H.*FT_img;
  
% Getting the resultant image by Inverse Fourier Transform
% of the convoluted image using MATLAB library function 
% ifft2 (2D inverse fast fourier transform)  
output_image = real(ifft2(double(G)));
% Displaying Input Image and Output Image

axes(handles.axes2);
imshow(output_image,[]);
% output  = uint8(255 * mat2gray(output_image));
output=im2uint8(output_image);
setappdata(0,'b',output);




function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in GHPF.
function GHPF_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off';
% hObject    handle to GLPF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input_image = getappdata(0,'b');
[M, N] = size(input_image, [1 2]); 
FT_img = fft2(im2double(input_image));
D0 = 15; 
D0 = (D0^2)*2;
% Designing filter
u = 0:(M-1);
idx = find(u>M/2);
u(idx) = u(idx)-M;
v = 0:(N-1);
idy = find(v>N/2);
v(idy) = v(idy)-N;

% MATLAB library function meshgrid(v, u) returns
% 2D grid which contains the coordinates of vectors
% v and u. Matrix V with each row is a copy 
% of v, and matrix U with each column is a copy of u
[V, U] = meshgrid(v, u);
  
% Calculating Euclidean Distance
D = sqrt(U.^2+V.^2);

D = -D.^2;
% Comparing with the cut-off frequency and 
% determining the filtering mask
H = 1-exp(D/D0);
  
% Convolution between the Fourier Transformed
% image and the mask
G = H.*FT_img;
  
% Getting the resultant image by Inverse Fourier Transform
% of the convoluted image using MATLAB library function 
% ifft2 (2D inverse fast fourier transform)  
output_image = real(ifft2(double(G)));
% Displaying Input Image and Output Image

axes(handles.axes2);
imshow(output_image,[]);
% output  = uint8(255 * mat2gray(output_image));
output=im2uint8(output_image);
setappdata(0,'b',output);



% --- Executes on button press in BHPF.
function BHPF_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to BLPF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input_image = getappdata(0,'b');  
[M, N] = size(input_image, [1 2]); 
FT_img = fft2(im2double(input_image));
D0 = 15; 
n=2^(str2double(get(handles.edit17, 'String')));
% Designing filter
u = 0:(M-1);
idx = find(u>M/2);
u(idx) = u(idx)-M;
v = 0:(N-1);
idy = find(v>N/2);
v(idy) = v(idy)-N;

% MATLAB library function meshgrid(v, u) returns
% 2D grid which contains the coordinates of vectors
% v and u. Matrix V with each row is a copy 
% of v, and matrix U with each column is a copy of u
[V, U] = meshgrid(v, u);
  
% Calculating Euclidean Distance
D = sqrt(U.^2+V.^2);

D = D0./ D;
% Comparing with the cut-off frequency and 
% determining the filtering mask
H = 1./((1+D).^n);
  
% Convolution between the Fourier Transformed
% image and the mask
G = H.*FT_img;
  
% Getting the resultant image by Inverse Fourier Transform
% of the convoluted image using MATLAB library function 
% ifft2 (2D inverse fast fourier transform)  
output_image = real(ifft2(double(G)));
% Displaying Input Image and Output Image
axes(handles.axes2);
imshow(output_image,[]);
% output  = uint8(255 * mat2gray(output_image));
output=im2uint8(output_image);
setappdata(0,'b',output);



% --- Executes on button press in pushbutton47.


% --- Executes on button press in IHPF.
function IHPF_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to ILPF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input_image =getappdata(0,'b');  
[M, N] = size(input_image, [1 2]); 
FT_img = fft2(im2double(input_image));

D0=str2double(get(handles.edit18, 'String'));

% Designing filter
u = 0:(M-1);
idx = find(u>M/2);
u(idx) = u(idx)-M;
v = 0:(N-1);
idy = find(v>N/2);
v(idy) = v(idy)-N;

% MATLAB library function meshgrid(v, u) returns
% 2D grid which contains the coordinates of vectors
% v and u. Matrix V with each row is a copy 
% of v, and matrix U with each column is a copy of u
[V, U] = meshgrid(v, u);
  
% Calculating Euclidean Distance
D = sqrt(U.^2+V.^2);
  
% Comparing with the cut-off frequency and 
% determining the filtering mask
H = double(D > D0);
  
% Convolution between the Fourier Transformed
% image and the mask
G = H.*FT_img;
  
% Getting the resultant image by Inverse Fourier Transform
% of the convoluted image using MATLAB library function 
% ifft2 (2D inverse fast fourier transform)  
output_image = real(ifft2(double(G)));
% Displaying Input Image and Output Image
axes(handles.axes2);
imshow(output_image,[]);
% output  = uint8(255 * mat2gray(output_image));
output=im2uint8(output_image);
setappdata(0,'b',output);

% --- Executes on button press in backto.
function backto_Callback(hObject, eventdata, handles)
% hObject    handle to backto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
b=getappdata(0,'a');
setappdata(0,'b',b);
axes(handles.axes2);
imshow(b);

function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf, 'color',[1 0 1]);


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf, 'color',[0 0 0]);


% --- Executes on button press in inverse.
function inverse_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
% hObject    handle to inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'b');

ad=im2double(a);
x=ad;
[r,c]=size(ad);
factor=str2double(get(handles.edit19, 'String'));
for i=1:r
    for j = 1:c
  x(i,j)= exp(ad(i,j)^factor)-1;
    end
end
axes(handles.axes2);
imshow(x);
x= uint8(255 * mat2gray(x));
setappdata(0,'b',x);




function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in subtraction.
function subtraction_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to subtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
origImage = getappdata(0,'b');
theredshold=str2double(get(handles.edit20, 'String'));
[origImRows, origImColumns, ] = size(origImage);
bcopyimge=zeros(origImRows,origImColumns);
for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
        
        bcopyimge(rows,cols)= (origImage(rows,cols)) - theredshold;
   end
end
bcopyimge=uint8(bcopyimge);
axes(handles.axes2);
imshow(bcopyimge);
setappdata(0,'b',bcopyimge);



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in roberts.
function roberts_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off';
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; 
handles.axes1.Visible = 'on'; 
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off';

input_image = getappdata(0,'b');
 
input_image = double(input_image);
filtered_image = zeros(size(input_image));

Mx = [1 0; 0 -1];
My = [0 1; -1 0];
  
for i = 1:size(input_image, 1) - 1
    for j = 1:size(input_image, 2) - 1
  
        
        Gx = sum(sum(Mx.*input_image(i:i+1, j:j+1)));
        Gy = sum(sum(My.*input_image(i:i+1, j:j+1)));
                 
        
        filtered_image(i, j) = sqrt(Gx.^2 + Gy.^2);
         
    end
end
  
% Displaying Filtered Image
filtered_image = uint8(filtered_image);
axes(handles.axes2);
imshow(filtered_image);
setappdata(0,'b',filtered_image);

  

% thresholdValue = 100; % varies between [0 255]
% output_image = max(filtered_image, thresholdValue);
% output_image(output_image == round(thresholdValue)) = 0;
%   
% output_image = im2bw(output_image);
% figure, imshow(output_image); title('Edge Detected Image');


% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uipanel5_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uipanel5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in identity.
function identity_Callback(hObject, eventdata, handles)
% hObject    handle to identity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
gray_image = getappdata(0,'b');
axes(handles.axes2);
imshow(gray_image);
setappdata(0,'b',gray_image);


% --- Executes on button press in and.
function and_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to slicing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 origImage = getappdata(0,'b');
[origImRows, origImColumns, matricesNo] = size(origImage);
bcopyimge=origImage;
x=str2double(get(handles.edit21, 'String'));
y=str2double(get(handles.edit22, 'String'));
for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
         
if (origImage(rows,cols,:)>=x)&(origImage(rows,cols,:)<=y)
    
    origImage(rows,cols,:)= ((bcopyimge(rows,cols,:)&&1)*1)*bcopyimge(rows,cols,:);
else
    origImage(rows,cols,:)=((bcopyimge(rows,cols,:)&0)*1)*bcopyimge(rows,cols,:);
end

    

    end
end
axes(handles.axes2);
imshow(origImage);
setappdata(0,'b',origImage);


    



% --- Executes on button press in or.
function or_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
handles.axes2.Visible = 'on'; % Show 4 axes
% hObject    handle to slicing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 origImage = getappdata(0,'b');
[origImRows, origImColumns, matricesNo] = size(origImage);
bcopyimge=origImage;
x=str2double(get(handles.edit23, 'String'));
y=str2double(get(handles.edit24, 'String'));
for rows = 1:1:origImRows
    for cols = 1:1:origImColumns
         
if (origImage(rows,cols,:)>=x)&(origImage(rows,cols,:)<=y)
    
    origImage(rows,cols,:)= ((bcopyimge(rows,cols,:)||1)*1)*bcopyimge(rows,cols,:);
else
    origImage(rows,cols,:)=((bcopyimge(rows,cols,:)||0)*1)*bcopyimge(rows,cols,:);
end

    

    end
end
axes(handles.axes2);
imshow(origImage);
setappdata(0,'b',origImage);



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in mean.
function mean_Callback(hObject, eventdata, handles)
handles.panel1.Visible = 'on';
cla(handles.axes3,'reset');
cla(handles.axes4,'reset');
cla(handles.axes5,'reset');
cla(handles.axes6,'reset');
cla(handles.axes7,'reset');
cla(handles.axes8,'reset');
cla(handles.axes9,'reset');
cla(handles.axes10,'reset');
cla(handles.axes12,'reset');
handles.axes12.Visible = 'off'; % Show 4 axes
handles.axes3.Visible = 'off';
handles.axes4.Visible = 'off'; % Show 4 axes.
handles.axes5.Visible = 'off'; % Show 4 axes.
handles.axes6.Visible = 'off'; % Show 4 axes.
handles.axes7.Visible = 'off'; % Show 4 axes.
handles.axes8.Visible = 'off'; % Show 4 axes.
handles.axes9.Visible = 'off'; % Show 4 axes.
handles.axes10.Visible = 'off'; % Show 4 axes.
handles.axes1.Visible = 'on'; % Show 4 axes.
cla(handles.axes2,'reset');
handles.axes2.Visible = 'off'; % Show 4 axes
% hObject    handle to average (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gray_image = getappdata(0,'b');
[rows,cols]=size(gray_image);

outimage = gray_image;

for i=2:rows-1
   for j=2:cols-1

     temp = [gray_image(i-1, j-1) gray_image(i-1, j) gray_image(i-1, j + 1) gray_image(i, j-1) gray_image(i, j) gray_image(i, j + 1) gray_image(i + 1, j-1) gray_image(i + 1, j) gray_image(i + 1, j + 1)];
   x=sum(temp);
   x=x/9;
    outimage(i, j)= x;
%    temp=[gray_image(i-1, j-1)  gray_image(i-1, j)  gray_image(i-1,j+1)  gray_image(i, j-1)  gray_image(i,j)  gray_image(i , j+1)  gray_image(i+1, j-1) gray_image(i+1,j)  gray_image(i+1 , j+1)]; 
% outimage(i,j)=mean(temp);

    end

end
axes(handles.axes2);
imshow(outimage)
setappdata(0,'b',outimage);



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
