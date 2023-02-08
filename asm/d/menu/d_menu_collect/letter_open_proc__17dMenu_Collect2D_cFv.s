lbl_801B53AC:
/* 801B53AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B53B0  7C 08 02 A6 */	mflr r0
/* 801B53B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B53B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B53BC  93 C1 00 08 */	stw r30, 8(r1)
/* 801B53C0  7C 7E 1B 78 */	mr r30, r3
/* 801B53C4  80 63 00 08 */	lwz r3, 8(r3)
/* 801B53C8  4B E5 9E 05 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B53CC  7C 7F 1B 78 */	mr r31, r3
/* 801B53D0  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801B53D4  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801B53D8  28 00 00 01 */	cmplwi r0, 1
/* 801B53DC  40 82 00 08 */	bne lbl_801B53E4
/* 801B53E0  48 02 86 95 */	bl _open__14dMenu_Letter_cFv
lbl_801B53E4:
/* 801B53E4  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801B53E8  88 03 03 6C */	lbz r0, 0x36c(r3)
/* 801B53EC  28 00 00 02 */	cmplwi r0, 2
/* 801B53F0  40 82 00 0C */	bne lbl_801B53FC
/* 801B53F4  38 00 00 08 */	li r0, 8
/* 801B53F8  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B53FC:
/* 801B53FC  7F E3 FB 78 */	mr r3, r31
/* 801B5400  4B E5 9D CD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5408  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B540C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5410  7C 08 03 A6 */	mtlr r0
/* 801B5414  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5418  4E 80 00 20 */	blr 
