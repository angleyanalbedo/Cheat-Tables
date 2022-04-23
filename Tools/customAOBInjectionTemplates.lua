 
myAOBInjectionTemplates = {}

myAOBInjectionTemplates.Templates = {


---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Default",
submenu='x86',
group=1, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)

registersymbol(aob_%cheatName%)


newmem_%cheatName%:

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Filter",
submenu='x86',
group=1, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(%cheatName%_address)

registersymbol(aob_%cheatName%)
registersymbol(%cheatName%_address)


newmem_%cheatName%:
push edi
lea edi,%bracketsRegsOffset%
mov [%cheatName%_address],edi
pop edi

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(%cheatName%_address)
<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Default",
submenu='x86',
group=2,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(originalcode_%cheatName%)
label(return_%cheatName%)
label(stealthedit_%cheatName%)

registersymbol(stealthedit_%cheatName%)


newmem_%cheatName%:

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)


<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Filter",
submenu='x86',
group=2,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(originalcode_%cheatName%)
label(return_%cheatName%)
label(stealthedit_%cheatName%)
label(%cheatName%_address)

registersymbol(%cheatName%_address)
registersymbol(stealthedit_%cheatName%)


newmem_%cheatName%:
push edi
lea edi,%bracketsRegsOffset%
mov [%cheatName%_address],edi
pop edi

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)
unregistersymbol(%cheatName%_address)
<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Teleport (3-D)",
submenu='x86',
group=2,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(stealthedit_%cheatName%)
label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(z_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(z_c2)
label(%cheatName%_address)


registersymbol(stealthedit_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(z_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(z_c2)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push edx
lea edx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],edx    //Rename xxxxxxxx_address
pop edx
jne originalcode_%cheatName%

push edx
lea edx,%bracketsRegsOffset%
mov [%cheatName%_address],edx
pop edx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push edx
mov edx,[%regsOffset%]
mov [x_c1],edx
mov edx,[%regsOffset%+4]
mov [y_c1],edx
mov edx,[%regsOffset%+8]
mov [z_c1],edx
pop edx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push edx
mov edx,[%regsOffset%]
mov [x_c2],edx
mov edx,[%regsOffset%+4]
mov [y_c2],edx
mov edx,[%regsOffset%+8]
mov [z_c2],edx
pop edx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push edx
mov edx,[x_c1]
mov [%regsOffset%],edx
mov edx,[y_c1]
mov [%regsOffset%+4],edx
mov edx,[z_c1]
mov [%regsOffset%+8],edx
pop edx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push edx
mov edx,[x_c2]
mov [%regsOffset%],edx
mov edx,[y_c2]
mov [%regsOffset%+4],edx
mov edx,[z_c2]
mov [%regsOffset%+8],edx
pop edx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0

x_c1:
dd 0
y_c1:
dd 0
z_c1:
dd 0
x_c2:
dd 0
y_c2:
dd 0
z_c2:
dd 0

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(z_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(z_c2)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Vacuum (3-D)",
submenu='x86',
group=2,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(stealthedit_%cheatName%)
label(return_%cheatName%)
label(originalcode_%cheatName%)
label(enemy)
label(save_c)
label(save_coordinates)
label(vac_enable)
label(x_c)
label(y_c)
label(z_c)
label(enemyvac)
label(%cheatName%_address)


registersymbol(stealthedit_%cheatName%)
registersymbol(save_coordinates)
registersymbol(vac_enable)
registersymbol(x_c)
registersymbol(y_c)
registersymbol(z_c)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push edx
lea edx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],edx    //Rename xxxxxxxx_address
pop edx
jne enemy

push edx
lea edx,%bracketsRegsOffset%
mov [%cheatName%_address],edx
pop edx

cmp byte ptr [save_coordinates],1
je save_c
%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [vac_enable],1
je enemyvac
jmp originalcode_%cheatName%

save_c:
mov byte ptr [save_coordinates],0
push edx
mov edx,[%regsOffset%]
mov [x_c],edx
mov edx,[%regsOffset%+4]
mov [y_c],edx
mov edx,[%regsOffset%+8]
mov [z_c],edx
pop edx
jmp originalcode_%cheatName%

enemyvac:
cmp [x_c],0
je originalcode_%cheatName%
push edx
mov edx,[x_c]
mov [%regsOffset%],edx
mov edx,[y_c]
mov [%regsOffset%+4],edx
mov edx,[z_c]
mov [%regsOffset%+8],edx
pop edx
%originalCodeLines%
jmp return_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

save_coordinates:
db 0
vac_enable:
db 0
x_c:
dd 0
y_c:
dd 0
z_c:
dd 0

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)
unregistersymbol(save_coordinates)
unregistersymbol(vac_enable)
unregistersymbol(x_c)
unregistersymbol(y_c)
unregistersymbol(z_c)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Teleport + Vacuum (3-D)",
submenu='x86',
group=2,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(stealthedit_%cheatName%)
label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(z_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(z_c2)
label(x_cv)
label(y_cv)
label(z_cv)
label(enemy)
label(load_coordinatesv)
label(enemyvac)
label(save_coordinatesv)
label(save_cv)
label(%cheatName%_address)


registersymbol(stealthedit_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(z_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(z_c2)
registersymbol(save_coordinatesv)
registersymbol(load_coordinatesv)
registersymbol(x_cv)
registersymbol(y_cv)
registersymbol(z_cv)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push edx
lea edx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],edx    //Rename xxxxxxxx_address
pop edx
jne enemy

push edx
lea edx,%bracketsRegsOffset%
mov [%cheatName%_address],edx
pop edx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [save_coordinatesv],1
je save_cv
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [load_coordinatesv],1
je enemyvac
jmp originalcode_%cheatName%

enemyvac:
cmp [x_cv],0
je originalcode_%cheatName%
push eax
mov eax,[x_cv]
mov [%regsOffset%],eax
mov eax,[y_cv]
mov [%regsOffset%+4],eax
mov eax,[z_cv]
mov [%regsOffset%+8],eax
pop eax
%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push edx
mov edx,[%regsOffset%]
mov [x_c1],edx
mov edx,[%regsOffset%+4]
mov [y_c1],edx
mov edx,[%regsOffset%+8]
mov [z_c1],edx
pop edx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push edx
mov edx,[%regsOffset%]
mov [x_c2],edx
mov edx,[%regsOffset%+4]
mov [y_c2],edx
mov edx,[%regsOffset%+8]
mov [z_c2],edx
pop edx
jmp originalcode_%cheatName%

save_cv:
mov byte ptr [save_coordinatesv],0
push edx
mov edx,[%regsOffset%]
mov [x_cv],edx
mov edx,[%regsOffset%+4]
mov [y_cv],edx
mov edx,[%regsOffset%+8]
mov [z_cv],edx
pop edx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push edx
mov edx,[x_c1]
mov [%regsOffset%],edx
mov edx,[y_c1]
mov [%regsOffset%+4],edx
mov edx,[z_c1]
mov [%regsOffset%+8],edx
pop edx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push edx
mov edx,[x_c2]
mov [%regsOffset%],edx
mov edx,[y_c2]
mov [%regsOffset%+4],edx
mov edx,[z_c2]
mov [%regsOffset%+8],edx
pop edx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0
save_coordinatesv:
db 0
load_coordinatesv:
db 0

x_cv:
dd 0
y_cv:
dd 0
z_cv:
dd 0

x_c1:
dd 0
y_c1:
dd 0
z_c1:
dd 0
x_c2:
dd 0
y_c2:
dd 0
z_c2:
dd 0

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(z_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(z_c2)
unregistersymbol(save_coordinatesv)
unregistersymbol(load_coordinatesv)
unregistersymbol(x_cv)
unregistersymbol(y_cv)
unregistersymbol(z_cv)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Teleport (2-D)",
submenu='x86',
group=3,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(%cheatName%_address)


newmem_%cheatName%:
{
push edx
lea edx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],edx    //Rename xxxxxxxx_address
pop edx
jne originalcode_%cheatName%
}
push edx
lea edx,%bracketsRegsOffset%
mov [%cheatName%_address],edx
pop edx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push edx
mov edx,[%regsOffset%]
mov [x_c1],edx
mov edx,[%regsOffset%+4]
mov [y_c1],edx
pop edx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push edx
mov edx,[%regsOffset%]
mov [x_c2],edx
mov edx,[%regsOffset%+4]
mov [y_c2],edx
pop edx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push edx
mov edx,[x_c1]
mov [%regsOffset%],edx
mov edx,[y_c1]
mov [%regsOffset%+4],edx
pop edx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push edx
mov edx,[x_c2]
mov [%regsOffset%],edx
mov edx,[y_c2]
mov [%regsOffset%+4],edx
pop edx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0

x_c1:
dd 0
y_c1:
dd 0
x_c2:
dd 0
y_c2:
dd 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Vacuum (2-D)",
submenu='x86',
group=3,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(enemy)
label(save_c)
label(save_coordinates)
label(vac_enable)
label(x_c)
label(y_c)
label(enemyvac)

registersymbol(aob_%cheatName%)
registersymbol(save_coordinates)
registersymbol(vac_enable)
registersymbol(x_c)
registersymbol(y_c)


newmem_%cheatName%:

push eax
lea eax,%bracketsRegsOffset%
cmp [xxxxxxxx_address],eax    //Rename xxxxxxxx_address
pop eax
jne enemy

cmp byte ptr [save_coordinates],1
je save_c
%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [vac_enable],1
je enemyvac
jmp originalcode_%cheatName%

save_c:
mov byte ptr [save_coordinates],0
push eax
mov eax,[%regsOffset%]
mov [x_c],eax
mov eax,[%regsOffset%+4]
mov [y_c],eax
pop eax
jmp originalcode_%cheatName%

enemyvac:
cmp [x_c],0
je originalcode_%cheatName%
push eax
mov eax,[x_c]
mov [%regsOffset%],eax
mov eax,[y_c]
mov [%regsOffset%+4],eax
pop eax
%originalCodeLines%
jmp return_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

save_coordinates:
db 0
vac_enable:
db 0
x_c:
dd 0
y_c:
dd 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates)
unregistersymbol(vac_enable)
unregistersymbol(x_c)
unregistersymbol(y_c)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Teleport + Vacuum (2-D)",
submenu='x86',
group=3,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(x_cv)
label(y_cv)
label(enemy)
label(load_coordinatesv)
label(enemyvac)
label(save_coordinatesv)
label(save_cv)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(save_coordinatesv)
registersymbol(load_coordinatesv)
registersymbol(x_cv)
registersymbol(y_cv)
registersymbol(%cheatName%_address)


newmem_%cheatName%:
{
push edx
lea edx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],edx    //Rename xxxxxxxx_address
pop edx
jne enemy
}
push edx
lea edx,%bracketsRegsOffset%
mov [%cheatName%_address],edx
pop edx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [save_coordinatesv],1
je save_cv
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [load_coordinatesv],1
je enemyvac
jmp originalcode_%cheatName%

enemyvac:
cmp [x_cv],0
je originalcode_%cheatName%
push eax
mov eax,[x_cv]
mov [%regsOffset%],eax
mov eax,[y_cv]
mov [%regsOffset%+4],eax
pop eax
%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push edx
mov edx,[%regsOffset%]
mov [x_c1],edx
mov edx,[%regsOffset%+4]
mov [y_c1],edx
pop edx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push edx
mov edx,[%regsOffset%]
mov [x_c2],edx
mov edx,[%regsOffset%+4]
mov [y_c2],edx
pop edx
jmp originalcode_%cheatName%

save_cv:
mov byte ptr [save_coordinatesv],0
push edx
mov edx,[%regsOffset%]
mov [x_cv],edx
mov edx,[%regsOffset%+4]
mov [y_cv],edx
pop edx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push edx
mov edx,[x_c1]
mov [%regsOffset%],edx
mov edx,[y_c1]
mov [%regsOffset%+4],edx
pop edx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push edx
mov edx,[x_c2]
mov [%regsOffset%],edx
mov edx,[y_c2]
mov [%regsOffset%+4],edx
pop edx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0
save_coordinatesv:
db 0
load_coordinatesv:
db 0

x_cv:
dd 0
y_cv:
dd 0

x_c1:
dd 0
y_c1:
dd 0
x_c2:
dd 0
y_c2:
dd 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(save_coordinatesv)
unregistersymbol(load_coordinatesv)
unregistersymbol(x_cv)
unregistersymbol(y_cv)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Teleport (3-D)",
submenu='x86',
group=3,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(z_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(z_c2)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(z_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(z_c2)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push edx
lea edx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],edx    //Rename xxxxxxxx_address
pop edx
jne originalcode_%cheatName%

push edx
lea edx,%bracketsRegsOffset%
mov [%cheatName%_address],edx
pop edx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push edx
mov edx,[%regsOffset%]
mov [x_c1],edx
mov edx,[%regsOffset%+4]
mov [y_c1],edx
mov edx,[%regsOffset%+8]
mov [z_c1],edx
pop edx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push edx
mov edx,[%regsOffset%]
mov [x_c2],edx
mov edx,[%regsOffset%+4]
mov [y_c2],edx
mov edx,[%regsOffset%+8]
mov [z_c2],edx
pop edx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push edx
mov edx,[x_c1]
mov [%regsOffset%],edx
mov edx,[y_c1]
mov [%regsOffset%+4],edx
mov edx,[z_c1]
mov [%regsOffset%+8],edx
pop edx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push edx
mov edx,[x_c2]
mov [%regsOffset%],edx
mov edx,[y_c2]
mov [%regsOffset%+4],edx
mov edx,[z_c2]
mov [%regsOffset%+8],edx
pop edx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0

x_c1:
dd 0
y_c1:
dd 0
z_c1:
dd 0
x_c2:
dd 0
y_c2:
dd 0
z_c2:
dd 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(z_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(z_c2)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Vacuum (3-D)",
submenu='x86',
group=3,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(enemy)
label(save_c)
label(save_coordinates)
label(vac_enable)
label(x_c)
label(y_c)
label(z_c)
label(enemyvac)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates)
registersymbol(vac_enable)
registersymbol(x_c)
registersymbol(y_c)
registersymbol(z_c)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push edx
lea edx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],edx    //Rename xxxxxxxx_address
pop edx
jne enemy

push edx
lea edx,%bracketsRegsOffset%
mov [%cheatName%_address],edx
pop edx

cmp byte ptr [save_coordinates],1
je save_c
%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [vac_enable],1
je enemyvac
jmp originalcode_%cheatName%

save_c:
mov byte ptr [save_coordinates],0
push eax
mov eax,[%regsOffset%]
mov [x_c],eax
mov eax,[%regsOffset%+4]
mov [y_c],eax
mov eax,[%regsOffset%+8]
mov [z_c],eax
pop eax
jmp originalcode_%cheatName%

enemyvac:
cmp [x_c],0
je originalcode_%cheatName%
push eax
mov eax,[x_c]
mov [%regsOffset%],eax
mov eax,[y_c]
mov [%regsOffset%+4],eax
mov eax,[z_c]
mov [%regsOffset%+8],eax
pop eax
%originalCodeLines%
jmp return_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

save_coordinates:
db 0
vac_enable:
db 0
x_c:
dd 0
y_c:
dd 0
z_c:
dd 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates)
unregistersymbol(vac_enable)
unregistersymbol(x_c)
unregistersymbol(y_c)
unregistersymbol(z_c)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Teleport + Vacuum (3-D)",
submenu='x86',
group=3,
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(z_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(z_c2)
label(x_cv)
label(y_cv)
label(z_cv)
label(enemy)
label(load_coordinatesv)
label(enemyvac)
label(save_coordinatesv)
label(save_cv)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(z_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(z_c2)
registersymbol(save_coordinatesv)
registersymbol(load_coordinatesv)
registersymbol(x_cv)
registersymbol(y_cv)
registersymbol(z_cv)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push edx
lea edx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],edx    //Rename xxxxxxxx_address
pop edx
jne enemy

push edx
lea edx,%bracketsRegsOffset%
mov [%cheatName%_address],edx
pop edx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [save_coordinatesv],1
je save_cv
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [load_coordinatesv],1
je enemyvac
jmp originalcode_%cheatName%

enemyvac:
cmp [x_cv],0
je originalcode_%cheatName%
push eax
mov eax,[x_cv]
mov [%regsOffset%],eax
mov eax,[y_cv]
mov [%regsOffset%+4],eax
mov eax,[z_cv]
mov [%regsOffset%+8],eax
pop eax
%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push edx
mov edx,[%regsOffset%]
mov [x_c1],edx
mov edx,[%regsOffset%+4]
mov [y_c1],edx
mov edx,[%regsOffset%+8]
mov [z_c1],edx
pop edx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push edx
mov edx,[%regsOffset%]
mov [x_c2],edx
mov edx,[%regsOffset%+4]
mov [y_c2],edx
mov edx,[%regsOffset%+8]
mov [z_c2],edx
pop edx
jmp originalcode_%cheatName%

save_cv:
mov byte ptr [save_coordinatesv],0
push edx
mov edx,[%regsOffset%]
mov [x_cv],edx
mov edx,[%regsOffset%+4]
mov [y_cv],edx
mov edx,[%regsOffset%+8]
mov [z_cv],edx
pop edx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push edx
mov edx,[x_c1]
mov [%regsOffset%],edx
mov edx,[y_c1]
mov [%regsOffset%+4],edx
mov edx,[z_c1]
mov [%regsOffset%+8],edx
pop edx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push edx
mov edx,[x_c2]
mov [%regsOffset%],edx
mov edx,[y_c2]
mov [%regsOffset%+4],edx
mov edx,[z_c2]
mov [%regsOffset%+8],edx
pop edx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dd 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0
save_coordinatesv:
db 0
load_coordinatesv:
db 0

x_cv:
dd 0
y_cv:
dd 0
z_cv:
dd 0

x_c1:
dd 0
y_c1:
dd 0
z_c1:
dd 0
x_c2:
dd 0
y_c2:
dd 0
z_c2:
dd 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(z_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(z_c2)
unregistersymbol(save_coordinatesv)
unregistersymbol(load_coordinatesv)
unregistersymbol(x_cv)
unregistersymbol(y_cv)
unregistersymbol(z_cv)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Default",
submenu='x64',
group=1, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)

registersymbol(aob_%cheatName%)


newmem_%cheatName%:

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Filter",
submenu='x64',
group=1, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(%cheatName%_address)

registersymbol(aob_%cheatName%)
registersymbol(%cheatName%_address)


newmem_%cheatName%:
push rdi
lea rdi,%bracketsRegsOffset%
mov [%cheatName%_address],rdi
pop rdi

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(%cheatName%_address)
<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Default",
submenu='x64',
group=2, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(originalcode_%cheatName%)
label(return_%cheatName%)
label(stealthedit_%cheatName%)

registersymbol(stealthedit_%cheatName%)


newmem_%cheatName%:

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)


