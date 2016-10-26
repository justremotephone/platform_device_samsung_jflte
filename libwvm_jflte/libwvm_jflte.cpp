/* We're going to have issues with libwvm.so without this */
extern "C" int _ZN7android16MediaBufferGroupC1Ej();
extern "C" int _ZN7android16MediaBufferGroupC1Ev() {
        asm("mov r1,#0");
	return _ZN7android16MediaBufferGroupC1Ej();
}
