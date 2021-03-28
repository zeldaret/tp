lbl_800570AC:
/* 800570AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800570B0  7C 08 02 A6 */	mflr r0
/* 800570B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800570B8  7C 64 1B 78 */	mr r4, r3
/* 800570BC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 800570C0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 800570C4  38 84 00 14 */	addi r4, r4, 0x14
/* 800570C8  48 01 75 E9 */	bl dKyr_evil_draw__FPA4_fPPUc
/* 800570CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800570D0  7C 08 03 A6 */	mtlr r0
/* 800570D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800570D8  4E 80 00 20 */	blr 
