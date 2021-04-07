lbl_80D43C34:
/* 80D43C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43C38  7C 08 02 A6 */	mflr r0
/* 80D43C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D43C44  7C 7F 1B 78 */	mr r31, r3
/* 80D43C48  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80D43C4C  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80D43C50  4B 5E 1A 75 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80D43C54  7F E3 FB 78 */	mr r3, r31
/* 80D43C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D43C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43C60  7C 08 03 A6 */	mtlr r0
/* 80D43C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43C68  4E 80 00 20 */	blr 
