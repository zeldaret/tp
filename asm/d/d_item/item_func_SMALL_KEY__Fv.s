lbl_80098284:
/* 80098284  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098288  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8009828C  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 80098290  38 03 00 01 */	addi r0, r3, 1
/* 80098294  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
/* 80098298  4E 80 00 20 */	blr 
