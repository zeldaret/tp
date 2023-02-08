lbl_8055C1AC:
/* 8055C1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C1B0  7C 08 02 A6 */	mflr r0
/* 8055C1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C1B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C1BC  7C 7F 1B 78 */	mr r31, r3
/* 8055C1C0  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 8055C1C4  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 8055C1C8  2C 00 00 32 */	cmpwi r0, 0x32
/* 8055C1CC  40 80 00 64 */	bge lbl_8055C230
/* 8055C1D0  28 1F 00 00 */	cmplwi r31, 0
/* 8055C1D4  41 82 00 5C */	beq lbl_8055C230
/* 8055C1D8  7C 1F 20 40 */	cmplw r31, r4
/* 8055C1DC  41 82 00 54 */	beq lbl_8055C230
/* 8055C1E0  28 1F 00 00 */	cmplwi r31, 0
/* 8055C1E4  41 82 00 0C */	beq lbl_8055C1F0
/* 8055C1E8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8055C1EC  48 00 00 08 */	b lbl_8055C1F4
lbl_8055C1F0:
/* 8055C1F0  38 60 FF FF */	li r3, -1
lbl_8055C1F4:
/* 8055C1F4  4B AC 51 A9 */	bl fpcEx_IsExist__FUi
/* 8055C1F8  2C 03 00 00 */	cmpwi r3, 0
/* 8055C1FC  41 82 00 34 */	beq lbl_8055C230
/* 8055C200  A8 1F 00 08 */	lha r0, 8(r31)
/* 8055C204  2C 00 01 2E */	cmpwi r0, 0x12e
/* 8055C208  40 82 00 28 */	bne lbl_8055C230
/* 8055C20C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 8055C210  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 8055C214  80 85 00 00 */	lwz r4, 0(r5)
/* 8055C218  54 80 10 3A */	slwi r0, r4, 2
/* 8055C21C  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 8055C220  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 8055C224  7F E3 01 2E */	stwx r31, r3, r0
/* 8055C228  38 04 00 01 */	addi r0, r4, 1
/* 8055C22C  90 05 00 00 */	stw r0, 0(r5)
lbl_8055C230:
/* 8055C230  38 60 00 00 */	li r3, 0
/* 8055C234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C23C  7C 08 03 A6 */	mtlr r0
/* 8055C240  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C244  4E 80 00 20 */	blr 
