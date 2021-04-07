lbl_80CCEFA4:
/* 80CCEFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCEFA8  7C 08 02 A6 */	mflr r0
/* 80CCEFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCEFB0  7C 64 1B 78 */	mr r4, r3
/* 80CCEFB4  38 00 00 00 */	li r0, 0
/* 80CCEFB8  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80CCEFBC  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80CCEFC0  38 00 02 EB */	li r0, 0x2eb
/* 80CCEFC4  3C 60 80 45 */	lis r3, mSrchName__8daNpcT_c@ha /* 0x80450FD8@ha */
/* 80CCEFC8  B0 03 0F D8 */	sth r0, mSrchName__8daNpcT_c@l(r3)  /* 0x80450FD8@l */
/* 80CCEFCC  3C 60 80 14 */	lis r3, srchActor__8daNpcT_cFPvPv@ha /* 0x80147FD4@ha */
/* 80CCEFD0  38 63 7F D4 */	addi r3, r3, srchActor__8daNpcT_cFPvPv@l /* 0x80147FD4@l */
/* 80CCEFD4  4B 34 A8 25 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80CCEFD8  38 80 00 00 */	li r4, 0
/* 80CCEFDC  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80CCEFE0  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80CCEFE4  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80CCEFE8  38 A3 57 08 */	addi r5, r3, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80CCEFEC  7C 09 03 A6 */	mtctr r0
/* 80CCEFF0  2C 00 00 00 */	cmpwi r0, 0
/* 80CCEFF4  40 81 00 34 */	ble lbl_80CCF028
lbl_80CCEFF8:
/* 80CCEFF8  7C 65 20 2E */	lwzx r3, r5, r4
/* 80CCEFFC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CCF000  54 06 46 3E */	srwi r6, r0, 0x18
/* 80CCF004  38 06 FF 01 */	addi r0, r6, -255
/* 80CCF008  30 00 FF FF */	addic r0, r0, -1
/* 80CCF00C  7C 00 01 10 */	subfe r0, r0, r0
/* 80CCF010  7C C0 00 78 */	andc r0, r6, r0
/* 80CCF014  2C 00 00 03 */	cmpwi r0, 3
/* 80CCF018  40 82 00 08 */	bne lbl_80CCF020
/* 80CCF01C  48 00 00 10 */	b lbl_80CCF02C
lbl_80CCF020:
/* 80CCF020  38 84 00 04 */	addi r4, r4, 4
/* 80CCF024  42 00 FF D4 */	bdnz lbl_80CCEFF8
lbl_80CCF028:
/* 80CCF028  38 60 00 00 */	li r3, 0
lbl_80CCF02C:
/* 80CCF02C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCF030  7C 08 03 A6 */	mtlr r0
/* 80CCF034  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCF038  4E 80 00 20 */	blr 
