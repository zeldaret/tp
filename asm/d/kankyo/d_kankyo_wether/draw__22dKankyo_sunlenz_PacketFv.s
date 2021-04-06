lbl_80056C98:
/* 80056C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056C9C  7C 08 02 A6 */	mflr r0
/* 80056CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056CA4  7C 66 1B 78 */	mr r6, r3
/* 80056CA8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80056CAC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80056CB0  38 86 00 24 */	addi r4, r6, 0x24
/* 80056CB4  38 A6 00 10 */	addi r5, r6, 0x10
/* 80056CB8  38 C6 00 14 */	addi r6, r6, 0x14
/* 80056CBC  48 00 D7 91 */	bl dKyr_drawLenzflare__FPA4_fP4cXyzR8_GXColorPPUc
/* 80056CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056CC4  7C 08 03 A6 */	mtlr r0
/* 80056CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80056CCC  4E 80 00 20 */	blr 
