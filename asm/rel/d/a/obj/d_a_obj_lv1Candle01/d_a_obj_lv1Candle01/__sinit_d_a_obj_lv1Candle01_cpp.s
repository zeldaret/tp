lbl_80C577D8:
/* 80C577D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C577DC  7C 08 02 A6 */	mflr r0
/* 80C577E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C577E4  3C 60 80 C5 */	lis r3, l_HIO@ha /* 0x80C579CC@ha */
/* 80C577E8  38 63 79 CC */	addi r3, r3, l_HIO@l /* 0x80C579CC@l */
/* 80C577EC  4B FF F4 C1 */	bl __ct__16daLv1Cdl01_HIO_cFv
/* 80C577F0  3C 80 80 C5 */	lis r4, __dt__16daLv1Cdl01_HIO_cFv@ha /* 0x80C5777C@ha */
/* 80C577F4  38 84 77 7C */	addi r4, r4, __dt__16daLv1Cdl01_HIO_cFv@l /* 0x80C5777C@l */
/* 80C577F8  3C A0 80 C5 */	lis r5, lit_3620@ha /* 0x80C579C0@ha */
/* 80C577FC  38 A5 79 C0 */	addi r5, r5, lit_3620@l /* 0x80C579C0@l */
/* 80C57800  4B FF F4 39 */	bl __register_global_object
/* 80C57804  3C 60 80 C5 */	lis r3, mCcDCyl__12daLv1Cdl01_c@ha /* 0x80C578CC@ha */
/* 80C57808  38 63 78 CC */	addi r3, r3, mCcDCyl__12daLv1Cdl01_c@l /* 0x80C578CC@l */
/* 80C5780C  38 A3 FF FC */	addi r5, r3, -4
/* 80C57810  3C 60 80 C5 */	lis r3, mCcDObjInfo__12daLv1Cdl01_c@ha /* 0x80C5785C@ha */
/* 80C57814  38 63 78 5C */	addi r3, r3, mCcDObjInfo__12daLv1Cdl01_c@l /* 0x80C5785C@l */
/* 80C57818  38 83 FF FC */	addi r4, r3, -4
/* 80C5781C  38 00 00 06 */	li r0, 6
/* 80C57820  7C 09 03 A6 */	mtctr r0
lbl_80C57824:
/* 80C57824  80 64 00 04 */	lwz r3, 4(r4)
/* 80C57828  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C5782C  90 65 00 04 */	stw r3, 4(r5)
/* 80C57830  94 05 00 08 */	stwu r0, 8(r5)
/* 80C57834  42 00 FF F0 */	bdnz lbl_80C57824
/* 80C57838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5783C  7C 08 03 A6 */	mtlr r0
/* 80C57840  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57844  4E 80 00 20 */	blr 
