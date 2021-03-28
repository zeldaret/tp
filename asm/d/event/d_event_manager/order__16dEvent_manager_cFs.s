lbl_80047984:
/* 80047984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047988  7C 08 02 A6 */	mflr r0
/* 8004798C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80047990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80047994  93 C1 00 08 */	stw r30, 8(r1)
/* 80047998  7C 7E 1B 78 */	mr r30, r3
/* 8004799C  7C 9F 23 78 */	mr r31, r4
/* 800479A0  4B FF FB 1D */	bl getEventData__16dEvent_manager_cFs
/* 800479A4  7C 64 1B 79 */	or. r4, r3, r3
/* 800479A8  40 82 00 0C */	bne lbl_800479B4
/* 800479AC  38 60 00 00 */	li r3, 0
/* 800479B0  48 00 00 30 */	b lbl_800479E0
lbl_800479B4:
/* 800479B4  7F E5 07 34 */	extsh r5, r31
/* 800479B8  38 05 00 01 */	addi r0, r5, 1
/* 800479BC  30 00 FF FF */	addic r0, r0, -1
/* 800479C0  7C 60 01 10 */	subfe r3, r0, r0
/* 800479C4  7C A0 46 70 */	srawi r0, r5, 8
/* 800479C8  7C 00 18 78 */	andc r0, r0, r3
/* 800479CC  90 1E 01 B4 */	stw r0, 0x1b4(r30)
/* 800479D0  B3 FE 01 AA */	sth r31, 0x1aa(r30)
/* 800479D4  7F C3 F3 78 */	mr r3, r30
/* 800479D8  4B FF F2 E1 */	bl startProc__16dEvent_manager_cFP12dEvDtEvent_c
/* 800479DC  38 60 00 01 */	li r3, 1
lbl_800479E0:
/* 800479E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800479E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800479E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800479EC  7C 08 03 A6 */	mtlr r0
/* 800479F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800479F4  4E 80 00 20 */	blr 
