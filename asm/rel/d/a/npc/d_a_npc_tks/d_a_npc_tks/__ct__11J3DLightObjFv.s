lbl_80B1D6A4:
/* 80B1D6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1D6A8  7C 08 02 A6 */	mflr r0
/* 80B1D6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D6B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1D6B4  7C 7F 1B 78 */	mr r31, r3
/* 80B1D6B8  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80B1D6BC  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80B1D6C0  4B 80 80 05 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80B1D6C4  7F E3 FB 78 */	mr r3, r31
/* 80B1D6C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1D6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1D6D0  7C 08 03 A6 */	mtlr r0
/* 80B1D6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1D6D8  4E 80 00 20 */	blr 
