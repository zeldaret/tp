lbl_809BE268:
/* 809BE268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BE26C  7C 08 02 A6 */	mflr r0
/* 809BE270  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BE274  3C 60 80 9C */	lis r3, mCutList__11daNpc_Gnd_c@ha /* 0x809BE644@ha */
/* 809BE278  38 A3 E6 44 */	addi r5, r3, mCutList__11daNpc_Gnd_c@l /* 0x809BE644@l */
/* 809BE27C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809BE280  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809BE284  80 64 00 00 */	lwz r3, 0(r4)
/* 809BE288  80 04 00 04 */	lwz r0, 4(r4)
/* 809BE28C  90 65 00 00 */	stw r3, 0(r5)
/* 809BE290  90 05 00 04 */	stw r0, 4(r5)
/* 809BE294  80 04 00 08 */	lwz r0, 8(r4)
/* 809BE298  90 05 00 08 */	stw r0, 8(r5)
/* 809BE29C  3C 60 80 9C */	lis r3, __vt__17daNpc_Gnd_Param_c@ha /* 0x809BE834@ha */
/* 809BE2A0  38 03 E8 34 */	addi r0, r3, __vt__17daNpc_Gnd_Param_c@l /* 0x809BE834@l */
/* 809BE2A4  3C 60 80 9C */	lis r3, l_HIO@ha /* 0x809BE854@ha */
/* 809BE2A8  94 03 E8 54 */	stwu r0, l_HIO@l(r3)  /* 0x809BE854@l */
/* 809BE2AC  3C 80 80 9C */	lis r4, __dt__17daNpc_Gnd_Param_cFv@ha /* 0x809BE434@ha */
/* 809BE2B0  38 84 E4 34 */	addi r4, r4, __dt__17daNpc_Gnd_Param_cFv@l /* 0x809BE434@l */
/* 809BE2B4  3C A0 80 9C */	lis r5, lit_3813@ha /* 0x809BE848@ha */
/* 809BE2B8  38 A5 E8 48 */	addi r5, r5, lit_3813@l /* 0x809BE848@l */
/* 809BE2BC  4B FF D2 DD */	bl __register_global_object
/* 809BE2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BE2C4  7C 08 03 A6 */	mtlr r0
/* 809BE2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809BE2CC  4E 80 00 20 */	blr 
