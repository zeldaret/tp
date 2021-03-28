lbl_80056EE8:
/* 80056EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056EEC  7C 08 02 A6 */	mflr r0
/* 80056EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056EF4  7C 64 1B 78 */	mr r4, r3
/* 80056EF8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80056EFC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80056F00  38 84 00 1C */	addi r4, r4, 0x1c
/* 80056F04  48 00 F6 39 */	bl dKyr_drawHousi__FPA4_fPPUc
/* 80056F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056F0C  7C 08 03 A6 */	mtlr r0
/* 80056F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80056F14  4E 80 00 20 */	blr 
