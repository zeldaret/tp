lbl_800198A4:
/* 800198A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800198A8  7C 08 02 A6 */	mflr r0
/* 800198AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800198B0  48 00 8A 45 */	bl fpcM_FastCreate__FsPFPv_iPvPv
/* 800198B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800198B8  7C 08 03 A6 */	mtlr r0
/* 800198BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800198C0  4E 80 00 20 */	blr 
