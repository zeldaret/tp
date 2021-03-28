lbl_80014AA4:
/* 80014AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014AA8  7C 08 02 A6 */	mflr r0
/* 80014AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80014AB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80014AB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80014ABC  83 E3 5C A8 */	lwz r31, 0x5ca8(r3)
/* 80014AC0  4B FF A2 C1 */	bl mDoExt_getZeldaHeap__Fv
/* 80014AC4  7C 65 1B 78 */	mr r5, r3
/* 80014AC8  38 6D 86 D0 */	la r3, mDoExt_font1(r13) /* 80450C50-_SDA_BASE_ */
/* 80014ACC  38 8D 86 D8 */	la r4, mDoExt_resfont1(r13) /* 80450C58-_SDA_BASE_ */
/* 80014AD0  3C C0 80 37 */	lis r6, fontdata_8253@ha
/* 80014AD4  38 C6 40 D4 */	addi r6, r6, fontdata_8253@l
/* 80014AD8  7F E7 FB 78 */	mr r7, r31
/* 80014ADC  39 00 00 01 */	li r8, 1
/* 80014AE0  39 20 00 01 */	li r9, 1
/* 80014AE4  3D 40 00 01 */	lis r10, 0x0001 /* 0x00008000@ha */
/* 80014AE8  39 4A 80 00 */	addi r10, r10, 0x8000 /* 0x00008000@l */
/* 80014AEC  4B FF FD 19 */	bl mDoExt_initFontCommon__FPP7JUTFontPP7ResFONTP7JKRHeapPCcP10JKRArchiveUcUlUl
/* 80014AF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80014AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014AF8  7C 08 03 A6 */	mtlr r0
/* 80014AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80014B00  4E 80 00 20 */	blr 
