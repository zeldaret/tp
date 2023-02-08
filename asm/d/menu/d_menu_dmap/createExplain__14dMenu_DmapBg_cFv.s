lbl_801B90E0:
/* 801B90E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B90E4  7C 08 02 A6 */	mflr r0
/* 801B90E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B90EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B90F0  93 C1 00 08 */	stw r30, 8(r1)
/* 801B90F4  7C 7E 1B 78 */	mr r30, r3
/* 801B90F8  80 03 0D 18 */	lwz r0, 0xd18(r3)
/* 801B90FC  28 00 00 00 */	cmplwi r0, 0
/* 801B9100  40 82 00 4C */	bne lbl_801B914C
/* 801B9104  80 7E 0C 9C */	lwz r3, 0xc9c(r30)
/* 801B9108  4B E5 60 C5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B910C  7C 7F 1B 78 */	mr r31, r3
/* 801B9110  38 60 00 E8 */	li r3, 0xe8
/* 801B9114  48 11 5B 39 */	bl __nw__FUl
/* 801B9118  7C 60 1B 79 */	or. r0, r3, r3
/* 801B911C  41 82 00 24 */	beq lbl_801B9140
/* 801B9120  80 9E 0C 9C */	lwz r4, 0xc9c(r30)
/* 801B9124  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B9128  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B912C  80 A5 5C C0 */	lwz r5, 0x5cc0(r5)
/* 801B9130  80 DE 0C A0 */	lwz r6, 0xca0(r30)
/* 801B9134  38 E0 00 01 */	li r7, 1
/* 801B9138  48 02 16 1D */	bl __ct__19dMenu_ItemExplain_cFP10JKRExpHeapP10JKRArchiveP9STControlb
/* 801B913C  7C 60 1B 78 */	mr r0, r3
lbl_801B9140:
/* 801B9140  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 801B9144  7F E3 FB 78 */	mr r3, r31
/* 801B9148  4B E5 60 85 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
lbl_801B914C:
/* 801B914C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B9150  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B9154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B9158  7C 08 03 A6 */	mtlr r0
/* 801B915C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B9160  4E 80 00 20 */	blr 
