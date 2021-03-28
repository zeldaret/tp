lbl_801CF1E0:
/* 801CF1E0  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801CF1E4  98 03 00 D9 */	stb r0, 0xd9(r3)
/* 801CF1E8  38 00 00 01 */	li r0, 1
/* 801CF1EC  98 03 00 D8 */	stb r0, 0xd8(r3)
/* 801CF1F0  98 83 00 E4 */	stb r4, 0xe4(r3)
/* 801CF1F4  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 801CF1F8  90 03 00 DC */	stw r0, 0xdc(r3)
/* 801CF1FC  90 C3 00 E8 */	stw r6, 0xe8(r3)
/* 801CF200  90 E3 00 EC */	stw r7, 0xec(r3)
/* 801CF204  4E 80 00 20 */	blr 
