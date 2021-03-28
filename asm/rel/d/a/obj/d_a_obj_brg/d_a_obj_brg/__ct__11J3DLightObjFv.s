lbl_80BC20FC:
/* 80BC20FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC2100  7C 08 02 A6 */	mflr r0
/* 80BC2104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC2108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC210C  7C 7F 1B 78 */	mr r31, r3
/* 80BC2110  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 80BC2114  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 80BC2118  4B 76 35 AC */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 80BC211C  7F E3 FB 78 */	mr r3, r31
/* 80BC2120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC2124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC2128  7C 08 03 A6 */	mtlr r0
/* 80BC212C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC2130  4E 80 00 20 */	blr 
