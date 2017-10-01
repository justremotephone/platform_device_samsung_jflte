#define android_atomic_acquire_load android_atomic_acquire_load_orig

#include <cutils/atomic.h>

#undef android_atomic_acquire_load

extern "C"
int32_t android_atomic_acquire_load(volatile const int32_t* addr)
{
    return android_atomic_acquire_load_orig(addr);
}
