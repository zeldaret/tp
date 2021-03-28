lbl_80779800:
/* 80779800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80779804  7C 08 02 A6 */	mflr r0
/* 80779808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077980C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80779810  7C 7F 1B 78 */	mr r31, r3
/* 80779814  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 80779818  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 8077981C  4B BA BE A8 */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 80779820  7F E3 FB 78 */	mr r3, r31
/* 80779824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80779828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077982C  7C 08 03 A6 */	mtlr r0
/* 80779830  38 21 00 10 */	addi r1, r1, 0x10
/* 80779834  4E 80 00 20 */	blr 
