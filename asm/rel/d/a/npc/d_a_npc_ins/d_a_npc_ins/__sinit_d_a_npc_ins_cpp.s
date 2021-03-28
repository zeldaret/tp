lbl_80A134F0:
/* 80A134F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A134F4  7C 08 02 A6 */	mflr r0
/* 80A134F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A134FC  3C 60 80 A1 */	lis r3, __vt__16daNpcIns_Param_c@ha
/* 80A13500  38 03 45 E4 */	addi r0, r3, __vt__16daNpcIns_Param_c@l
/* 80A13504  3C 60 80 A1 */	lis r3, l_HIO@ha
/* 80A13508  94 03 46 04 */	stwu r0, l_HIO@l(r3)
/* 80A1350C  3C 80 80 A1 */	lis r4, __dt__16daNpcIns_Param_cFv@ha
/* 80A13510  38 84 3D 40 */	addi r4, r4, __dt__16daNpcIns_Param_cFv@l
/* 80A13514  3C A0 80 A1 */	lis r5, lit_3928@ha
/* 80A13518  38 A5 45 F8 */	addi r5, r5, lit_3928@l
/* 80A1351C  4B FF AC BD */	bl __register_global_object
/* 80A13520  3C 60 80 A1 */	lis r3, mEvtSeqList__10daNpcIns_c@ha
/* 80A13524  38 A3 43 98 */	addi r5, r3, mEvtSeqList__10daNpcIns_c@l
/* 80A13528  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A1352C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80A13530  80 64 00 00 */	lwz r3, 0(r4)
/* 80A13534  80 04 00 04 */	lwz r0, 4(r4)
/* 80A13538  90 65 00 00 */	stw r3, 0(r5)
/* 80A1353C  90 05 00 04 */	stw r0, 4(r5)
/* 80A13540  80 04 00 08 */	lwz r0, 8(r4)
/* 80A13544  90 05 00 08 */	stw r0, 8(r5)
/* 80A13548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1354C  7C 08 03 A6 */	mtlr r0
/* 80A13550  38 21 00 10 */	addi r1, r1, 0x10
/* 80A13554  4E 80 00 20 */	blr 
