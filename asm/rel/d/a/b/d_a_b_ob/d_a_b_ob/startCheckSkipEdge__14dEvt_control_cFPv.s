lbl_8061AB54:
/* 8061AB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061AB58  7C 08 02 A6 */	mflr r0
/* 8061AB5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061AB60  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 8061AB64  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 8061AB68  38 C0 00 00 */	li r6, 0
/* 8061AB6C  4B A2 7D A9 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8061AB70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061AB74  7C 08 03 A6 */	mtlr r0
/* 8061AB78  38 21 00 10 */	addi r1, r1, 0x10
/* 8061AB7C  4E 80 00 20 */	blr 
