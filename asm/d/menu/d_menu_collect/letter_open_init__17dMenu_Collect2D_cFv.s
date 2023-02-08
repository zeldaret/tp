lbl_801B5310:
/* 801B5310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5314  7C 08 02 A6 */	mflr r0
/* 801B5318  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B531C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5320  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5324  7C 7E 1B 78 */	mr r30, r3
/* 801B5328  80 63 00 08 */	lwz r3, 8(r3)
/* 801B532C  4B E5 9E A1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5330  7C 7F 1B 78 */	mr r31, r3
/* 801B5334  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 801B5338  28 00 00 00 */	cmplwi r0, 0
/* 801B533C  40 82 00 2C */	bne lbl_801B5368
/* 801B5340  38 60 03 E8 */	li r3, 0x3e8
/* 801B5344  48 11 99 09 */	bl __nw__FUl
/* 801B5348  7C 60 1B 79 */	or. r0, r3, r3
/* 801B534C  41 82 00 18 */	beq lbl_801B5364
/* 801B5350  80 9E 00 08 */	lwz r4, 8(r30)
/* 801B5354  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801B5358  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 801B535C  48 02 7A 65 */	bl __ct__14dMenu_Letter_cFP10JKRExpHeapP9STControlP10CSTControl
/* 801B5360  7C 60 1B 78 */	mr r0, r3
lbl_801B5364:
/* 801B5364  90 1E 00 98 */	stw r0, 0x98(r30)
lbl_801B5368:
/* 801B5368  7F C3 F3 78 */	mr r3, r30
/* 801B536C  38 80 00 00 */	li r4, 0
/* 801B5370  48 00 0C 45 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B5374  7F C3 F3 78 */	mr r3, r30
/* 801B5378  38 80 00 00 */	li r4, 0
/* 801B537C  48 00 0D 3D */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B5380  38 00 00 00 */	li r0, 0
/* 801B5384  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B5388  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801B538C  7F E3 FB 78 */	mr r3, r31
/* 801B5390  4B E5 9E 3D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5398  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B539C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B53A0  7C 08 03 A6 */	mtlr r0
/* 801B53A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B53A8  4E 80 00 20 */	blr 
