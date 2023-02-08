lbl_80BEDBBC:
/* 80BEDBBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEDBC0  7C 08 02 A6 */	mflr r0
/* 80BEDBC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEDBC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEDBCC  7C 7F 1B 78 */	mr r31, r3
/* 80BEDBD0  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80BEDBD4  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80BEDBD8  4B 73 7A ED */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80BEDBDC  7F E3 FB 78 */	mr r3, r31
/* 80BEDBE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEDBE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEDBE8  7C 08 03 A6 */	mtlr r0
/* 80BEDBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEDBF0  4E 80 00 20 */	blr 
