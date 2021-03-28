lbl_800566D4:
/* 800566D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800566D8  7C 08 02 A6 */	mflr r0
/* 800566DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800566E0  38 00 00 00 */	li r0, 0
/* 800566E4  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 800566E8  38 00 00 03 */	li r0, 3
/* 800566EC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 800566F0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 800566F4  90 03 00 50 */	stw r0, 0x50(r3)
/* 800566F8  7C 83 23 78 */	mr r3, r4
/* 800566FC  48 2C ED B1 */	bl draw__13J3DDrawBufferCFv
/* 80056700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056704  7C 08 03 A6 */	mtlr r0
/* 80056708  38 21 00 10 */	addi r1, r1, 0x10
/* 8005670C  4E 80 00 20 */	blr 
