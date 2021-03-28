lbl_80CB17B8:
/* 80CB17B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB17BC  7C 08 02 A6 */	mflr r0
/* 80CB17C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB17C4  3C 60 80 CB */	lis r3, __vt__19daObj_Pleaf_Param_c@ha
/* 80CB17C8  38 03 19 5C */	addi r0, r3, __vt__19daObj_Pleaf_Param_c@l
/* 80CB17CC  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB17D0  94 03 19 7C */	stwu r0, l_HIO@l(r3)
/* 80CB17D4  3C 80 80 CB */	lis r4, __dt__19daObj_Pleaf_Param_cFv@ha
/* 80CB17D8  38 84 17 F8 */	addi r4, r4, __dt__19daObj_Pleaf_Param_cFv@l
/* 80CB17DC  3C A0 80 CB */	lis r5, lit_3805@ha
/* 80CB17E0  38 A5 19 70 */	addi r5, r5, lit_3805@l
/* 80CB17E4  4B FF F4 F5 */	bl __register_global_object
/* 80CB17E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB17EC  7C 08 03 A6 */	mtlr r0
/* 80CB17F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB17F4  4E 80 00 20 */	blr 
