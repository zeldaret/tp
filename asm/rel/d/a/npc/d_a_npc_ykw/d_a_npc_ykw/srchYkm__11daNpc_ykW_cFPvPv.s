lbl_80B5FB50:
/* 80B5FB50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5FB54  7C 08 02 A6 */	mflr r0
/* 80B5FB58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5FB5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5FB60  7C 7F 1B 78 */	mr r31, r3
/* 80B5FB64  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B5FB68  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80B5FB6C  2C 00 00 32 */	cmpwi r0, 0x32
/* 80B5FB70  40 80 00 64 */	bge lbl_80B5FBD4
/* 80B5FB74  28 1F 00 00 */	cmplwi r31, 0
/* 80B5FB78  41 82 00 5C */	beq lbl_80B5FBD4
/* 80B5FB7C  7C 1F 20 40 */	cmplw r31, r4
/* 80B5FB80  41 82 00 54 */	beq lbl_80B5FBD4
/* 80B5FB84  28 1F 00 00 */	cmplwi r31, 0
/* 80B5FB88  41 82 00 0C */	beq lbl_80B5FB94
/* 80B5FB8C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80B5FB90  48 00 00 08 */	b lbl_80B5FB98
lbl_80B5FB94:
/* 80B5FB94  38 60 FF FF */	li r3, -1
lbl_80B5FB98:
/* 80B5FB98  4B 4C 18 05 */	bl fpcEx_IsExist__FUi
/* 80B5FB9C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5FBA0  41 82 00 34 */	beq lbl_80B5FBD4
/* 80B5FBA4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80B5FBA8  2C 00 02 7B */	cmpwi r0, 0x27b
/* 80B5FBAC  40 82 00 28 */	bne lbl_80B5FBD4
/* 80B5FBB0  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B5FBB4  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80B5FBB8  80 85 00 00 */	lwz r4, 0(r5)
/* 80B5FBBC  54 80 10 3A */	slwi r0, r4, 2
/* 80B5FBC0  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80B5FBC4  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80B5FBC8  7F E3 01 2E */	stwx r31, r3, r0
/* 80B5FBCC  38 04 00 01 */	addi r0, r4, 1
/* 80B5FBD0  90 05 00 00 */	stw r0, 0(r5)
lbl_80B5FBD4:
/* 80B5FBD4  38 60 00 00 */	li r3, 0
/* 80B5FBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5FBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5FBE0  7C 08 03 A6 */	mtlr r0
/* 80B5FBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5FBE8  4E 80 00 20 */	blr 
