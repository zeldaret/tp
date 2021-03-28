lbl_809A4D40:
/* 809A4D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A4D44  7C 08 02 A6 */	mflr r0
/* 809A4D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A4D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A4D50  7C 7F 1B 78 */	mr r31, r3
/* 809A4D54  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 809A4D58  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 809A4D5C  4B 98 09 68 */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 809A4D60  7F E3 FB 78 */	mr r3, r31
/* 809A4D64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A4D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A4D6C  7C 08 03 A6 */	mtlr r0
/* 809A4D70  38 21 00 10 */	addi r1, r1, 0x10
/* 809A4D74  4E 80 00 20 */	blr 
