lbl_800501E0:
/* 800501E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800501E4  7C 08 02 A6 */	mflr r0
/* 800501E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800501EC  4B FF 92 35 */	bl dPa_cleanupGX__Fv
/* 800501F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800501F4  7C 08 03 A6 */	mtlr r0
/* 800501F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800501FC  4E 80 00 20 */	blr 