<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Filter",
submenu='x64',
group=2, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(originalcode_%cheatName%)
label(return_%cheatName%)
label(stealthedit_%cheatName%)
label(%cheatName%_address)

registersymbol(%cheatName%_address)
registersymbol(stealthedit_%cheatName%)


newmem_%cheatName%:
push rdi
lea rdi,%bracketsRegsOffset%
mov [%cheatName%_address],rdi
pop rdi

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)
unregistersymbol(%cheatName%_address)
<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Teleport (3-D)",
submenu='x64',
group=2, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(stealthedit_%cheatName%)
label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(z_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(z_c2)
label(%cheatName%_address)

registersymbol(stealthedit_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(z_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(z_c2)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push rdx
lea rdx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],rdx    //Rename xxxxxxxx_address
pop rdx
jne originalcode_%cheatName%

push rdx
lea rdx,%bracketsRegsOffset%
mov [%cheatName%_address],rdx
pop rdx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c1],rdx
mov rdx,[%regsOffset%+4]
mov [y_c1],rdx
mov rdx,[%regsOffset%+8]
mov [z_c1],rdx
pop rdx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c2],rdx
mov rdx,[%regsOffset%+4]
mov [y_c2],rdx
mov rdx,[%regsOffset%+8]
mov [z_c2],rdx
pop rdx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push rdx
mov rdx,[x_c1]
mov [%regsOffset%],rdx
mov rdx,[y_c1]
mov [%regsOffset%+4],rdx
mov rdx,[z_c1]
mov [%regsOffset%+8],rdx
pop rdx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push rdx
mov rdx,[x_c2]
mov [%regsOffset%],rdx
mov rdx,[y_c2]
mov [%regsOffset%+4],rdx
mov rdx,[z_c2]
mov [%regsOffset%+8],rdx
pop rdx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0

