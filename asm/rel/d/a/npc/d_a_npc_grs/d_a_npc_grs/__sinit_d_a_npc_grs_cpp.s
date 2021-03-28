lbl_809E7CD4:
/* 809E7CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7CD8  7C 08 02 A6 */	mflr r0
/* 809E7CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7CE0  3C 60 80 9F */	lis r3, __vt__17daNpc_grS_Param_c@ha
/* 809E7CE4  38 03 82 24 */	addi r0, r3, __vt__17daNpc_grS_Param_c@l
/* 809E7CE8  3C 60 80 9F */	lis r3, l_HIO@ha
/* 809E7CEC  94 03 82 84 */	stwu r0, l_HIO@l(r3)
/* 809E7CF0  3C 80 80 9E */	lis r4, __dt__17daNpc_grS_Param_cFv@ha
/* 809E7CF4  38 84 7D 60 */	addi r4, r4, __dt__17daNpc_grS_Param_cFv@l
/* 809E7CF8  3C A0 80 9F */	lis r5, lit_4050@ha
/* 809E7CFC  38 A5 82 78 */	addi r5, r5, lit_4050@l
/* 809E7D00  4B FF C3 59 */	bl __register_global_object
/* 809E7D04  3C 60 80 9F */	lis r3, mEvtCutList__11daNpc_grS_c@ha
/* 809E7D08  38 A3 80 A8 */	addi r5, r3, mEvtCutList__11daNpc_grS_c@l
/* 809E7D0C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809E7D10  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809E7D14  80 64 00 00 */	lwz r3, 0(r4)
/* 809E7D18  80 04 00 04 */	lwz r0, 4(r4)
/* 809E7D1C  90 65 00 00 */	stw r3, 0(r5)
/* 809E7D20  90 05 00 04 */	stw r0, 4(r5)
/* 809E7D24  80 04 00 08 */	lwz r0, 8(r4)
/* 809E7D28  90 05 00 08 */	stw r0, 8(r5)
/* 809E7D2C  3C 60 80 9F */	lis r3, lit_4051@ha
/* 809E7D30  38 83 80 9C */	addi r4, r3, lit_4051@l
/* 809E7D34  80 64 00 00 */	lwz r3, 0(r4)
/* 809E7D38  80 04 00 04 */	lwz r0, 4(r4)
/* 809E7D3C  90 65 00 0C */	stw r3, 0xc(r5)
/* 809E7D40  90 05 00 10 */	stw r0, 0x10(r5)
/* 809E7D44  80 04 00 08 */	lwz r0, 8(r4)
/* 809E7D48  90 05 00 14 */	stw r0, 0x14(r5)
/* 809E7D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7D50  7C 08 03 A6 */	mtlr r0
/* 809E7D54  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7D58  4E 80 00 20 */	blr 
