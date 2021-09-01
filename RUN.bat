"C:\Program Files\Java\jdk-11.0.1\bin\java.exe" -jar C:\Javalib\antlr-4.9-complete.jar Asylum.g4 -o bin
"C:\Program Files\Java\jdk-11.0.1\bin\javac.exe" bin/*.java
echo Running:
cd bin
"C:\Program Files\Java\jdk-11.0.1\bin\java.exe" org.antlr.v4.gui.TestRig Asylum init -gui %1
cd ..