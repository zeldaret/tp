/**
 * UDP_Stubs.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/Os/dolphin/UDP_Stubs.h"

/* 80372354-8037235C 36CC94 0008+00 0/0 1/1 0/0 .text            udp_cc_initialize */
__declspec(weak) int udp_cc_initialize(void* flagOut, __OSInterruptHandler handler) {
    return -1;
}

/* 8037234C-80372354 36CC8C 0008+00 0/0 1/1 0/0 .text            udp_cc_shutdown */
__declspec(weak) int udp_cc_shutdown(void) {
    return -1;
}

/* 80372344-8037234C 36CC84 0008+00 0/0 1/1 0/0 .text            udp_cc_open */
__declspec(weak) int udp_cc_open(void) {
    return -1;
}

/* 8037233C-80372344 36CC7C 0008+00 0/0 1/1 0/0 .text            udp_cc_close */
__declspec(weak) int udp_cc_close(void) {
    return -1;
}

/* 80372334-8037233C 36CC74 0008+00 0/0 1/1 0/0 .text            udp_cc_read */
__declspec(weak) int udp_cc_read(u8* dest, int size) {
    return 0;
}

/* 8037232C-80372334 36CC6C 0008+00 0/0 1/1 0/0 .text            udp_cc_write */
__declspec(weak) int udp_cc_write(const u8* src, int size) {
    return 0;
}

/* 80372324-8037232C 36CC64 0008+00 0/0 1/1 0/0 .text            udp_cc_peek */
__declspec(weak) int udp_cc_peek(void) {
    return 0;
}

/* 8037231C-80372324 36CC5C 0008+00 0/0 1/1 0/0 .text            udp_cc_pre_continue */
__declspec(weak) int udp_cc_pre_continue(void) {
    return -1;
}

/* 80372314-8037231C 36CC54 0008+00 0/0 1/1 0/0 .text            udp_cc_post_stop */
__declspec(weak) int udp_cc_post_stop(void) {
    return -1;
}
