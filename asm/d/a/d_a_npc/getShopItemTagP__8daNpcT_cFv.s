lbl_8014BFB0:
/* 8014BFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014BFB4  7C 08 02 A6 */	mflr r0
/* 8014BFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014BFBC  7C 64 1B 78 */	mr r4, r3
/* 8014BFC0  38 00 00 00 */	li r0, 0
/* 8014BFC4  90 0D 8A 5C */	stw r0, mFindCount__8daNpcT_c(r13)
/* 8014BFC8  38 00 01 27 */	li r0, 0x127
/* 8014BFCC  B0 0D 8A 58 */	sth r0, mSrchName__8daNpcT_c(r13)
/* 8014BFD0  3C 60 80 14 */	lis r3, srchActor__8daNpcT_cFPvPv@ha
/* 8014BFD4  38 63 7F D4 */	addi r3, r3, srchActor__8daNpcT_cFPvPv@l
/* 8014BFD8  4B ED 53 61 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8014BFDC  38 80 00 00 */	li r4, 0
/* 8014BFE0  80 0D 8A 5C */	lwz r0, mFindCount__8daNpcT_c(r13)
/* 8014BFE4  3C 60 80 42 */	lis r3, mFindActorPtrs__8daNpcT_c@ha
/* 8014BFE8  38 C3 57 08 */	addi r6, r3, mFindActorPtrs__8daNpcT_c@l
/* 8014BFEC  7C 09 03 A6 */	mtctr r0
/* 8014BFF0  2C 00 00 00 */	cmpwi r0, 0
/* 8014BFF4  40 81 00 28 */	ble lbl_8014C01C
lbl_8014BFF8:
/* 8014BFF8  7C 66 20 2E */	lwzx r3, r6, r4
/* 8014BFFC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8014C000  54 05 00 06 */	rlwinm r5, r0, 0, 0, 3
/* 8014C004  3C 05 10 00 */	addis r0, r5, 0x1000
/* 8014C008  28 00 00 00 */	cmplwi r0, 0
/* 8014C00C  40 82 00 08 */	bne lbl_8014C014
/* 8014C010  48 00 00 10 */	b lbl_8014C020
lbl_8014C014:
/* 8014C014  38 84 00 04 */	addi r4, r4, 4
/* 8014C018  42 00 FF E0 */	bdnz lbl_8014BFF8
lbl_8014C01C:
/* 8014C01C  38 60 00 00 */	li r3, 0
lbl_8014C020:
/* 8014C020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014C024  7C 08 03 A6 */	mtlr r0
/* 8014C028  38 21 00 10 */	addi r1, r1, 0x10
/* 8014C02C  4E 80 00 20 */	blr 
