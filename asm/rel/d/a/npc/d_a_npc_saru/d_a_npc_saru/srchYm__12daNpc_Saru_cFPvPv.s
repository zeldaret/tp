lbl_80AC0B64:
/* 80AC0B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0B68  7C 08 02 A6 */	mflr r0
/* 80AC0B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC0B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC0B74  7C 7F 1B 78 */	mr r31, r3
/* 80AC0B78  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80AC0B7C  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80AC0B80  2C 00 00 32 */	cmpwi r0, 0x32
/* 80AC0B84  40 80 00 70 */	bge lbl_80AC0BF4
/* 80AC0B88  28 1F 00 00 */	cmplwi r31, 0
/* 80AC0B8C  41 82 00 68 */	beq lbl_80AC0BF4
/* 80AC0B90  7C 1F 20 40 */	cmplw r31, r4
/* 80AC0B94  41 82 00 60 */	beq lbl_80AC0BF4
/* 80AC0B98  28 1F 00 00 */	cmplwi r31, 0
/* 80AC0B9C  41 82 00 0C */	beq lbl_80AC0BA8
/* 80AC0BA0  80 7F 00 04 */	lwz r3, 4(r31)
/* 80AC0BA4  48 00 00 08 */	b lbl_80AC0BAC
lbl_80AC0BA8:
/* 80AC0BA8  38 60 FF FF */	li r3, -1
lbl_80AC0BAC:
/* 80AC0BAC  4B 56 07 F1 */	bl fpcEx_IsExist__FUi
/* 80AC0BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80AC0BB4  41 82 00 40 */	beq lbl_80AC0BF4
/* 80AC0BB8  A8 1F 00 08 */	lha r0, 8(r31)
/* 80AC0BBC  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 80AC0BC0  40 82 00 34 */	bne lbl_80AC0BF4
/* 80AC0BC4  88 1F 06 A4 */	lbz r0, 0x6a4(r31)
/* 80AC0BC8  28 00 00 00 */	cmplwi r0, 0
/* 80AC0BCC  40 82 00 28 */	bne lbl_80AC0BF4
/* 80AC0BD0  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80AC0BD4  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80AC0BD8  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC0BDC  54 80 10 3A */	slwi r0, r4, 2
/* 80AC0BE0  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80AC0BE4  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80AC0BE8  7F E3 01 2E */	stwx r31, r3, r0
/* 80AC0BEC  38 04 00 01 */	addi r0, r4, 1
/* 80AC0BF0  90 05 00 00 */	stw r0, 0(r5)
lbl_80AC0BF4:
/* 80AC0BF4  38 60 00 00 */	li r3, 0
/* 80AC0BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC0BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC0C00  7C 08 03 A6 */	mtlr r0
/* 80AC0C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0C08  4E 80 00 20 */	blr 
