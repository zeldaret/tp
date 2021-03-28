lbl_80056E08:
/* 80056E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056E0C  7C 08 02 A6 */	mflr r0
/* 80056E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056E14  7C 64 1B 78 */	mr r4, r3
/* 80056E18  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80056E1C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80056E20  38 84 00 10 */	addi r4, r4, 0x10
/* 80056E24  48 01 17 B9 */	bl dKyr_drawStar__FPA4_fPPUc
/* 80056E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056E2C  7C 08 03 A6 */	mtlr r0
/* 80056E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80056E34  4E 80 00 20 */	blr 
