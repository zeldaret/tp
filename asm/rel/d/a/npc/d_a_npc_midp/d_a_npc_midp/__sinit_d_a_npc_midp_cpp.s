lbl_80A73768:
/* 80A73768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7376C  7C 08 02 A6 */	mflr r0
/* 80A73770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73774  3C 60 80 A7 */	lis r3, mCutList__12daNpc_midP_c@ha
/* 80A73778  38 A3 3B 5C */	addi r5, r3, mCutList__12daNpc_midP_c@l
/* 80A7377C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A73780  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80A73784  80 64 00 00 */	lwz r3, 0(r4)
/* 80A73788  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7378C  90 65 00 00 */	stw r3, 0(r5)
/* 80A73790  90 05 00 04 */	stw r0, 4(r5)
/* 80A73794  80 04 00 08 */	lwz r0, 8(r4)
/* 80A73798  90 05 00 08 */	stw r0, 8(r5)
/* 80A7379C  3C 60 80 A7 */	lis r3, __vt__18daNpc_midP_Param_c@ha
/* 80A737A0  38 03 3D 3C */	addi r0, r3, __vt__18daNpc_midP_Param_c@l
/* 80A737A4  3C 60 80 A7 */	lis r3, l_HIO@ha
/* 80A737A8  94 03 3D 5C */	stwu r0, l_HIO@l(r3)
/* 80A737AC  3C 80 80 A7 */	lis r4, __dt__18daNpc_midP_Param_cFv@ha
/* 80A737B0  38 84 39 54 */	addi r4, r4, __dt__18daNpc_midP_Param_cFv@l
/* 80A737B4  3C A0 80 A7 */	lis r5, lit_3811@ha
/* 80A737B8  38 A5 3D 50 */	addi r5, r5, lit_3811@l
/* 80A737BC  4B FF D4 3D */	bl __register_global_object
/* 80A737C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A737C4  7C 08 03 A6 */	mtlr r0
/* 80A737C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A737CC  4E 80 00 20 */	blr 
