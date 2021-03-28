lbl_8019F400:
/* 8019F400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019F404  7C 08 02 A6 */	mflr r0
/* 8019F408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019F40C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019F410  7C 7F 1B 78 */	mr r31, r3
/* 8019F414  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 8019F418  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 8019F41C  48 18 62 A9 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 8019F420  7F E3 FB 78 */	mr r3, r31
/* 8019F424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019F428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019F42C  7C 08 03 A6 */	mtlr r0
/* 8019F430  38 21 00 10 */	addi r1, r1, 0x10
/* 8019F434  4E 80 00 20 */	blr 
