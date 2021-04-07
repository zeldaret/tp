lbl_809D9CF4:
/* 809D9CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D9CF8  7C 08 02 A6 */	mflr r0
/* 809D9CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D9D00  3C 60 80 9E */	lis r3, mCutList__12daNpc_grMC_c@ha /* 0x809DA244@ha */
/* 809D9D04  38 A3 A2 44 */	addi r5, r3, mCutList__12daNpc_grMC_c@l /* 0x809DA244@l */
/* 809D9D08  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809D9D0C  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809D9D10  80 64 00 00 */	lwz r3, 0(r4)
/* 809D9D14  80 04 00 04 */	lwz r0, 4(r4)
/* 809D9D18  90 65 00 00 */	stw r3, 0(r5)
/* 809D9D1C  90 05 00 04 */	stw r0, 4(r5)
/* 809D9D20  80 04 00 08 */	lwz r0, 8(r4)
/* 809D9D24  90 05 00 08 */	stw r0, 8(r5)
/* 809D9D28  3C 60 80 9E */	lis r3, __vt__18daNpc_grMC_Param_c@ha /* 0x809DA448@ha */
/* 809D9D2C  38 03 A4 48 */	addi r0, r3, __vt__18daNpc_grMC_Param_c@l /* 0x809DA448@l */
/* 809D9D30  3C 60 80 9E */	lis r3, l_HIO@ha /* 0x809DA46C@ha */
/* 809D9D34  94 03 A4 6C */	stwu r0, l_HIO@l(r3)  /* 0x809DA46C@l */
/* 809D9D38  3C 80 80 9E */	lis r4, __dt__18daNpc_grMC_Param_cFv@ha /* 0x809D9014@ha */
/* 809D9D3C  38 84 90 14 */	addi r4, r4, __dt__18daNpc_grMC_Param_cFv@l /* 0x809D9014@l */
/* 809D9D40  3C A0 80 9E */	lis r5, lit_3831@ha /* 0x809DA460@ha */
/* 809D9D44  38 A5 A4 60 */	addi r5, r5, lit_3831@l /* 0x809DA460@l */
/* 809D9D48  4B FF D6 51 */	bl __register_global_object
/* 809D9D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D9D50  7C 08 03 A6 */	mtlr r0
/* 809D9D54  38 21 00 10 */	addi r1, r1, 0x10
/* 809D9D58  4E 80 00 20 */	blr 
