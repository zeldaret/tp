lbl_805BA4E4:
/* 805BA4E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA4E8  7C 08 02 A6 */	mflr r0
/* 805BA4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA4F0  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 805BA4F4  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 805BA4F8  38 C0 00 00 */	li r6, 0
/* 805BA4FC  4B A8 84 19 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 805BA500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA504  7C 08 03 A6 */	mtlr r0
/* 805BA508  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA50C  4E 80 00 20 */	blr 
