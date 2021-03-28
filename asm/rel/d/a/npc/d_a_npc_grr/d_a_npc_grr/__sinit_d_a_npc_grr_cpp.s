lbl_809E3800:
/* 809E3800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E3804  7C 08 02 A6 */	mflr r0
/* 809E3808  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E380C  3C 60 80 9E */	lis r3, __vt__17daNpc_grR_Param_c@ha
/* 809E3810  38 03 3E E0 */	addi r0, r3, __vt__17daNpc_grR_Param_c@l
/* 809E3814  3C 60 80 9E */	lis r3, l_HIO@ha
/* 809E3818  94 03 3F 44 */	stwu r0, l_HIO@l(r3)
/* 809E381C  3C 80 80 9E */	lis r4, __dt__17daNpc_grR_Param_cFv@ha
/* 809E3820  38 84 38 6C */	addi r4, r4, __dt__17daNpc_grR_Param_cFv@l
/* 809E3824  3C A0 80 9E */	lis r5, lit_4018@ha
/* 809E3828  38 A5 3F 38 */	addi r5, r5, lit_4018@l
/* 809E382C  4B FF C0 2D */	bl __register_global_object
/* 809E3830  3C 60 80 9E */	lis r3, mEvtCutList__11daNpc_grR_c@ha
/* 809E3834  38 A3 3D 44 */	addi r5, r3, mEvtCutList__11daNpc_grR_c@l
/* 809E3838  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809E383C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809E3840  80 64 00 00 */	lwz r3, 0(r4)
/* 809E3844  80 04 00 04 */	lwz r0, 4(r4)
/* 809E3848  90 65 00 00 */	stw r3, 0(r5)
/* 809E384C  90 05 00 04 */	stw r0, 4(r5)
/* 809E3850  80 04 00 08 */	lwz r0, 8(r4)
/* 809E3854  90 05 00 08 */	stw r0, 8(r5)
/* 809E3858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E385C  7C 08 03 A6 */	mtlr r0
/* 809E3860  38 21 00 10 */	addi r1, r1, 0x10
/* 809E3864  4E 80 00 20 */	blr 