x_c1:
dq 0
y_c1:
dq 0
z_c1:
dq 0
x_c2:
dq 0
y_c2:
dq 0
z_c2:
dq 0

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(z_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(z_c2)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Vacuum (3-D)",
submenu='x64',
group=2, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(stealthedit_%cheatName%)
label(return_%cheatName%)
label(originalcode_%cheatName%)
label(enemy)
label(save_c)
label(save_coordinates)
label(vac_enable)
label(x_c)
label(y_c)
label(z_c)
label(enemyvac)
label(%cheatName%_address)


registersymbol(stealthedit_%cheatName%)
registersymbol(save_coordinates)
registersymbol(vac_enable)
registersymbol(x_c)
registersymbol(y_c)
registersymbol(z_c)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push rax
lea rax,%bracketsRegsOffset%
cmp [xxxxxxxx_address],rax    //Rename xxxxxxxx_address
pop rax
jne enemy

push rdi
lea rdi,%bracketsRegsOffset%
mov [%cheatName%_address],rdi
pop rdi

cmp byte ptr [save_coordinates],1
je save_c
%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [vac_enable],1
je enemyvac
jmp originalcode_%cheatName%

save_c:
mov byte ptr [save_coordinates],0
push rax
mov rax,[%regsOffset%]
mov [x_c],rax
mov rax,[%regsOffset%+4]
mov [y_c],rax
mov rax,[%regsOffset%+8]
mov [z_c],rax
pop rax
jmp originalcode_%cheatName%

enemyvac:
cmp [x_c],0
je originalcode_%cheatName%
push rax
mov rax,[x_c]
mov [%regsOffset%],rax
mov rax,[y_c]
mov [%regsOffset%+4],rax
mov rax,[z_c]
mov [%regsOffset%+8],rax
pop rax
%originalCodeLines%
jmp return_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

save_coordinates:
db 0
vac_enable:
db 0

x_c:
dq 0
y_c:
dq 0
z_c:
dq 0

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)
unregistersymbol(save_coordinates)
unregistersymbol(vac_enable)
unregistersymbol(x_c)
unregistersymbol(y_c)
unregistersymbol(z_c)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Stealth - Teleport + Vacuum (3-D)",
submenu='x64',
group=2, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)
stealtheditex(stealth_%cheatName%,aob_%cheatName%%aobAdjust%,3)

