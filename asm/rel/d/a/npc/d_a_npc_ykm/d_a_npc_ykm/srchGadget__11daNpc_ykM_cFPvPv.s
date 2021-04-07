lbl_80B54270:
/* 80B54270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B54274  7C 08 02 A6 */	mflr r0
/* 80B54278  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5427C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B54280  7C 7F 1B 78 */	mr r31, r3
/* 80B54284  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B54288  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80B5428C  2C 00 00 32 */	cmpwi r0, 0x32
/* 80B54290  40 80 00 64 */	bge lbl_80B542F4
/* 80B54294  28 1F 00 00 */	cmplwi r31, 0
/* 80B54298  41 82 00 5C */	beq lbl_80B542F4
/* 80B5429C  7C 1F 20 40 */	cmplw r31, r4
/* 80B542A0  41 82 00 54 */	beq lbl_80B542F4
/* 80B542A4  28 1F 00 00 */	cmplwi r31, 0
/* 80B542A8  41 82 00 0C */	beq lbl_80B542B4
/* 80B542AC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80B542B0  48 00 00 08 */	b lbl_80B542B8
lbl_80B542B4:
/* 80B542B4  38 60 FF FF */	li r3, -1
lbl_80B542B8:
/* 80B542B8  4B 4C D0 E5 */	bl fpcEx_IsExist__FUi
/* 80B542BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B542C0  41 82 00 34 */	beq lbl_80B542F4
/* 80B542C4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80B542C8  2C 00 02 FA */	cmpwi r0, 0x2fa
/* 80B542CC  40 82 00 28 */	bne lbl_80B542F4
/* 80B542D0  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B542D4  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80B542D8  80 85 00 00 */	lwz r4, 0(r5)
/* 80B542DC  54 80 10 3A */	slwi r0, r4, 2
/* 80B542E0  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80B542E4  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80B542E8  7F E3 01 2E */	stwx r31, r3, r0
/* 80B542EC  38 04 00 01 */	addi r0, r4, 1
/* 80B542F0  90 05 00 00 */	stw r0, 0(r5)
lbl_80B542F4:
/* 80B542F4  38 60 00 00 */	li r3, 0
/* 80B542F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B542FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B54300  7C 08 03 A6 */	mtlr r0
/* 80B54304  38 21 00 10 */	addi r1, r1, 0x10
/* 80B54308  4E 80 00 20 */	blr 
