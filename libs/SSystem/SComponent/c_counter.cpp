
struct counter_class {
    int mCounter0;
    int mCounter1;
    int mTimer;
};

// g_Counter
extern counter_class lbl_80430CD8;

extern "C" {
void cCt_Counter(int resetCounter1) {
    if (resetCounter1 == 1) {
        lbl_80430CD8.mCounter1 = 0;
    } else {
        lbl_80430CD8.mCounter1++;
    }

    lbl_80430CD8.mCounter0++;
}
};