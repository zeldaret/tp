lbl_8073FB70:
/* 8073FB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073FB74  7C 08 02 A6 */	mflr r0
/* 8073FB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073FB7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073FB80  7C 7F 1B 78 */	mr r31, r3
/* 8073FB84  4B FF F6 CD */	bl S_CheckPoint__8daE_PH_cFv
/* 8073FB88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8073FB8C  41 82 00 0C */	beq lbl_8073FB98
/* 8073FB90  7F E3 FB 78 */	mr r3, r31
/* 8073FB94  4B FF F8 41 */	bl S_SetAngle__8daE_PH_cFv
lbl_8073FB98:
/* 8073FB98  7F E3 FB 78 */	mr r3, r31
/* 8073FB9C  4B FF E2 5D */	bl FlyAnm__8daE_PH_cFv
/* 8073FBA0  A8 1F 05 AC */	lha r0, 0x5ac(r31)
/* 8073FBA4  2C 00 00 00 */	cmpwi r0, 0
/* 8073FBA8  40 81 00 18 */	ble lbl_8073FBC0
/* 8073FBAC  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 8073FBB0  C0 03 1B F4 */	lfs f0, lit_3767@l(r3)  /* 0x80741BF4@l */
/* 8073FBB4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8073FBB8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8073FBBC  48 00 00 0C */	b lbl_8073FBC8
lbl_8073FBC0:
/* 8073FBC0  7F E3 FB 78 */	mr r3, r31
/* 8073FBC4  4B FF F2 A5 */	bl S_GoTarget__8daE_PH_cFv
lbl_8073FBC8:
/* 8073FBC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073FBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073FBD0  7C 08 03 A6 */	mtlr r0
/* 8073FBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8073FBD8  4E 80 00 20 */	blr 
