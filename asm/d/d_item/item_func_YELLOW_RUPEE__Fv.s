lbl_80097F80:
/* 80097F80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80097F84  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80097F88  80 64 5D C4 */	lwz r3, 0x5dc4(r4)
/* 80097F8C  38 03 00 0A */	addi r0, r3, 0xa
/* 80097F90  90 04 5D C4 */	stw r0, 0x5dc4(r4)
/* 80097F94  4E 80 00 20 */	blr 
