lbl_801B5094:
/* 801B5094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5098  7C 08 02 A6 */	mflr r0
/* 801B509C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B50A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B50A4  93 C1 00 08 */	stw r30, 8(r1)
/* 801B50A8  7C 7E 1B 78 */	mr r30, r3
/* 801B50AC  80 63 00 08 */	lwz r3, 8(r3)
/* 801B50B0  4B E5 A1 1D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B50B4  7C 7F 1B 78 */	mr r31, r3
/* 801B50B8  80 1E 00 94 */	lwz r0, 0x94(r30)
/* 801B50BC  28 00 00 00 */	cmplwi r0, 0
/* 801B50C0  40 82 00 30 */	bne lbl_801B50F0
/* 801B50C4  38 60 04 0C */	li r3, 0x40c
/* 801B50C8  48 11 9B 85 */	bl __nw__FUl
/* 801B50CC  7C 60 1B 79 */	or. r0, r3, r3
/* 801B50D0  41 82 00 1C */	beq lbl_801B50EC
/* 801B50D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B50D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B50DC  80 84 5C B8 */	lwz r4, 0x5cb8(r4)
/* 801B50E0  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801B50E4  48 02 CE 2D */	bl __ct__14dMenu_Option_cFP10JKRArchiveP9STControl
/* 801B50E8  7C 60 1B 78 */	mr r0, r3
lbl_801B50EC:
/* 801B50EC  90 1E 00 94 */	stw r0, 0x94(r30)
lbl_801B50F0:
/* 801B50F0  80 7E 00 94 */	lwz r3, 0x94(r30)
/* 801B50F4  48 03 31 1D */	bl initialize__14dMenu_Option_cFv
/* 801B50F8  7F C3 F3 78 */	mr r3, r30
/* 801B50FC  38 80 00 00 */	li r4, 0
/* 801B5100  48 00 0E B5 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B5104  7F C3 F3 78 */	mr r3, r30
/* 801B5108  38 80 00 00 */	li r4, 0
/* 801B510C  48 00 0F AD */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B5110  38 00 00 00 */	li r0, 0
/* 801B5114  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B5118  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801B511C  7F E3 FB 78 */	mr r3, r31
/* 801B5120  4B E5 A0 AD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5128  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B512C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5130  7C 08 03 A6 */	mtlr r0
/* 801B5134  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5138  4E 80 00 20 */	blr 
