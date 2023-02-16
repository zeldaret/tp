lbl_802BA7DC:
/* 802BA7DC  90 6D 85 C0 */	stw r3, __OSReport_disable-0x58(r13)
/* 802BA7E0  38 80 00 00 */	li r4, 0
/* 802BA7E4  90 83 00 00 */	stw r4, 0(r3)
/* 802BA7E8  38 00 FF FF */	li r0, -1
/* 802BA7EC  98 03 00 14 */	stb r0, 0x14(r3)
/* 802BA7F0  98 83 00 15 */	stb r4, 0x15(r3)
/* 802BA7F4  98 83 00 16 */	stb r4, 0x16(r3)
/* 802BA7F8  4E 80 00 20 */	blr 
