CLASSPATH = ../../libs/robocode.jar:.
JFLAGS = -g -classpath $(CLASSPATH)
JC = javac
.SUFFIXES: .java .class
.java.class:
				$(JC) $(JFLAGS) $*.java

CLASSES = \
        FirstRobot.java

default: classes

classes: $(CLASSES:.java=.class)

clean:
				$(RM) *.class