label(stealthedit_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(z_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(z_c2)
label(x_cv)
label(y_cv)
label(z_cv)
label(enemy)
label(load_coordinatesv)
label(enemyvac)
label(save_coordinatesv)
label(save_cv)
label(%cheatName%_address)


registersymbol(stealthedit_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(z_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(z_c2)
registersymbol(save_coordinatesv)
registersymbol(load_coordinatesv)
registersymbol(x_cv)
registersymbol(y_cv)
registersymbol(z_cv)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push rdx
lea rdx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],rdx    //Rename xxxxxxxx_address
pop rdx
jne enemy

push rdx
lea rdx,%bracketsRegsOffset%
mov [%cheatName%_address],rdx
pop rdx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [save_coordinatesv],1
je save_cv
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [load_coordinatesv],1
je enemyvac
jmp originalcode_%cheatName%

enemyvac:
cmp [x_cv],0
je originalcode_%cheatName%
push rdx
mov rdx,[x_cv]
mov [%regsOffset%],rdx
mov rdx,[y_cv]
mov [%regsOffset%+4],rdx
mov rdx,[z_cv]
mov [%regsOffset%+8],rdx
pop rdx
%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c1],rdx
mov rdx,[%regsOffset%+4]
mov [y_c1],rdx
mov rdx,[%regsOffset%+8]
mov [z_c1],rdx
pop rdx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c2],rdx
mov rdx,[%regsOffset%+4]
mov [y_c2],rdx
mov rdx,[%regsOffset%+8]
mov [z_c2],rdx
pop rdx
jmp originalcode_%cheatName%

save_cv:
mov byte ptr [save_coordinatesv],0
push rdx
mov rdx,[%regsOffset%]
mov [x_cv],rdx
mov rdx,[%regsOffset%+4]
mov [y_cv],rdx
mov rdx,[%regsOffset%+8]
mov [z_cv],rdx
pop rdx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push rdx
mov rdx,[x_c1]
mov [%regsOffset%],rdx
mov rdx,[y_c1]
mov [%regsOffset%+4],rdx
mov rdx,[z_c1]
mov [%regsOffset%+8],rdx
pop rdx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push rdx
mov rdx,[x_c2]
mov [%regsOffset%],rdx
mov rdx,[y_c2]
mov [%regsOffset%+4],rdx
mov rdx,[z_c2]
mov [%regsOffset%+8],rdx
pop rdx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0
save_coordinatesv:
db 0
load_coordinatesv:
db 0

x_cv:
dq 0
y_cv:
dq 0
z_cv:
dq 0

x_c1:
dq 0
y_c1:
dq 0
z_c1:
dq 0
x_c2:
dq 0
y_c2:
dq 0
z_c2:
dq 0

stealth_%cheatName%:
stealthedit_%cheatName%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
stealthedit_%cheatName%:
db %originalBytes%

unregistersymbol(stealthedit_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(z_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(z_c2)
unregistersymbol(save_coordinatesv)
unregistersymbol(load_coordinatesv)
unregistersymbol(x_cv)
unregistersymbol(y_cv)
unregistersymbol(z_cv)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Teleport (2-D)",
submenu='x64',
group=3, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(%cheatName%_address)


newmem_%cheatName%:
{
push rdx
lea rdx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],rdx    //Rename xxxxxxxx_address
pop rdx
jne originalcode_%cheatName%
}
push rdx
lea rdx,%bracketsRegsOffset%
mov [%cheatName%_address],rdx
pop rdx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c1],rdx
mov rdx,[%regsOffset%+4]
mov [y_c1],rdx
pop rdx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c2],rdx
mov rdx,[%regsOffset%+4]
mov [y_c2],rdx
pop rdx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push rdx
mov rdx,[x_c1]
mov [%regsOffset%],rdx
mov rdx,[y_c1]
mov [%regsOffset%+4],rdx
pop rdx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push rdx
mov rdx,[x_c2]
mov [%regsOffset%],rdx
mov rdx,[y_c2]
mov [%regsOffset%+4],rdx
pop rdx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0

