lbl_80C33BA0:
/* 80C33BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C33BA4  7C 08 02 A6 */	mflr r0
/* 80C33BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C33BAC  3C 60 80 C3 */	lis r3, l_ccDCyl@ha /* 0x80C33DD8@ha */
/* 80C33BB0  38 63 3D D8 */	addi r3, r3, l_ccDCyl@l /* 0x80C33DD8@l */
/* 80C33BB4  38 A3 FF FC */	addi r5, r3, -4
/* 80C33BB8  3C 60 80 39 */	lis r3, mCcDObjData__8daNpcT_c@ha /* 0x80392680@ha */
/* 80C33BBC  38 63 26 80 */	addi r3, r3, mCcDObjData__8daNpcT_c@l /* 0x80392680@l */
/* 80C33BC0  38 83 FF FC */	addi r4, r3, -4
/* 80C33BC4  38 00 00 06 */	li r0, 6
/* 80C33BC8  7C 09 03 A6 */	mtctr r0
lbl_80C33BCC:
/* 80C33BCC  80 64 00 04 */	lwz r3, 4(r4)
/* 80C33BD0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C33BD4  90 65 00 04 */	stw r3, 4(r5)
/* 80C33BD8  94 05 00 08 */	stwu r0, 8(r5)
/* 80C33BDC  42 00 FF F0 */	bdnz lbl_80C33BCC
/* 80C33BE0  3C 60 80 C3 */	lis r3, __vt__18daObj_Kago_Param_c@ha /* 0x80C33EEC@ha */
/* 80C33BE4  38 03 3E EC */	addi r0, r3, __vt__18daObj_Kago_Param_c@l /* 0x80C33EEC@l */
/* 80C33BE8  3C 60 80 C3 */	lis r3, l_HIO@ha /* 0x80C33F4C@ha */
/* 80C33BEC  94 03 3F 4C */	stwu r0, l_HIO@l(r3)  /* 0x80C33F4C@l */
/* 80C33BF0  3C 80 80 C3 */	lis r4, __dt__18daObj_Kago_Param_cFv@ha /* 0x80C33C14@ha */
/* 80C33BF4  38 84 3C 14 */	addi r4, r4, __dt__18daObj_Kago_Param_cFv@l /* 0x80C33C14@l */
/* 80C33BF8  3C A0 80 C3 */	lis r5, lit_3815@ha /* 0x80C33F40@ha */
/* 80C33BFC  38 A5 3F 40 */	addi r5, r5, lit_3815@l /* 0x80C33F40@l */
/* 80C33C00  4B FF DE 79 */	bl __register_global_object
/* 80C33C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C33C08  7C 08 03 A6 */	mtlr r0
/* 80C33C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C33C10  4E 80 00 20 */	blr 
