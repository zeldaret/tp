/* 8002DCA8 0002ABE8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002DCAC 0002ABEC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002DCB0 0002ABF0  A0 63 00 00 */ lhz r3, 0(r3)
/* 8002DCB4 0002ABF4  38 00 00 05 */ li r0, 5
/* 8002DCB8 0002ABF8  7C 03 03 D6 */ divw r0, r3, r0
/* 8002DCBC 0002ABFC  54 03 14 3A */ rlwinm r3, r0, 2, 0x10, 0x1d
/* 8002DCC0 0002AC00  4E 80 00 20 */ blr