x_c1:
dq 0
y_c1:
dq 0
x_c2:
dq 0
y_c2:
dq 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Vacuum (2-D)",
submenu='x64',
group=3, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(enemy)
label(save_c)
label(save_coordinates)
label(vac_enable)
label(x_c)
label(y_c)
label(enemyvac)

registersymbol(aob_%cheatName%)
registersymbol(save_coordinates)
registersymbol(vac_enable)
registersymbol(x_c)
registersymbol(y_c)


newmem_%cheatName%:

push rax
lea rax,%bracketsRegsOffset%
cmp [xxxxxxxx_address],rax    //Rename xxxxxxxx_address
pop rax
jne enemy

cmp byte ptr [save_coordinates],1
je save_c
%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [vac_enable],1
je enemyvac
jmp originalcode_%cheatName%

save_c:
mov byte ptr [save_coordinates],0
push rax
mov rax,[%regsOffset%]
mov [x_c],rax
mov rax,[%regsOffset%+4]
mov [y_c],rax
pop rax
jmp originalcode_%cheatName%

enemyvac:
cmp [x_c],0
je originalcode_%cheatName%
push rax
mov rax,[x_c]
mov [%regsOffset%],rax
mov rax,[y_c]
mov [%regsOffset%+4],rax
pop rax
%originalCodeLines%
jmp return_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

save_coordinates:
db 0
vac_enable:
db 0
x_c:
dq 0
y_c:
dq 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates)
unregistersymbol(vac_enable)
unregistersymbol(x_c)
unregistersymbol(y_c)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Teleport + Vacuum (2-D)",
submenu='x64',
group=3, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(x_cv)
label(y_cv)
label(enemy)
label(load_coordinatesv)
label(enemyvac)
label(save_coordinatesv)
label(save_cv)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(save_coordinatesv)
registersymbol(load_coordinatesv)
registersymbol(x_cv)
registersymbol(y_cv)
registersymbol(%cheatName%_address)


newmem_%cheatName%:
{
push rdx
lea rdx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],rdx    //Rename xxxxxxxx_address
pop rdx
jne enemy
}
push rdx
lea rdx,%bracketsRegsOffset%
mov [%cheatName%_address],rdx
pop rdx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [save_coordinatesv],1
je save_cv
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [load_coordinatesv],1
je enemyvac
jmp originalcode_%cheatName%

enemyvac:
cmp [x_cv],0
je originalcode_%cheatName%
push rdx
mov rdx,[x_cv]
mov [%regsOffset%],rdx
mov rdx,[y_cv]
mov [%regsOffset%+4],rdx
pop rdx
%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c1],rdx
mov rdx,[%regsOffset%+4]
mov [y_c1],rdx
pop rdx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c2],rdx
mov rdx,[%regsOffset%+4]
mov [y_c2],rdx
pop rdx
jmp originalcode_%cheatName%

save_cv:
mov byte ptr [save_coordinatesv],0
push rdx
mov rdx,[%regsOffset%]
mov [x_cv],rdx
mov rdx,[%regsOffset%+4]
mov [y_cv],rdx
pop rdx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push rdx
mov rdx,[x_c1]
mov [%regsOffset%],rdx
mov rdx,[y_c1]
mov [%regsOffset%+4],rdx
pop rdx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push rdx
mov rdx,[x_c2]
mov [%regsOffset%],rdx
mov rdx,[y_c2]
mov [%regsOffset%+4],rdx
pop rdx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0
save_coordinatesv:
db 0
load_coordinatesv:
db 0

x_cv:
dq 0
y_cv:
dq 0

x_c1:
dq 0
y_c1:
dq 0
x_c2:
dq 0
y_c2:
dq 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(save_coordinatesv)
unregistersymbol(load_coordinatesv)
unregistersymbol(x_cv)
unregistersymbol(y_cv)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Teleport (3-D)",
submenu='x64',
group=3, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(z_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(z_c2)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(z_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(z_c2)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push rdx
lea rdx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],rdx    //Rename xxxxxxxx_address
pop rdx
jne originalcode_%cheatName%

push rdx
lea rdx,%bracketsRegsOffset%
mov [%cheatName%_address],rdx
pop rdx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c1],rdx
mov rdx,[%regsOffset%+4]
mov [y_c1],rdx
mov rdx,[%regsOffset%+8]
mov [z_c1],rdx
pop rdx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c2],rdx
mov rdx,[%regsOffset%+4]
mov [y_c2],rdx
mov rdx,[%regsOffset%+8]
mov [z_c2],rdx
pop rdx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push rdx
mov rdx,[x_c1]
mov [%regsOffset%],rdx
mov rdx,[y_c1]
mov [%regsOffset%+4],rdx
mov rdx,[z_c1]
mov [%regsOffset%+8],rdx
pop rdx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push rdx
mov rdx,[x_c2]
mov [%regsOffset%],rdx
mov rdx,[y_c2]
mov [%regsOffset%+4],rdx
mov rdx,[z_c2]
mov [%regsOffset%+8],rdx
pop rdx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0

