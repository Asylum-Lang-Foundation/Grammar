"C:\Program Files\Java\jdk-11.0.1\bin\java.exe" -jar C:\Javalib\antlr-4.9-complete.jar AsylumClean.g4 -o bin
"C:\Program Files\Java\jdk-11.0.1\bin\javac.exe" bin/*.java
echo Running:
cd bin
"C:\Program Files\Java\jdk-11.0.1\bin\java.exe" org.antlr.v4.gui.TestRig AsylumClean init -gui %1
cd ..