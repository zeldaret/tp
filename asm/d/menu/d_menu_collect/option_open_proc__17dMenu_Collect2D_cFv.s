lbl_801B513C:
/* 801B513C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5140  7C 08 02 A6 */	mflr r0
/* 801B5144  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B514C  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5150  7C 7E 1B 78 */	mr r30, r3
/* 801B5154  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5158  4B E5 A0 75 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B515C  7C 7F 1B 78 */	mr r31, r3
/* 801B5160  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 801B5164  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801B5168  28 00 00 01 */	cmplwi r0, 1
/* 801B516C  40 82 00 08 */	bne lbl_801B5174
/* 801B5170  48 02 EA 29 */	bl _open__14dMenu_Option_cFv
lbl_801B5174:
/* 801B5174  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 801B5178  88 03 03 EC */	lbz r0, 0x3ec(r3)
/* 801B517C  28 00 00 02 */	cmplwi r0, 2
/* 801B5180  40 82 00 0C */	bne lbl_801B518C
/* 801B5184  38 00 00 05 */	li r0, 5
/* 801B5188  98 1E 02 2C */	stb r0, 0x22c(r30)
lbl_801B518C:
/* 801B518C  7F E3 FB 78 */	mr r3, r31
/* 801B5190  4B E5 A0 3D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5198  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B519C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B51A0  7C 08 03 A6 */	mtlr r0
/* 801B51A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B51A8  4E 80 00 20 */	blr 
