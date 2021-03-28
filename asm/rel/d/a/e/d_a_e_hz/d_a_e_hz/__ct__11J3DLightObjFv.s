lbl_806F02C8:
/* 806F02C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F02CC  7C 08 02 A6 */	mflr r0
/* 806F02D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F02D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F02D8  7C 7F 1B 78 */	mr r31, r3
/* 806F02DC  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 806F02E0  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 806F02E4  4B C3 53 E0 */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 806F02E8  7F E3 FB 78 */	mr r3, r31
/* 806F02EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F02F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F02F4  7C 08 03 A6 */	mtlr r0
/* 806F02F8  38 21 00 10 */	addi r1, r1, 0x10
/* 806F02FC  4E 80 00 20 */	blr 
