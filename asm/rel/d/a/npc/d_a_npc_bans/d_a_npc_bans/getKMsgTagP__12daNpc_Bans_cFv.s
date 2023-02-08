lbl_80964EB0:
/* 80964EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80964EB4  7C 08 02 A6 */	mflr r0
/* 80964EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80964EBC  7C 64 1B 78 */	mr r4, r3
/* 80964EC0  38 00 00 00 */	li r0, 0
/* 80964EC4  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80964EC8  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80964ECC  38 00 02 EB */	li r0, 0x2eb
/* 80964ED0  3C 60 80 45 */	lis r3, mSrchName__8daNpcT_c@ha /* 0x80450FD8@ha */
/* 80964ED4  B0 03 0F D8 */	sth r0, mSrchName__8daNpcT_c@l(r3)  /* 0x80450FD8@l */
/* 80964ED8  3C 60 80 14 */	lis r3, srchActor__8daNpcT_cFPvPv@ha /* 0x80147FD4@ha */
/* 80964EDC  38 63 7F D4 */	addi r3, r3, srchActor__8daNpcT_cFPvPv@l /* 0x80147FD4@l */
/* 80964EE0  4B 6B 49 19 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80964EE4  38 80 00 00 */	li r4, 0
/* 80964EE8  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80964EEC  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80964EF0  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80964EF4  38 A3 57 08 */	addi r5, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80964EF8  7C 09 03 A6 */	mtctr r0
/* 80964EFC  2C 00 00 00 */	cmpwi r0, 0
/* 80964F00  40 81 00 34 */	ble lbl_80964F34
lbl_80964F04:
/* 80964F04  7C 65 20 2E */	lwzx r3, r5, r4
/* 80964F08  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80964F0C  54 06 46 3E */	srwi r6, r0, 0x18
/* 80964F10  38 06 FF 01 */	addi r0, r6, -255
/* 80964F14  30 00 FF FF */	addic r0, r0, -1
/* 80964F18  7C 00 01 10 */	subfe r0, r0, r0
/* 80964F1C  7C C0 00 78 */	andc r0, r6, r0
/* 80964F20  2C 00 00 01 */	cmpwi r0, 1
/* 80964F24  40 82 00 08 */	bne lbl_80964F2C
/* 80964F28  48 00 00 10 */	b lbl_80964F38
lbl_80964F2C:
/* 80964F2C  38 84 00 04 */	addi r4, r4, 4
/* 80964F30  42 00 FF D4 */	bdnz lbl_80964F04
lbl_80964F34:
/* 80964F34  38 60 00 00 */	li r3, 0
lbl_80964F38:
/* 80964F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80964F3C  7C 08 03 A6 */	mtlr r0
/* 80964F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80964F44  4E 80 00 20 */	blr 
