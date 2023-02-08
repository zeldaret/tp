lbl_80014994:
/* 80014994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014998  7C 08 02 A6 */	mflr r0
/* 8001499C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800149A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800149A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800149A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800149AC  83 E3 5C A4 */	lwz r31, 0x5ca4(r3)
/* 800149B0  4B FF A3 D1 */	bl mDoExt_getZeldaHeap__Fv
/* 800149B4  7C 65 1B 78 */	mr r5, r3
/* 800149B8  38 6D 86 C4 */	la r3, mDoExt_font0(r13) /* 80450C44-_SDA_BASE_ */
/* 800149BC  38 8D 86 CC */	la r4, mDoExt_resfont0(r13) /* 80450C4C-_SDA_BASE_ */
/* 800149C0  3C C0 80 37 */	lis r6, fontdata_8224@ha /* 0x803740C0@ha */
/* 800149C4  38 C6 40 C0 */	addi r6, r6, fontdata_8224@l /* 0x803740C0@l */
/* 800149C8  7F E7 FB 78 */	mr r7, r31
/* 800149CC  39 00 00 01 */	li r8, 1
/* 800149D0  39 20 00 00 */	li r9, 0
/* 800149D4  39 40 00 00 */	li r10, 0
/* 800149D8  4B FF FE 2D */	bl mDoExt_initFontCommon__FPP7JUTFontPP7ResFONTP7JKRHeapPCcP10JKRArchiveUcUlUl
/* 800149DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800149E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800149E4  7C 08 03 A6 */	mtlr r0
/* 800149E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800149EC  4E 80 00 20 */	blr 
