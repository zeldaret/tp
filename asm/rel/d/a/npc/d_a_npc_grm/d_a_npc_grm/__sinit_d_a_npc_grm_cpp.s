lbl_809D6CD4:
/* 809D6CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D6CD8  7C 08 02 A6 */	mflr r0
/* 809D6CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D6CE0  3C 60 80 9D */	lis r3, mCutList__11daNpc_grM_c@ha
/* 809D6CE4  38 A3 70 D0 */	addi r5, r3, mCutList__11daNpc_grM_c@l
/* 809D6CE8  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809D6CEC  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809D6CF0  80 64 00 00 */	lwz r3, 0(r4)
/* 809D6CF4  80 04 00 04 */	lwz r0, 4(r4)
/* 809D6CF8  90 65 00 00 */	stw r3, 0(r5)
/* 809D6CFC  90 05 00 04 */	stw r0, 4(r5)
/* 809D6D00  80 04 00 08 */	lwz r0, 8(r4)
/* 809D6D04  90 05 00 08 */	stw r0, 8(r5)
/* 809D6D08  3C 60 80 9D */	lis r3, lit_3831@ha
/* 809D6D0C  38 83 70 C4 */	addi r4, r3, lit_3831@l
/* 809D6D10  80 64 00 00 */	lwz r3, 0(r4)
/* 809D6D14  80 04 00 04 */	lwz r0, 4(r4)
/* 809D6D18  90 65 00 0C */	stw r3, 0xc(r5)
/* 809D6D1C  90 05 00 10 */	stw r0, 0x10(r5)
/* 809D6D20  80 04 00 08 */	lwz r0, 8(r4)
/* 809D6D24  90 05 00 14 */	stw r0, 0x14(r5)
/* 809D6D28  3C 60 80 9D */	lis r3, __vt__17daNpc_grM_Param_c@ha
/* 809D6D2C  38 03 72 E0 */	addi r0, r3, __vt__17daNpc_grM_Param_c@l
/* 809D6D30  3C 60 80 9D */	lis r3, l_HIO@ha
/* 809D6D34  94 03 73 04 */	stwu r0, l_HIO@l(r3)
/* 809D6D38  3C 80 80 9D */	lis r4, __dt__17daNpc_grM_Param_cFv@ha
/* 809D6D3C  38 84 5F D8 */	addi r4, r4, __dt__17daNpc_grM_Param_cFv@l
/* 809D6D40  3C A0 80 9D */	lis r5, lit_3832@ha
/* 809D6D44  38 A5 72 F8 */	addi r5, r5, lit_3832@l
/* 809D6D48  4B FF D2 B1 */	bl __register_global_object
/* 809D6D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D6D50  7C 08 03 A6 */	mtlr r0
/* 809D6D54  38 21 00 10 */	addi r1, r1, 0x10
/* 809D6D58  4E 80 00 20 */	blr 