x_c1:
dq 0
y_c1:
dq 0
z_c1:
dq 0
x_c2:
dq 0
y_c2:
dq 0
z_c2:
dq 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(z_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(z_c2)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Vacuum (3-D)",
submenu='x64',
group=3, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(enemy)
label(save_c)
label(save_coordinates)
label(vac_enable)
label(x_c)
label(y_c)
label(z_c)
label(enemyvac)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates)
registersymbol(vac_enable)
registersymbol(x_c)
registersymbol(y_c)
registersymbol(z_c)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push rdx
lea rdx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],rdx    //Rename xxxxxxxx_address
pop rdx
jne enemy

push rdx
lea rdx,%bracketsRegsOffset%
mov [%cheatName%_address],rdx
pop rdx

cmp byte ptr [save_coordinates],1
je save_c
%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [vac_enable],1
je enemyvac
jmp originalcode_%cheatName%

save_c:
mov byte ptr [save_coordinates],0
push rax
mov rax,[%regsOffset%]
mov [x_c],rax
mov rax,[%regsOffset%+4]
mov [y_c],rax
mov rax,[%regsOffset%+8]
mov [z_c],rax
pop rax
jmp originalcode_%cheatName%

enemyvac:
cmp [x_c],0
je originalcode_%cheatName%
push rax
mov rax,[x_c]
mov [%regsOffset%],rax
mov rax,[y_c]
mov [%regsOffset%+4],rax
mov rax,[z_c]
mov [%regsOffset%+8],rax
pop rax
%originalCodeLines%
jmp return_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

save_coordinates:
db 0
vac_enable:
db 0
x_c:
dq 0
y_c:
dq 0
z_c:
dq 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates)
unregistersymbol(vac_enable)
unregistersymbol(x_c)
unregistersymbol(y_c)
unregistersymbol(z_c)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
{
displayName="Teleport + Vacuum (3-D)",
submenu='x64',
group=3, 
templateSections=
[==[
<<INFO>>
//Target:  %processName%
//Author:  ++METHOS

<<INFO_END>>

<<ENABLE>>

{====================  %cheatName%  ====================}

aobscan%isModuleScan%(aob_%cheatName%,%moduleNameC%%searchPattern%)
alloc(newmem_%cheatName%,1024%CmoduleName%)

label(return_%cheatName%)
label(originalcode_%cheatName%)
label(save_c1)
label(save_coordinates1)
label(load_c1)
label(load_coordinates1)
label(x_c1)
label(y_c1)
label(z_c1)
label(save_c2)
label(save_coordinates2)
label(load_c2)
label(load_coordinates2)
label(x_c2)
label(y_c2)
label(z_c2)
label(x_cv)
label(y_cv)
label(z_cv)
label(enemy)
label(load_coordinatesv)
label(enemyvac)
label(save_coordinatesv)
label(save_cv)
label(%cheatName%_address)


registersymbol(aob_%cheatName%)
registersymbol(save_coordinates1)
registersymbol(load_coordinates1)
registersymbol(x_c1)
registersymbol(y_c1)
registersymbol(z_c1)
registersymbol(save_coordinates2)
registersymbol(load_coordinates2)
registersymbol(x_c2)
registersymbol(y_c2)
registersymbol(z_c2)
registersymbol(save_coordinatesv)
registersymbol(load_coordinatesv)
registersymbol(x_cv)
registersymbol(y_cv)
registersymbol(z_cv)
registersymbol(%cheatName%_address)


newmem_%cheatName%:

push rdx
lea rdx,%bracketsRegsOffset%
cmp [xxxxxxxx_address],rdx    //Rename xxxxxxxx_address
pop rdx
jne enemy

push rdx
lea rdx,%bracketsRegsOffset%
mov [%cheatName%_address],rdx
pop rdx

cmp byte ptr [save_coordinates1],1
je save_c1
cmp byte ptr [save_coordinates2],1
je save_c2
cmp byte ptr [save_coordinatesv],1
je save_cv
cmp byte ptr [load_coordinates1],1
je load_c1
cmp byte ptr [load_coordinates2],1
je load_c2

%originalCodeLines%
jmp return_%cheatName%

enemy:
cmp byte ptr [load_coordinatesv],1
je enemyvac
jmp originalcode_%cheatName%

enemyvac:
cmp [x_cv],0
je originalcode_%cheatName%
push rdx
mov rdx,[x_cv]
mov [%regsOffset%],rdx
mov rdx,[y_cv]
mov [%regsOffset%+4],rdx
mov rdx,[z_cv]
mov [%regsOffset%+8],rdx
pop rdx
%originalCodeLines%
jmp return_%cheatName%

save_c1:
mov byte ptr [save_coordinates1],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c1],rdx
mov rdx,[%regsOffset%+4]
mov [y_c1],rdx
mov rdx,[%regsOffset%+8]
mov [z_c1],rdx
pop rdx
jmp originalcode_%cheatName%

save_c2:
mov byte ptr [save_coordinates2],0
push rdx
mov rdx,[%regsOffset%]
mov [x_c2],rdx
mov rdx,[%regsOffset%+4]
mov [y_c2],rdx
mov rdx,[%regsOffset%+8]
mov [z_c2],rdx
pop rdx
jmp originalcode_%cheatName%

save_cv:
mov byte ptr [save_coordinatesv],0
push rdx
mov rdx,[%regsOffset%]
mov [x_cv],rdx
mov rdx,[%regsOffset%+4]
mov [y_cv],rdx
mov rdx,[%regsOffset%+8]
mov [z_cv],rdx
pop rdx
jmp originalcode_%cheatName%

load_c1:
cmp [x_c1],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates1],0
push rdx
mov rdx,[x_c1]
mov [%regsOffset%],rdx
mov rdx,[y_c1]
mov [%regsOffset%+4],rdx
mov rdx,[z_c1]
mov [%regsOffset%+8],rdx
pop rdx
jmp originalcode_%cheatName%

load_c2:
cmp [x_c2],0
je originalcode_%cheatName%
mov byte ptr [load_coordinates2],0
push rdx
mov rdx,[x_c2]
mov [%regsOffset%],rdx
mov rdx,[y_c2]
mov [%regsOffset%+4],rdx
mov rdx,[z_c2]
mov [%regsOffset%+8],rdx
pop rdx
jmp originalcode_%cheatName%

originalcode_%cheatName%:
%originalCodeLines%
jmp return_%cheatName%

%cheatName%_address:
dq 0

save_coordinates1:
db 0
save_coordinates2:
db 0
load_coordinates1:
db 0
load_coordinates2:
db 0
save_coordinatesv:
db 0
load_coordinatesv:
db 0

x_cv:
dq 0
y_cv:
dq 0
z_cv:
dq 0

x_c1:
dq 0
y_c1:
dq 0
z_c1:
dq 0
x_c2:
dq 0
y_c2:
dq 0
z_c2:
dq 0

aob_%cheatName%%aobAdjust%:
jmp newmem_%cheatName%
%db90s%
return_%cheatName%:


<<ENABLE_END>>

<<DISABLE>>
dealloc(newmem_%cheatName%)
aob_%cheatName%%aobAdjust%:
db %originalBytes%

unregistersymbol(aob_%cheatName%)
unregistersymbol(save_coordinates1)
unregistersymbol(load_coordinates1)
unregistersymbol(x_c1)
unregistersymbol(y_c1)
unregistersymbol(z_c1)
unregistersymbol(save_coordinates2)
unregistersymbol(load_coordinates2)
unregistersymbol(x_c2)
unregistersymbol(y_c2)
unregistersymbol(z_c2)
unregistersymbol(save_coordinatesv)
unregistersymbol(load_coordinatesv)
unregistersymbol(x_cv)
unregistersymbol(y_cv)
unregistersymbol(z_cv)
unregistersymbol(%cheatName%_address)

<<DISABLE_END>>
]==]
},
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------


}

