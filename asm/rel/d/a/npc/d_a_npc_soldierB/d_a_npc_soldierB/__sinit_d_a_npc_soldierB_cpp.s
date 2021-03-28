lbl_80AF59E0:
/* 80AF59E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF59E4  7C 08 02 A6 */	mflr r0
/* 80AF59E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF59EC  3C 60 80 AF */	lis r3, __vt__22daNpc_SoldierB_Param_c@ha
/* 80AF59F0  38 03 5E 18 */	addi r0, r3, __vt__22daNpc_SoldierB_Param_c@l
/* 80AF59F4  3C 60 80 AF */	lis r3, l_HIO@ha
/* 80AF59F8  94 03 5E 7C */	stwu r0, l_HIO@l(r3)
/* 80AF59FC  3C 80 80 AF */	lis r4, __dt__22daNpc_SoldierB_Param_cFv@ha
/* 80AF5A00  38 84 5A 68 */	addi r4, r4, __dt__22daNpc_SoldierB_Param_cFv@l
/* 80AF5A04  3C A0 80 AF */	lis r5, lit_4023@ha
/* 80AF5A08  38 A5 5E 70 */	addi r5, r5, lit_4023@l
/* 80AF5A0C  4B FF D2 2D */	bl __register_global_object
/* 80AF5A10  3C 60 80 AF */	lis r3, mEvtCutList__16daNpc_SoldierB_c@ha
/* 80AF5A14  38 A3 5C A8 */	addi r5, r3, mEvtCutList__16daNpc_SoldierB_c@l
/* 80AF5A18  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AF5A1C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AF5A20  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF5A24  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF5A28  90 65 00 00 */	stw r3, 0(r5)
/* 80AF5A2C  90 05 00 04 */	stw r0, 4(r5)
/* 80AF5A30  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF5A34  90 05 00 08 */	stw r0, 8(r5)
/* 80AF5A38  3C 60 80 AF */	lis r3, lit_4024@ha
/* 80AF5A3C  38 83 5C 9C */	addi r4, r3, lit_4024@l
/* 80AF5A40  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF5A44  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF5A48  90 65 00 0C */	stw r3, 0xc(r5)
/* 80AF5A4C  90 05 00 10 */	stw r0, 0x10(r5)
/* 80AF5A50  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF5A54  90 05 00 14 */	stw r0, 0x14(r5)
/* 80AF5A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5A5C  7C 08 03 A6 */	mtlr r0
/* 80AF5A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5A64  4E 80 00 20 */	blr 
