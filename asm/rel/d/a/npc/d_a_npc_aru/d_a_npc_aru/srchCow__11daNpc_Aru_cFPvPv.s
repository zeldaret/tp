lbl_8095213C:
/* 8095213C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80952140  7C 08 02 A6 */	mflr r0
/* 80952144  90 01 00 14 */	stw r0, 0x14(r1)
/* 80952148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095214C  3C A0 80 45 */	lis r5, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80952150  80 05 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r5)  /* 0x80450FDC@l */
/* 80952154  2C 00 00 32 */	cmpwi r0, 0x32
/* 80952158  40 80 00 74 */	bge lbl_809521CC
/* 8095215C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80952160  41 82 00 6C */	beq lbl_809521CC
/* 80952164  7C 1F 20 40 */	cmplw r31, r4
/* 80952168  41 82 00 64 */	beq lbl_809521CC
/* 8095216C  28 1F 00 00 */	cmplwi r31, 0
/* 80952170  41 82 00 0C */	beq lbl_8095217C
/* 80952174  80 7F 00 04 */	lwz r3, 4(r31)
/* 80952178  48 00 00 08 */	b lbl_80952180
lbl_8095217C:
/* 8095217C  38 60 FF FF */	li r3, -1
lbl_80952180:
/* 80952180  4B 6C F2 1D */	bl fpcEx_IsExist__FUi
/* 80952184  2C 03 00 00 */	cmpwi r3, 0
/* 80952188  41 82 00 44 */	beq lbl_809521CC
/* 8095218C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80952190  2C 00 01 06 */	cmpwi r0, 0x106
/* 80952194  40 82 00 38 */	bne lbl_809521CC
/* 80952198  7F E3 FB 78 */	mr r3, r31
/* 8095219C  4B D0 AE A1 */	bl isGuardFad__7daCow_cFv
/* 809521A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809521A4  40 82 00 28 */	bne lbl_809521CC
/* 809521A8  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 809521AC  38 A3 0F DC */	addi r5, r3, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 809521B0  80 85 00 00 */	lwz r4, 0(r5)
/* 809521B4  54 80 10 3A */	slwi r0, r4, 2
/* 809521B8  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 809521BC  38 63 57 08 */	addi r3, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 809521C0  7F E3 01 2E */	stwx r31, r3, r0
/* 809521C4  38 04 00 01 */	addi r0, r4, 1
/* 809521C8  90 05 00 00 */	stw r0, 0(r5)
lbl_809521CC:
/* 809521CC  38 60 00 00 */	li r3, 0
/* 809521D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809521D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809521D8  7C 08 03 A6 */	mtlr r0
/* 809521DC  38 21 00 10 */	addi r1, r1, 0x10
/* 809521E0  4E 80 00 20 */	blr 
