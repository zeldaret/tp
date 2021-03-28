lbl_801B57F0:
/* 801B57F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B57F4  7C 08 02 A6 */	mflr r0
/* 801B57F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B57FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5800  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5804  7C 7E 1B 78 */	mr r30, r3
/* 801B5808  80 63 00 08 */	lwz r3, 8(r3)
/* 801B580C  4B E5 99 C1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5810  7C 7F 1B 78 */	mr r31, r3
/* 801B5814  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 801B5818  28 00 00 00 */	cmplwi r0, 0
/* 801B581C  40 82 00 2C */	bne lbl_801B5848
/* 801B5820  38 60 02 0C */	li r3, 0x20c
/* 801B5824  48 11 94 29 */	bl __nw__FUl
/* 801B5828  7C 60 1B 79 */	or. r0, r3, r3
/* 801B582C  41 82 00 18 */	beq lbl_801B5844
/* 801B5830  80 9E 00 08 */	lwz r4, 8(r30)
/* 801B5834  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 801B5838  80 DE 00 14 */	lwz r6, 0x14(r30)
/* 801B583C  48 04 19 E9 */	bl __ct__13dMenu_Skill_cFP10JKRExpHeapP9STControlP10CSTControl
/* 801B5840  7C 60 1B 78 */	mr r0, r3
lbl_801B5844:
/* 801B5844  90 1E 00 A0 */	stw r0, 0xa0(r30)
lbl_801B5848:
/* 801B5848  7F C3 F3 78 */	mr r3, r30
/* 801B584C  38 80 00 00 */	li r4, 0
/* 801B5850  48 00 07 65 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B5854  7F C3 F3 78 */	mr r3, r30
/* 801B5858  38 80 00 00 */	li r4, 0
/* 801B585C  48 00 08 5D */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B5860  38 00 00 00 */	li r0, 0
/* 801B5864  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B5868  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801B586C  7F E3 FB 78 */	mr r3, r31
/* 801B5870  4B E5 99 5D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B5874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5878  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B587C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5880  7C 08 03 A6 */	mtlr r0
/* 801B5884  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5888  4E 80 00 20 */	blr 
