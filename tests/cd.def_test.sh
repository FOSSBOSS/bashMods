#!/usr/local/bin/bash
#!/home/m/Downloads/bash-5.3/bash

#m@cker:~/Desktop/test$ type -a bash
#bash is /usr/local/bin/bash
#bash is /usr/bin/bash
#bash is /bin/bash

# echo /usr/local/bin/bash | sudo tee -a /etc/shells
#chsh -s /usr/local/bin/bash

# testing script for a mod to bash that alows for cd -N to 
# navigate to N directories up instead of typing ../../../ or ...... 
# whatever, plus cd -N should be itterable in scripts
# if that could possibly be usefull.

# Create test directory structure
og=$(pwd)
echo " starting im $og"
mkdir -p testdir/a/b/c/d/e/f/g/h/i/j
cd testdir/a/b/c/d/e/f/g/h/i/j
pwd

echo "cd -2 (should go up 2 directories)"
cd -2
pwd  
echo " Should show .../g/h/"
read

echo " Should show ../d/e/f/g"
cd -1
pwd
read

cd -3 
echo " Should show ...a/b/c/d"
pwd

echo " Test cd -0 (no-op)"
cd -0
pwd  
echo " Should show .../a/b/c/d"

echo " Test larger numbers"
cd $og # back to start
cd testdir/a/b/c/d/e/f/g/h/i/j
cd -5
pwd  
echo " Should show .../a/b/c/d/e"
read

echo "going back to $og"
cd $og
pwd
ls
