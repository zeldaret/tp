lbl_801B5018:
/* 801B5018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B501C  7C 08 02 A6 */	mflr r0
/* 801B5020  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5024  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5028  93 C1 00 08 */	stw r30, 8(r1)
/* 801B502C  7C 7E 1B 78 */	mr r30, r3
/* 801B5030  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5034  4B E5 A1 99 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5038  7C 7F 1B 78 */	mr r31, r3
/* 801B503C  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B5040  88 03 01 BA */	lbz r0, 0x1ba(r3)
/* 801B5044  28 00 00 03 */	cmplwi r0, 3
/* 801B5048  40 82 00 08 */	bne lbl_801B5050
/* 801B504C  48 03 BA C5 */	bl _close__12dMenu_save_cFv
lbl_801B5050:
/* 801B5050  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B5054  88 03 01 BA */	lbz r0, 0x1ba(r3)
/* 801B5058  28 00 00 00 */	cmplwi r0, 0
/* 801B505C  40 82 00 18 */	bne lbl_801B5074
/* 801B5060  38 00 00 00 */	li r0, 0
/* 801B5064  98 1E 02 2C */	stb r0, 0x22c(r30)
/* 801B5068  38 00 00 FF */	li r0, 0xff
/* 801B506C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B5070  98 03 00 B4 */	stb r0, 0xb4(r3)
lbl_801B5074:
/* 801B5074  7F E3 FB 78 */	mr r3, r31
/* 801B5078  4B E5 A1 55 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B507C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5080  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5088  7C 08 03 A6 */	mtlr r0
/* 801B508C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5090  4E 80 00 20 */	blr 
