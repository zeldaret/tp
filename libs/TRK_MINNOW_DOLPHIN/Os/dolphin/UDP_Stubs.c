/**
 * UDP_Stubs.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/Os/dolphin/UDP_Stubs.h"

/* 80372314-8037231C 36CC54 0008+00 0/0 1/1 0/0 .text            udp_cc_post_stop */
s32 udp_cc_post_stop(void) {
    return -1;
}

/* 8037231C-80372324 36CC5C 0008+00 0/0 1/1 0/0 .text            udp_cc_pre_continue */
s32 udp_cc_pre_continue(void) {
    return -1;
}

/* 80372324-8037232C 36CC64 0008+00 0/0 1/1 0/0 .text            udp_cc_peek */
u8 udp_cc_peek(void) {
    return 0;
}

/* 8037232C-80372334 36CC6C 0008+00 0/0 1/1 0/0 .text            udp_cc_write */
u8 udp_cc_write(void) {
    return 0;
}

/* 80372334-8037233C 36CC74 0008+00 0/0 1/1 0/0 .text            udp_cc_read */
u8 udp_cc_read(void) {
    return 0;
}

/* 8037233C-80372344 36CC7C 0008+00 0/0 1/1 0/0 .text            udp_cc_close */
s32 udp_cc_close(void) {
    return -1;
}

/* 80372344-8037234C 36CC84 0008+00 0/0 1/1 0/0 .text            udp_cc_open */
s32 udp_cc_open(void) {
    return -1;
}

/* 8037234C-80372354 36CC8C 0008+00 0/0 1/1 0/0 .text            udp_cc_shutdown */
s32 udp_cc_shutdown(void) {
    return -1;
}

/* 80372354-8037235C 36CC94 0008+00 0/0 1/1 0/0 .text            udp_cc_initialize */
s32 udp_cc_initialize(void) {
    return -1;
}
