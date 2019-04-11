SRC 		= .
LIBRARY 	=
DEFINES 	+= 

vpath %.c $(SRC)

INCLUDE = -I$(SRC) 

SOURCES = mdnssd-min.c mdnssd.c
		
OBJECTS = $(patsubst %.c,$(OBJ)/%.o,$(SOURCES)) 

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) $(LIBRARY) $(LDFLAGS) -o $@

$(OBJECTS): | bin $(OBJ)

$(OBJ):
	@mkdir -p $@
	
bin:	
	@mkdir -p bin

$(OBJ)/%.o : %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) $(INCLUDE) $< -c -o $@
	
clean:
	rm -f $(OBJECTS) $(EXECUTABLE) 

