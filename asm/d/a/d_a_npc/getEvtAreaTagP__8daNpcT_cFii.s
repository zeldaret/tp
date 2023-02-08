lbl_8014BEE4:
/* 8014BEE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BEE8  7C 08 02 A6 */	mflr r0
/* 8014BEEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BEF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014BEF4  93 C1 00 08 */	stw r30, 8(r1)
/* 8014BEF8  7C 66 1B 78 */	mr r6, r3
/* 8014BEFC  7C 9E 23 78 */	mr r30, r4
/* 8014BF00  7C BF 2B 78 */	mr r31, r5
/* 8014BF04  38 00 00 00 */	li r0, 0
/* 8014BF08  90 0D 8A 5C */	stw r0, mFindCount__8daNpcT_c(r13)
/* 8014BF0C  38 00 02 E9 */	li r0, 0x2e9
/* 8014BF10  B0 0D 8A 58 */	sth r0, mSrchName__8daNpcT_c(r13)
/* 8014BF14  3C 60 80 14 */	lis r3, srchActor__8daNpcT_cFPvPv@ha /* 0x80147FD4@ha */
/* 8014BF18  38 63 7F D4 */	addi r3, r3, srchActor__8daNpcT_cFPvPv@l /* 0x80147FD4@l */
/* 8014BF1C  7C C4 33 78 */	mr r4, r6
/* 8014BF20  4B ED 54 19 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8014BF24  38 80 00 00 */	li r4, 0
/* 8014BF28  80 0D 8A 5C */	lwz r0, mFindCount__8daNpcT_c(r13)
/* 8014BF2C  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 8014BF30  38 C3 57 08 */	addi r6, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 8014BF34  7C 09 03 A6 */	mtctr r0
/* 8014BF38  2C 00 00 00 */	cmpwi r0, 0
/* 8014BF3C  40 81 00 58 */	ble lbl_8014BF94
lbl_8014BF40:
/* 8014BF40  7C 66 20 2E */	lwzx r3, r6, r4
/* 8014BF44  A8 E3 04 E8 */	lha r7, 0x4e8(r3)
/* 8014BF48  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 8014BF4C  38 05 FF 01 */	addi r0, r5, -255
/* 8014BF50  30 00 FF FF */	addic r0, r0, -1
/* 8014BF54  7C 00 01 10 */	subfe r0, r0, r0
/* 8014BF58  7C A0 00 78 */	andc r0, r5, r0
/* 8014BF5C  7C 1E 00 00 */	cmpw r30, r0
/* 8014BF60  40 82 00 2C */	bne lbl_8014BF8C
/* 8014BF64  54 E0 04 2E */	rlwinm r0, r7, 0, 0x10, 0x17
/* 8014BF68  7C 00 46 70 */	srawi r0, r0, 8
/* 8014BF6C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8014BF70  38 05 FF 01 */	addi r0, r5, -255
/* 8014BF74  30 00 FF FF */	addic r0, r0, -1
/* 8014BF78  7C 00 01 10 */	subfe r0, r0, r0
/* 8014BF7C  7C A0 00 78 */	andc r0, r5, r0
/* 8014BF80  7C 1F 00 00 */	cmpw r31, r0
/* 8014BF84  40 82 00 08 */	bne lbl_8014BF8C
/* 8014BF88  48 00 00 10 */	b lbl_8014BF98
lbl_8014BF8C:
/* 8014BF8C  38 84 00 04 */	addi r4, r4, 4
/* 8014BF90  42 00 FF B0 */	bdnz lbl_8014BF40
lbl_8014BF94:
/* 8014BF94  38 60 00 00 */	li r3, 0
lbl_8014BF98:
/* 8014BF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014BF9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014BFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014BFA4  7C 08 03 A6 */	mtlr r0
/* 8014BFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8014BFAC  4E 80 00 20 */	blr 
