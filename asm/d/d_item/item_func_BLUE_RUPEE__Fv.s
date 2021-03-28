lbl_80097F68:
/* 80097F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80097F6C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80097F70  80 64 5D C4 */	lwz r3, 0x5dc4(r4)
/* 80097F74  38 03 00 05 */	addi r0, r3, 5
/* 80097F78  90 04 5D C4 */	stw r0, 0x5dc4(r4)
/* 80097F7C  4E 80 00 20 */	blr 
