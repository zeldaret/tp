lbl_801B5580:
/* 801B5580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5584  7C 08 02 A6 */	mflr r0
/* 801B5588  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B558C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5590  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5594  7C 7E 1B 78 */	mr r30, r3
/* 801B5598  80 63 00 08 */	lwz r3, 8(r3)
/* 801B559C  4B E5 9C 31 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B55A0  7C 7F 1B 78 */	mr r31, r3
/* 801B55A4  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 801B55A8  28 00 00 00 */	cmplwi r0, 0
/* 801B55AC  40 82 00 2C */	bne lbl_801B55D8
/* 801B55B0  38 60 01 FC */	li r3, 0x1fc
/* 801B55B4  48 11 96 99 */	bl __nw__FUl
/* 801B55B8  7C 60 1B 79 */	or. r0, r3, r3
/* 801B55BC  41 82 00 18 */	beq lbl_801B55D4
/* 801B55C0  80 9E 00 08 */	lwz r4, 8(r30)
/* 801B55C4  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801B55C8  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 801B55CC  48 00 F7 89 */	bl __ct__15dMenu_Fishing_cFP10JKRExpHeapP9STControlP10CSTControl
/* 801B55D0  7C 60 1B 78 */	mr r0, r3
lbl_801B55D4:
/* 801B55D4  90 1E 00 9C */	stw r0, 0x9c(r30)
lbl_801B55D8:
/* 801B55D8  7F C3 F3 78 */	mr r3, r30
/* 801B55DC  38 80 00 00 */	li r4, 0
/* 801B55E0  48 00 09 D5 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B55E4  7F C3 F3 78 */	mr r3, r30
/* 801B55E8  38 80 00 00 */	li r4, 0
/* 801B55EC  48 00 0A CD */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B55F0  38 00 00 00 */	li r0, 0
/* 801B55F4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B55F8  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801B55FC  7F E3 FB 78 */	mr r3, r31
/* 801B5600  4B E5 9B CD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5608  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B560C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5610  7C 08 03 A6 */	mtlr r0
/* 801B5614  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5618  4E 80 00 20 */	blr 