function myAOBInjectionTemplates.formCreateNotify(form)
  if form.ClassName~="TfrmAutoInject" then return end

  local timer=createTimer()
  timer.Interval=100
  timer.OnTimer = function (t)
                    if (form.Menu==nil) then return end
                    t.destroy()
                    myAOBInjectionTemplates.addMenuEntries(form)
                  end
end

function myAOBInjectionTemplates.addMenuEntries(form)
  local m,mi,sm=form.emplate1,nil,nil
  local createdSubmenus={}
  local lastMenuItemFromGroup={}
  local smIndex = 1

  mi = createMenuItem(m); m.add(mi); mi.Caption = '-' -- separator

  for i=1,#myAOBInjectionTemplates.Templates do
    local submenu = myAOBInjectionTemplates.Templates[i].submenu
    local group = myAOBInjectionTemplates.Templates[i].group
    local groupname=(submenu or '')..(group or '')

    if submenu~=nil then
      if createdSubmenus[submenu] then
        sm=createdSubmenus[submenu]
      else
        sm = createMenuItem(m); m.add(sm)
        sm.Caption = submenu
        sm.Name = 'miAlternativeAOBtemplateSubmenu'..smIndex; smIndex=smIndex+1
        createdSubmenus[submenu]=sm
      end
    else
      sm=m
    end

    if lastMenuItemFromGroup[groupname]==nil then
      if sm.Count>0 then
        mi = createMenuItem(m); sm.add(mi); mi.Caption = '-' -- separator
      end
      mi = createMenuItem(m); sm.add(mi)
      lastMenuItemFromGroup[groupname]=mi
    else
      mi = createMenuItem(m); sm.insert(lastMenuItemFromGroup[groupname].MenuIndex+1, mi)
      lastMenuItemFromGroup[groupname]=mi
    end

    mi.OnClick = function (sender)
                  myAOBInjectionTemplates.generate(sender,myAOBInjectionTemplates.Templates[i])
                 end
    mi.Caption = myAOBInjectionTemplates.Templates[i].displayName
    mi.Name = 'miAlternativeAOBtemplate'..i
  end
end

registerFormAddNotification(myAOBInjectionTemplates.formCreateNotify)



