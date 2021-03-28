lbl_801B5294:
/* 801B5294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5298  7C 08 02 A6 */	mflr r0
/* 801B529C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B52A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B52A4  93 C1 00 08 */	stw r30, 8(r1)
/* 801B52A8  7C 7E 1B 78 */	mr r30, r3
/* 801B52AC  80 63 00 08 */	lwz r3, 8(r3)
/* 801B52B0  4B E5 9F 1D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B52B4  7C 7F 1B 78 */	mr r31, r3
/* 801B52B8  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 801B52BC  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801B52C0  28 00 00 03 */	cmplwi r0, 3
/* 801B52C4  40 82 00 08 */	bne lbl_801B52CC
/* 801B52C8  48 02 EB 19 */	bl _close__14dMenu_Option_cFv
lbl_801B52CC:
/* 801B52CC  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 801B52D0  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801B52D4  28 00 00 00 */	cmplwi r0, 0
/* 801B52D8  40 82 00 18 */	bne lbl_801B52F0
/* 801B52DC  38 00 00 00 */	li r0, 0
/* 801B52E0  98 1E 02 2C */	stb r0, 0x22c(r30)
/* 801B52E4  38 00 00 FF */	li r0, 0xff
/* 801B52E8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B52EC  98 03 00 B4 */	stb r0, 0xb4(r3)
lbl_801B52F0:
/* 801B52F0  7F E3 FB 78 */	mr r3, r31
/* 801B52F4  4B E5 9E D9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B52F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B52FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5304  7C 08 03 A6 */	mtlr r0
/* 801B5308  38 21 00 10 */	addi r1, r1, 0x10
/* 801B530C  4E 80 00 20 */	blr 
