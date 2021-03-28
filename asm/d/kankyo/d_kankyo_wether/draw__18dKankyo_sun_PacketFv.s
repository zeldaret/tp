lbl_80056C60:
/* 80056C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056C64  7C 08 02 A6 */	mflr r0
/* 80056C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056C6C  7C 66 1B 78 */	mr r6, r3
/* 80056C70  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80056C74  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80056C78  38 86 00 10 */	addi r4, r6, 0x10
/* 80056C7C  38 A6 00 70 */	addi r5, r6, 0x70
/* 80056C80  38 C6 00 2C */	addi r6, r6, 0x2c
/* 80056C84  48 00 C9 ED */	bl dKyr_drawSun__FPA4_fP4cXyzR8_GXColorPPUc
/* 80056C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056C8C  7C 08 03 A6 */	mtlr r0
/* 80056C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80056C94  4E 80 00 20 */	blr 
