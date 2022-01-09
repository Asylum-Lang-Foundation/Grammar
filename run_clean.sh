java -jar /usr/local/lib/antlr-4.9.3-complete.jar AsylumClean.g4 -o bin
javac bin/*.java
echo Running:
cd bin
java org.antlr.v4.gui.TestRig AsylumClean init -gui $1
cd ..
