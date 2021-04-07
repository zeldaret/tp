lbl_80056F58:
/* 80056F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056F5C  7C 08 02 A6 */	mflr r0
/* 80056F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056F64  7C 65 1B 78 */	mr r5, r3
/* 80056F68  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80056F6C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80056F70  38 85 00 10 */	addi r4, r5, 0x10
/* 80056F74  38 A5 00 14 */	addi r5, r5, 0x14
/* 80056F78  48 01 31 19 */	bl drawVrkumo__FPA4_fR8_GXColorPPUc
/* 80056F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056F80  7C 08 03 A6 */	mtlr r0
/* 80056F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80056F88  4E 80 00 20 */	blr 
