lbl_80A3C324:
/* 80A3C324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C328  7C 08 02 A6 */	mflr r0
/* 80A3C32C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C334  7C 7F 1B 78 */	mr r31, r3
/* 80A3C338  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80A3C33C  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80A3C340  4B 8E 93 85 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80A3C344  7F E3 FB 78 */	mr r3, r31
/* 80A3C348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C350  7C 08 03 A6 */	mtlr r0
/* 80A3C354  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C358  4E 80 00 20 */	blr 
