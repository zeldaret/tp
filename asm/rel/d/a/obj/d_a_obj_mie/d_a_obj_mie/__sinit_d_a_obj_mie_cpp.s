lbl_80C959CC:
/* 80C959CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C959D0  7C 08 02 A6 */	mflr r0
/* 80C959D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C959D8  3C 60 80 C9 */	lis r3, l_ccDCyl@ha
/* 80C959DC  38 63 5B 98 */	addi r3, r3, l_ccDCyl@l
/* 80C959E0  38 A3 FF FC */	addi r5, r3, -4
/* 80C959E4  3C 60 80 C9 */	lis r3, l_ccDObjData@ha
/* 80C959E8  38 63 5A D8 */	addi r3, r3, l_ccDObjData@l
/* 80C959EC  38 83 FF FC */	addi r4, r3, -4
/* 80C959F0  38 00 00 06 */	li r0, 6
/* 80C959F4  7C 09 03 A6 */	mtctr r0
lbl_80C959F8:
/* 80C959F8  80 64 00 04 */	lwz r3, 4(r4)
/* 80C959FC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C95A00  90 65 00 04 */	stw r3, 4(r5)
/* 80C95A04  94 05 00 08 */	stwu r0, 8(r5)
/* 80C95A08  42 00 FF F0 */	bdnz lbl_80C959F8
/* 80C95A0C  3C 60 80 C9 */	lis r3, __vt__17daObj_Mie_Param_c@ha
/* 80C95A10  38 03 5C B8 */	addi r0, r3, __vt__17daObj_Mie_Param_c@l
/* 80C95A14  3C 60 80 C9 */	lis r3, l_HIO@ha
/* 80C95A18  94 03 5D 1C */	stwu r0, l_HIO@l(r3)
/* 80C95A1C  3C 80 80 C9 */	lis r4, __dt__17daObj_Mie_Param_cFv@ha
/* 80C95A20  38 84 5A 40 */	addi r4, r4, __dt__17daObj_Mie_Param_cFv@l
/* 80C95A24  3C A0 80 C9 */	lis r5, lit_3822@ha
/* 80C95A28  38 A5 5D 10 */	addi r5, r5, lit_3822@l
/* 80C95A2C  4B FF E5 2D */	bl __register_global_object
/* 80C95A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95A34  7C 08 03 A6 */	mtlr r0
/* 80C95A38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95A3C  4E 80 00 20 */	blr 
