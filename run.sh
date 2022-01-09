java -jar /usr/local/lib/antlr-4.9.3-complete.jar Asylum.g4 -o bin
javac bin/*.java
echo Running:
cd bin
java org.antlr.v4.gui.TestRig Asylum init -gui $1
cd ..
