lbl_80B5F924:
/* 80B5F924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5F928  7C 08 02 A6 */	mflr r0
/* 80B5F92C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5F930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5F934  3C A0 80 45 */	lis r5, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B5F938  80 05 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r5)  /* 0x80450FDC@l */
/* 80B5F93C  2C 00 00 32 */	cmpwi r0, 0x32
/* 80B5F940  40 80 00 80 */	bge lbl_80B5F9C0
/* 80B5F944  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5F948  41 82 00 78 */	beq lbl_80B5F9C0
/* 80B5F94C  7C 1F 20 40 */	cmplw r31, r4
/* 80B5F950  41 82 00 70 */	beq lbl_80B5F9C0
/* 80B5F954  4B 4B 93 8D */	bl fopAc_IsActor__FPv
/* 80B5F958  2C 03 00 00 */	cmpwi r3, 0
/* 80B5F95C  41 82 00 64 */	beq lbl_80B5F9C0
/* 80B5F960  28 1F 00 00 */	cmplwi r31, 0
/* 80B5F964  41 82 00 0C */	beq lbl_80B5F970
/* 80B5F968  80 7F 00 04 */	lwz r3, 4(r31)
/* 80B5F96C  48 00 00 08 */	b lbl_80B5F974
lbl_80B5F970:
/* 80B5F970  38 60 FF FF */	li r3, -1
lbl_80B5F974:
/* 80B5F974  4B 4C 1A 29 */	bl fpcEx_IsExist__FUi
/* 80B5F978  2C 03 00 00 */	cmpwi r3, 0
/* 80B5F97C  41 82 00 44 */	beq lbl_80B5F9C0
/* 80B5F980  A8 1F 00 08 */	lha r0, 8(r31)
/* 80B5F984  2C 00 02 18 */	cmpwi r0, 0x218
/* 80B5F988  40 82 00 38 */	bne lbl_80B5F9C0
/* 80B5F98C  7F E3 FB 78 */	mr r3, r31
/* 80B5F990  4B 4D 80 CD */	bl getItemNo__12daItemBase_cFv
/* 80B5F994  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B5F998  40 82 00 28 */	bne lbl_80B5F9C0
/* 80B5F99C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B5F9A0  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80B5F9A4  80 85 00 00 */	lwz r4, 0(r5)
/* 80B5F9A8  54 80 10 3A */	slwi r0, r4, 2
/* 80B5F9AC  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80B5F9B0  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80B5F9B4  7F E3 01 2E */	stwx r31, r3, r0
/* 80B5F9B8  38 04 00 01 */	addi r0, r4, 1
/* 80B5F9BC  90 05 00 00 */	stw r0, 0(r5)
lbl_80B5F9C0:
/* 80B5F9C0  38 60 00 00 */	li r3, 0
/* 80B5F9C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5F9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5F9CC  7C 08 03 A6 */	mtlr r0
/* 80B5F9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5F9D4  4E 80 00 20 */	blr 
