lbl_809521E4:
/* 809521E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809521E8  7C 08 02 A6 */	mflr r0
/* 809521EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809521F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809521F4  7C 7F 1B 78 */	mr r31, r3
/* 809521F8  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 809521FC  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)
/* 80952200  2C 00 00 32 */	cmpwi r0, 0x32
/* 80952204  40 80 00 64 */	bge lbl_80952268
/* 80952208  28 1F 00 00 */	cmplwi r31, 0
/* 8095220C  41 82 00 5C */	beq lbl_80952268
/* 80952210  7C 1F 20 40 */	cmplw r31, r4
/* 80952214  41 82 00 54 */	beq lbl_80952268
/* 80952218  28 1F 00 00 */	cmplwi r31, 0
/* 8095221C  41 82 00 0C */	beq lbl_80952228
/* 80952220  80 7F 00 04 */	lwz r3, 4(r31)
/* 80952224  48 00 00 08 */	b lbl_8095222C
lbl_80952228:
/* 80952228  38 60 FF FF */	li r3, -1
lbl_8095222C:
/* 8095222C  4B 6C F1 70 */	b fpcEx_IsExist__FUi
/* 80952230  2C 03 00 00 */	cmpwi r3, 0
/* 80952234  41 82 00 34 */	beq lbl_80952268
/* 80952238  A8 1F 00 08 */	lha r0, 8(r31)
/* 8095223C  2C 00 01 29 */	cmpwi r0, 0x129
/* 80952240  40 82 00 28 */	bne lbl_80952268
/* 80952244  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80952248  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l
/* 8095224C  80 85 00 00 */	lwz r4, 0(r5)
/* 80952250  54 80 10 3A */	slwi r0, r4, 2
/* 80952254  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 80952258  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l
/* 8095225C  7F E3 01 2E */	stwx r31, r3, r0
/* 80952260  38 04 00 01 */	addi r0, r4, 1
/* 80952264  90 05 00 00 */	stw r0, 0(r5)
lbl_80952268:
/* 80952268  38 60 00 00 */	li r3, 0
/* 8095226C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80952270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80952274  7C 08 03 A6 */	mtlr r0
/* 80952278  38 21 00 10 */	addi r1, r1, 0x10
/* 8095227C  4E 80 00 20 */	blr 
