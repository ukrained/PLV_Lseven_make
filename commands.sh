cd taskone
ls

make -f Makefile_v1.mk
ls
make -f Makefile_v1.mk clean

make -f Makefile_v2.mk
ls
make -f Makefile_v2.mk clean

make -f Makefile_v3.mk
ls
make -f Makefile_v3.mk clean

ls
cd ../tasktwo
ls

make
ls
make clean

MK_INCLUDE_OTHERS=yes make
ls
make clean

ls
cd ..