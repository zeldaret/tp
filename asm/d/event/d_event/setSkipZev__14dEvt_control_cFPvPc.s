lbl_80042958:
/* 80042958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004295C  7C 08 02 A6 */	mflr r0
/* 80042960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80042964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80042968  93 C1 00 08 */	stw r30, 8(r1)
/* 8004296C  7C 7E 1B 78 */	mr r30, r3
/* 80042970  7C BF 2B 78 */	mr r31, r5
/* 80042974  3C A0 80 04 */	lis r5, dEv_defaultSkipZev__FPvi@ha /* 0x8004261C@ha */
/* 80042978  38 A5 26 1C */	addi r5, r5, dEv_defaultSkipZev__FPvi@l /* 0x8004261C@l */
/* 8004297C  38 C0 00 01 */	li r6, 1
/* 80042980  4B FF FF 95 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80042984  38 7E 01 14 */	addi r3, r30, 0x114
/* 80042988  7F E4 FB 78 */	mr r4, r31
/* 8004298C  48 32 61 A1 */	bl strcpy
/* 80042990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80042994  83 C1 00 08 */	lwz r30, 8(r1)
/* 80042998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004299C  7C 08 03 A6 */	mtlr r0
/* 800429A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800429A4  4E 80 00 20 */	blr 
