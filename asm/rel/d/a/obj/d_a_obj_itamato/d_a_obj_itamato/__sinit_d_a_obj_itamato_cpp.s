lbl_80C2AA90:
/* 80C2AA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2AA94  7C 08 02 A6 */	mflr r0
/* 80C2AA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2AA9C  3C 60 80 C3 */	lis r3, l_ccDSph@ha
/* 80C2AAA0  38 63 AC 34 */	addi r3, r3, l_ccDSph@l
/* 80C2AAA4  38 A3 FF FC */	addi r5, r3, -4
/* 80C2AAA8  3C 60 80 C3 */	lis r3, l_ccDObjData@ha
/* 80C2AAAC  38 63 AB 84 */	addi r3, r3, l_ccDObjData@l
/* 80C2AAB0  38 83 FF FC */	addi r4, r3, -4
/* 80C2AAB4  38 00 00 06 */	li r0, 6
/* 80C2AAB8  7C 09 03 A6 */	mtctr r0
lbl_80C2AABC:
/* 80C2AABC  80 64 00 04 */	lwz r3, 4(r4)
/* 80C2AAC0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C2AAC4  90 65 00 04 */	stw r3, 4(r5)
/* 80C2AAC8  94 05 00 08 */	stwu r0, 8(r5)
/* 80C2AACC  42 00 FF F0 */	bdnz lbl_80C2AABC
/* 80C2AAD0  3C 60 80 C3 */	lis r3, __vt__21daObj_ItaMato_Param_c@ha
/* 80C2AAD4  38 03 AD 40 */	addi r0, r3, __vt__21daObj_ItaMato_Param_c@l
/* 80C2AAD8  3C 60 80 C3 */	lis r3, l_HIO@ha
/* 80C2AADC  94 03 AD 64 */	stwu r0, l_HIO@l(r3)
/* 80C2AAE0  3C 80 80 C3 */	lis r4, __dt__21daObj_ItaMato_Param_cFv@ha
/* 80C2AAE4  38 84 AB 04 */	addi r4, r4, __dt__21daObj_ItaMato_Param_cFv@l
/* 80C2AAE8  3C A0 80 C3 */	lis r5, lit_3836@ha
/* 80C2AAEC  38 A5 AD 58 */	addi r5, r5, lit_3836@l
/* 80C2AAF0  4B FF E9 89 */	bl __register_global_object
/* 80C2AAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2AAF8  7C 08 03 A6 */	mtlr r0
/* 80C2AAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2AB00  4E 80 00 20 */	blr 
