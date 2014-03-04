#Java compiler/java docs/java jar shell script!
Welcome to my repo for an all in one hassel free java script utility. This script will take in a command line parameter which is the name of your main java file (NOTE: just name, no '.java' extension). With that, it will compile all files linked to it, run javadocs to created them for you, and also create a working jar file.

When you get a copy of this script, Do not forget to change permisions on this file so it can be executed.

###Change file permisions
    chmod +x javaUtil.sh

To run this program all you need to do is one in one command line peramiter which is the name of your main file (NOTE: again, just the name of the file. not the extension '.java')

###Input
    ./javaUtil.sh javaFileName

Once run it should tell you whats going on, and if there are any errors. if there are compile errors then you need to fix them. this program assumes that you have done that already and are ready for testing in a jar file or just submitting this is an assignment, or for just persional use. One more time it does not handle errors! this is for just simply not having to type everything out every time.

###Sample Output (with no errors)
    Main File Name is: javaFileName
    If a manifest file exist, going to remove it and create a new one

    Compiling java file ...
    compiled!

    Running JavaDocs ...
    JavaDocs completed!

    Creating jar file ...
    Jar file created!

    Removing Class files ...
    Files removed!
    All files finished executing!