function myAOBInjectionTemplates.generate(sender,chosenTemplate)

  local displayName = chosenTemplate.displayName
  local cheatName = chosenTemplate.defaultSymbolName or 'example'
  local template = chosenTemplate.templateSections
  local form=sender.Owner.Owner
  local origScript = form.Assemblescreen.Lines.Text

  --gather existing names from origScript from registersymbol
  local existingNames = {}
  for existingName in origScript:gmatch('registersymbol%(%s*(.-)%s*%)') do
    existingNames[1+#existingNames] = existingName
  end
  -- also from define
  for existingName in origScript:gmatch('define%(%s*(.-)%s*,') do
    existingNames[1+#existingNames] = existingName
  end

  local function checkForCollides(str)
    for i,v in ipairs(existingNames) do
      if v:find(str, 1, true)~=nil then return 'Name "'..str..'" collides with existing "'..v..'"' end
      if str:find(v, 1, true)~=nil then return 'Existing "'..v..'" collides with name "'..str..'"' end
    end
    return nil
  end

  local selectedAddress = 0
  if form.owner.DisassemblerView then
    selectedAddress = getNameFromAddress(form.owner.DisassemblerView.SelectedAddress)
  else
    selectedAddress = getNameFromAddress(getMemoryViewForm().DisassemblerView.SelectedAddress)
  end

  selectedAddress=inputQuery(displayName,'On what address do you want the jump?', selectedAddress)
  if selectedAddress==nil then return end

  cheatName=inputQuery(displayName,'What do you want to name the symbol for the injection point?', cheatName)
  if cheatName==nil then return end

  ::setValidname:: --do not allow default name or those already existing/colliding or empty
  while cheatName:lower()=='inject' or
        cheatName=='' do
    cheatName=inputQuery('Caution!', 'Ugly name. Change it.', cheatName) or ''
    cheatName=cheatName:gsub('%s','') -- remove spaces
  end

  -- check if already exist or collides with each other
  local collides = checkForCollides(cheatName)
  if collides~=nil then
    cheatName=inputQuery('Caution!', collides..'. Change it.', cheatName) or ''
    cheatName=cheatName:gsub('%s','') -- remove spaces
    goto setValidname
  end

  local newScript_stringlist = createStringlist()
  local gaobisResult = generateAOBInjectionScript(newScript_stringlist, cheatName, selectedAddress)
  local newScript = newScript_stringlist.Text
  newScript_stringlist.destroy()

  -- it succeeded ?
  if newScript:match('No Process Selected') or
     newScript:match('Could not find unique AOB')
  then showMessage("No process selected or could not find unique AOB!") return end

  if not gaobisResult
  then showMessage("generateAOBInjectionScript raised exception!") return end


  -- note: 'origScript' and 'newScript' will have "carriage return & line feed" at the end of each line
  --       because it is taken from TStrings object.
  --       'template' has only "line feed"


  local authorName    = newScript:match('Author : (.-)\r\n')
  local processName   = newScript:match('Game   : (.-)\r\n')
  local isModuleScan  = newScript:match('aobscan(module)') or ''
  local searchPattern = newScript:match('aobscan.-%(.*,(.-)%).-should be unique')

  local moduleName, moduleName_comma, comma_moduleName

  if isModuleScan=='module' then
    moduleName = newScript:match('aobscan.-%('..cheatName..',(.-),')
    moduleName_comma = moduleName..','
    comma_moduleName = ','..moduleName
  else
    moduleName = ''
    moduleName_comma = ''
    comma_moduleName = ''
  end

  local _originalCodeLines = newScript:match('code:..(.-)..  jmp return')
  local aobAdjust          = newScript:match('code:.-'..cheatName..'(.-):')
  local _nopLines          = newScript:match('  jmp code..(.-)..return:') or ''

  if _nopLines=='' then  -- other case
        _nopLines          = newScript:match('  jmp newmem..(.-)..return:') or ''
  end

  local originalBytes      = newScript:match('  db (.-)\r\n')
  local additionalInfo     = newScript:match('...// ORIGINAL CODE %- INJECTION POINT.*')

  local origfirstLine = (_originalCodeLines..'\r\n'):match( "(.-)\r\n" )
  local bracketsRegsOffset  = origfirstLine:match('[dq]?word ptr %[.-%]')
                           or origfirstLine:match('byte ptr %[.-%]')
                           or origfirstLine:match('%[.-%]')
                           or ''
  local regsOffset = origfirstLine:match('%[(.-)%]') or ''

  local originalCodeLines = _originalCodeLines:sub(3):gsub('\r\n  ','\r\n')       -- indent less version
  local nopLines = _nopLines=='' and '' or _nopLines:sub(3):gsub('\r\n  ','\r\n') -- indent less version
  local db90s = _nopLines=='' and '' or 'db'..(nopLines..'\r\n'):gsub('nop\r\n',' 90')
  local CoriginalCodeLines = '//Alt: '.._originalCodeLines:sub(3):gsub('\r\n  ','\r\n//Alt: ')-- commented version

  local replacedInstructionsSize = 5 -- replacedInstructionsSize = jumpSize + NopCount; jumpSize is 5
  db90s:gsub(' 90',function (c) replacedInstructionsSize=replacedInstructionsSize+1 end) -- number of NOPs


  --Mono & Hook Address
  local injectAddress = newScript:match('INJECTING HERE %-%-%-%-%-%-%-%-%-%-\r\n(.-):')
  local injectAddressNum = getAddress(injectAddress)
  local monoAddress = ''
  if template:find('%%monoAddress%%') then -- remove lag for templates without mono
    if LaunchMonoDataCollector~=nil and LaunchMonoDataCollector()~=0 then
      monoAddress = mono_addressLookupCallback(injectAddressNum) or ''
    end
  end

  --reassembleReplacedInstructions
  local tmp = getInstructionSize(injectAddressNum)
  local reassembleReplacedInstructions = 'reassemble(~)'
  while tmp < replacedInstructionsSize do
    reassembleReplacedInstructions = reassembleReplacedInstructions .. '\nreassemble(~+'..string.format('%X',tmp)..')'
    tmp = tmp + getInstructionSize(injectAddressNum+tmp)
  end

  -- use the template
  template = template:gsub('%%cheatName%%', cheatName)
  template = template:gsub('%%authorName%%', authorName)
  template = template:gsub('%%processName%%', processName)
  template = template:gsub('%%isModuleScan%%', isModuleScan)
  template = template:gsub('%%searchPattern%%', searchPattern)
  template = template:gsub('%%CmoduleName%%', comma_moduleName)
  template = template:gsub('%%moduleNameC%%', moduleName_comma)
  template = template:gsub('%%moduleName%%', moduleName)
  template = template:gsub('%%replacedInstructionsSize%%', replacedInstructionsSize)
  template = template:gsub('%%_originalCodeLines%%', _originalCodeLines)
  template = template:gsub('%%originalCodeLines%%', originalCodeLines)
  template = template:gsub('%%CoriginalCodeLines%%', CoriginalCodeLines)
  template = template:gsub('%%originalBytes%%', originalBytes)
  template = template:gsub('%%aobAdjust%%', aobAdjust)
  template = template:gsub('%%additionalInfo%%', additionalInfo)
  template = template:gsub('%%bracketsRegsOffset%%', bracketsRegsOffset)
  template = template:gsub('%%regsOffset%%', regsOffset)
  template = template:gsub('%%injectAddress%%', injectAddress)
  template = template:gsub('%%monoAddress%%', monoAddress)
  template = template:gsub('%%reassembleReplacedInstructions%((.-)%)%%', function (a)
    return reassembleReplacedInstructions:gsub('~',a)
  end)

  if db90s~='' then
   template = template:gsub('%%nopLines%%', nopLines)
   template = template:gsub('%%_nopLines%%', _nopLines)
   template = template:gsub('%%db90s%%', db90s)
  else
   -- remove whole line when NOP'ing is not needed
   template = template:gsub('%%nopLines%%.-\n', '')
   template = template:gsub('%%_nopLines%%.-\n', '')
   template = template:gsub('%%db90s%%.-\n', '')
  end

  local enablePart  = template:match('<<ENABLE>>.(.*).<<ENABLE_END>>')
  local disablePart = template:match('<<DISABLE>>.(.*).<<DISABLE_END>>')
  local infoPart = template:match('<<INFO>>.(.*).<<INFO_END>>')

  if origScript=='\r\n' then origScript='' end --after manually deleting all lines, there's always one empty line

  local pos=origScript:find('%[DISABLE]')
  if pos then newScript=origScript:sub(1,pos-1)..'\r\n'..enablePart..'\r\n'..origScript:sub(pos)..'\r\n'..disablePart
         else newScript=origScript..'[ENABLE]\r\n'..enablePart..'\r\n[DISABLE]\r\n'..disablePart
  end

  if pos==nil and infoPart~=nil then newScript=infoPart..'\r\n'..newScript end

  form.Assemblescreen.Lines.Text = newScript -- update
end
