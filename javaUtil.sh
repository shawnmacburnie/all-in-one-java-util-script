VAR_MAIN_NAME="$1"
clear
echo "Main File Name is: $VAR_MAIN_NAME "
echo "If a manifest file exist, going to remove it and create a new one"
rm manifest.mf
echo ""

touch manifest.mf
echo "main-Class: $VAR_MAIN_NAME " >> manifest.mf


echo "Compiling java file ... "
javac $VAR_MAIN_NAME.java
echo "compiled!"
echo ""

echo "Running JavaDocs ... "
javadoc -d docs -author -tag pre.c:mc:"Pre-conditions:" -tag post.c:mc:"Post-conditions:" $VAR_MAIN_NAME.java >/dev/null
echo "JavaDocs completed!"
echo ""

echo "Creating jar file ... "
jar cvmf manifest.mf $VAR_MAIN_NAME.jar *class >/dev/null
echo "Jar file created!"
echo ""

echo "Removing Class files ... "
rm manifest.mf
rm *class
echo "Files removed!"
echo "All commands finished executing!"
echo ""