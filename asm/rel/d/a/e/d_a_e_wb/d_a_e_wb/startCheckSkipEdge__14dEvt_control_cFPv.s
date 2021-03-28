lbl_807E2908:
/* 807E2908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E290C  7C 08 02 A6 */	mflr r0
/* 807E2910  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E2914  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 807E2918  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 807E291C  38 C0 00 00 */	li r6, 0
/* 807E2920  4B 85 FF F4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 807E2924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2928  7C 08 03 A6 */	mtlr r0
/* 807E292C  38 21 00 10 */	addi r1, r1, 0x10
/* 807E2930  4E 80 00 20 */	blr 
