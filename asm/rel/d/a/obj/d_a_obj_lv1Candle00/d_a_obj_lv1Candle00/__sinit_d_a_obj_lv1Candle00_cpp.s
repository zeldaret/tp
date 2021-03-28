lbl_80C569CC:
/* 80C569CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C569D0  7C 08 02 A6 */	mflr r0
/* 80C569D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C569D8  3C 60 80 C5 */	lis r3, l_HIO@ha
/* 80C569DC  38 63 6B 9C */	addi r3, r3, l_HIO@l
/* 80C569E0  4B FF F3 2D */	bl __ct__16daLv1Cdl00_HIO_cFv
/* 80C569E4  3C 80 80 C5 */	lis r4, __dt__16daLv1Cdl00_HIO_cFv@ha
/* 80C569E8  38 84 69 70 */	addi r4, r4, __dt__16daLv1Cdl00_HIO_cFv@l
/* 80C569EC  3C A0 80 C5 */	lis r5, lit_3620@ha
/* 80C569F0  38 A5 6B 90 */	addi r5, r5, lit_3620@l
/* 80C569F4  4B FF F2 A5 */	bl __register_global_object
/* 80C569F8  3C 60 80 C5 */	lis r3, mCcDCyl__12daLv1Cdl00_c@ha
/* 80C569FC  38 63 6A C0 */	addi r3, r3, mCcDCyl__12daLv1Cdl00_c@l
/* 80C56A00  38 A3 FF FC */	addi r5, r3, -4
/* 80C56A04  3C 60 80 C5 */	lis r3, mCcDObjInfo__12daLv1Cdl00_c@ha
/* 80C56A08  38 63 6A 50 */	addi r3, r3, mCcDObjInfo__12daLv1Cdl00_c@l
/* 80C56A0C  38 83 FF FC */	addi r4, r3, -4
/* 80C56A10  38 00 00 06 */	li r0, 6
/* 80C56A14  7C 09 03 A6 */	mtctr r0
lbl_80C56A18:
/* 80C56A18  80 64 00 04 */	lwz r3, 4(r4)
/* 80C56A1C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C56A20  90 65 00 04 */	stw r3, 4(r5)
/* 80C56A24  94 05 00 08 */	stwu r0, 8(r5)
/* 80C56A28  42 00 FF F0 */	bdnz lbl_80C56A18
/* 80C56A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56A30  7C 08 03 A6 */	mtlr r0
/* 80C56A34  38 21 00 10 */	addi r1, r1, 0x10
/* 80C56A38  4E 80 00 20 */	blr 
