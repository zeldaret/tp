lbl_8000B174:
/* 8000B174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000B178  7C 08 02 A6 */	mflr r0
/* 8000B17C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000B180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000B184  38 60 00 00 */	li r3, 0
/* 8000B188  38 80 00 00 */	li r4, 0
/* 8000B18C  38 A0 00 00 */	li r5, 0
/* 8000B190  48 00 3E 2D */	bl mDoExt_createSolidHeapToCurrent__FUlP7JKRHeapUl
/* 8000B194  7C 7F 1B 78 */	mr r31, r3
/* 8000B198  4B FF CC AD */	bl create__13mDoGph_gInf_cFv
/* 8000B19C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8000B1A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8000B1A4  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8000B1A8  48 04 B1 E9 */	bl init__12dDlst_list_cFv
/* 8000B1AC  7F E3 FB 78 */	mr r3, r31
/* 8000B1B0  48 00 3E DD */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8000B1B4  48 00 40 41 */	bl mDoExt_restoreCurrentHeap__Fv
/* 8000B1B8  38 60 00 01 */	li r3, 1
/* 8000B1BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000B1C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000B1C4  7C 08 03 A6 */	mtlr r0
/* 8000B1C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8000B1CC  4E 80 00 20 */	blr 
