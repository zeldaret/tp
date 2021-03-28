lbl_80014B40:
/* 80014B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014B44  7C 08 02 A6 */	mflr r0
/* 80014B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80014B50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80014B54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80014B58  83 E3 5C A8 */	lwz r31, 0x5ca8(r3)
/* 80014B5C  4B FF A2 25 */	bl mDoExt_getZeldaHeap__Fv
/* 80014B60  7C 65 1B 78 */	mr r5, r3
/* 80014B64  38 6D 86 DC */	la r3, mDoExt_font2(r13) /* 80450C5C-_SDA_BASE_ */
/* 80014B68  38 8D 86 E4 */	la r4, mDoExt_resfont2(r13) /* 80450C64-_SDA_BASE_ */
/* 80014B6C  3C C0 80 37 */	lis r6, fontdata_8287@ha
/* 80014B70  38 C6 40 E8 */	addi r6, r6, fontdata_8287@l
/* 80014B74  7F E7 FB 78 */	mr r7, r31
/* 80014B78  39 00 00 01 */	li r8, 1
/* 80014B7C  39 20 00 01 */	li r9, 1
/* 80014B80  3D 40 00 01 */	lis r10, 0x0001 /* 0x00008000@ha */
/* 80014B84  39 4A 80 00 */	addi r10, r10, 0x8000 /* 0x00008000@l */
/* 80014B88  4B FF FC 7D */	bl mDoExt_initFontCommon__FPP7JUTFontPP7ResFONTP7JKRHeapPCcP10JKRArchiveUcUlUl
/* 80014B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80014B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014B94  7C 08 03 A6 */	mtlr r0
/* 80014B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80014B9C  4E 80 00 20 */	blr 
