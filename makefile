all:TinyEdit

TinyEdit:main.o line.o bufer.o tools.o chunk.o document.o cursor.o
	cc main.o line.o tools.o buffer.o -o TinyEdit

myless:myless.o line.o buffer.o tools.o chunk.o
	ccmyless.o line.o tools.o buffer.o -o myless -lcurese

myless.o:myless.c lince.h buffer.h tools.h tedef.h
	cc -c -o myless.o myless.c

document.o:document.c line.h buffer.h cursor.h tools.h tedef.h
	cc -c -o document.o document.c

cursor.o:cursor.c line.h tools.h tedef.h
	cc -c -o cursor.o cursor.c

line.o:line.c line.h buffer.h tools.h tedef.h
	cc -c -o line.o line.c

tools.o:tools.c tools.h tedef.h
	cc -c -o tool.o tools.c

chunk.o:chunk.c line.h buffer.h tedef.h
	cc -c -o chunk.o chunk.c

buffer.o:buffer.c buffer.h tools.h
	cc -c -o buffer.o buffer.c
