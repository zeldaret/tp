lbl_80099570:
/* 80099570  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099574  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80099578  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 8009957C  38 03 00 01 */	addi r0, r3, 1
/* 80099580  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
/* 80099584  4E 80 00 20 */	blr 
