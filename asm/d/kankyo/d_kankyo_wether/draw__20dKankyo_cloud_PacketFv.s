lbl_80056E78:
/* 80056E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056E7C  7C 08 02 A6 */	mflr r0
/* 80056E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056E84  7C 64 1B 78 */	mr r4, r3
/* 80056E88  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80056E8C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80056E90  38 84 00 10 */	addi r4, r4, 0x10
/* 80056E94  48 01 26 79 */	bl drawCloudShadow__FPA4_fPPUc
/* 80056E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056E9C  7C 08 03 A6 */	mtlr r0
/* 80056EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80056EA4  4E 80 00 20 */	blr 
