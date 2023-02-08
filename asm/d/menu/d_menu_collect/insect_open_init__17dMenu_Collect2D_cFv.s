lbl_801B5A60:
/* 801B5A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5A64  7C 08 02 A6 */	mflr r0
/* 801B5A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5A70  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5A74  7C 7E 1B 78 */	mr r30, r3
/* 801B5A78  80 63 00 08 */	lwz r3, 8(r3)
/* 801B5A7C  4B E5 97 51 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5A80  7C 7F 1B 78 */	mr r31, r3
/* 801B5A84  80 1E 00 A4 */	lwz r0, 0xa4(r30)
/* 801B5A88  28 00 00 00 */	cmplwi r0, 0
/* 801B5A8C  40 82 00 30 */	bne lbl_801B5ABC
/* 801B5A90  38 60 01 00 */	li r3, 0x100
/* 801B5A94  48 11 91 B9 */	bl __nw__FUl
/* 801B5A98  7C 60 1B 79 */	or. r0, r3, r3
/* 801B5A9C  41 82 00 1C */	beq lbl_801B5AB8
/* 801B5AA0  80 9E 00 08 */	lwz r4, 8(r30)
/* 801B5AA4  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801B5AA8  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 801B5AAC  38 E0 00 00 */	li r7, 0
/* 801B5AB0  48 02 26 65 */	bl __ct__14dMenu_Insect_cFP10JKRExpHeapP9STControlP10CSTControlUc
/* 801B5AB4  7C 60 1B 78 */	mr r0, r3
lbl_801B5AB8:
/* 801B5AB8  90 1E 00 A4 */	stw r0, 0xa4(r30)
lbl_801B5ABC:
/* 801B5ABC  7F C3 F3 78 */	mr r3, r30
/* 801B5AC0  38 80 00 00 */	li r4, 0
/* 801B5AC4  48 00 04 F1 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B5AC8  7F C3 F3 78 */	mr r3, r30
/* 801B5ACC  38 80 00 00 */	li r4, 0
/* 801B5AD0  48 00 05 E9 */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B5AD4  38 00 00 00 */	li r0, 0
/* 801B5AD8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B5ADC  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801B5AE0  7F E3 FB 78 */	mr r3, r31
/* 801B5AE4  4B E5 96 E9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5AEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5AF4  7C 08 03 A6 */	mtlr r0
/* 801B5AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5AFC  4E 80 00 20 */	blr 
