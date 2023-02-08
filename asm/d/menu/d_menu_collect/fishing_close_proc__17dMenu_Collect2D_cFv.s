lbl_801B5774:
/* 801B5774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5778  7C 08 02 A6 */	mflr r0
/* 801B577C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5784  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5788  7C 7E 1B 78 */	mr r30, r3
/* 801B578C  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5790  4B E5 9A 3D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5794  7C 7F 1B 78 */	mr r31, r3
/* 801B5798  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 801B579C  88 03 01 FA */	lbz r0, 0x1fa(r3)
/* 801B57A0  28 00 00 03 */	cmplwi r0, 3
/* 801B57A4  40 82 00 08 */	bne lbl_801B57AC
/* 801B57A8  48 00 FC C9 */	bl _close__15dMenu_Fishing_cFv
lbl_801B57AC:
/* 801B57AC  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 801B57B0  88 03 01 FA */	lbz r0, 0x1fa(r3)
/* 801B57B4  28 00 00 00 */	cmplwi r0, 0
/* 801B57B8  40 82 00 18 */	bne lbl_801B57D0
/* 801B57BC  38 00 00 00 */	li r0, 0
/* 801B57C0  98 1E 02 2C */	stb r0, 0x22c(r30)
/* 801B57C4  38 00 00 FF */	li r0, 0xff
/* 801B57C8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B57CC  98 03 00 B4 */	stb r0, 0xb4(r3)
lbl_801B57D0:
/* 801B57D0  7F E3 FB 78 */	mr r3, r31
/* 801B57D4  4B E5 99 F9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B57D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B57DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B57E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B57E4  7C 08 03 A6 */	mtlr r0
/* 801B57E8  38 21 00 10 */	addi r1, r1, 0x10
/* 801B57EC  4E 80 00 20 */	blr 
