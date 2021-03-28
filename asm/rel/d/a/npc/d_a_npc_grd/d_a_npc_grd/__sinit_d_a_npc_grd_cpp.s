lbl_809D390C:
/* 809D390C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D3910  7C 08 02 A6 */	mflr r0
/* 809D3914  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D3918  3C 60 80 9D */	lis r3, __vt__17daNpc_Grd_Param_c@ha
/* 809D391C  38 03 3E 9C */	addi r0, r3, __vt__17daNpc_Grd_Param_c@l
/* 809D3920  3C 60 80 9D */	lis r3, l_HIO@ha
/* 809D3924  94 03 3E FC */	stwu r0, l_HIO@l(r3)
/* 809D3928  3C 80 80 9D */	lis r4, __dt__17daNpc_Grd_Param_cFv@ha
/* 809D392C  38 84 39 98 */	addi r4, r4, __dt__17daNpc_Grd_Param_cFv@l
/* 809D3930  3C A0 80 9D */	lis r5, lit_4017@ha
/* 809D3934  38 A5 3E F0 */	addi r5, r5, lit_4017@l
/* 809D3938  4B FF C3 81 */	bl __register_global_object
/* 809D393C  3C 60 80 9D */	lis r3, mEvtCutList__11daNpc_Grd_c@ha
/* 809D3940  38 A3 3D 20 */	addi r5, r3, mEvtCutList__11daNpc_Grd_c@l
/* 809D3944  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809D3948  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809D394C  80 64 00 00 */	lwz r3, 0(r4)
/* 809D3950  80 04 00 04 */	lwz r0, 4(r4)
/* 809D3954  90 65 00 00 */	stw r3, 0(r5)
/* 809D3958  90 05 00 04 */	stw r0, 4(r5)
/* 809D395C  80 04 00 08 */	lwz r0, 8(r4)
/* 809D3960  90 05 00 08 */	stw r0, 8(r5)
/* 809D3964  3C 60 80 9D */	lis r3, lit_4018@ha
/* 809D3968  38 83 3D 14 */	addi r4, r3, lit_4018@l
/* 809D396C  80 64 00 00 */	lwz r3, 0(r4)
/* 809D3970  80 04 00 04 */	lwz r0, 4(r4)
/* 809D3974  90 65 00 0C */	stw r3, 0xc(r5)
/* 809D3978  90 05 00 10 */	stw r0, 0x10(r5)
/* 809D397C  80 04 00 08 */	lwz r0, 8(r4)
/* 809D3980  90 05 00 14 */	stw r0, 0x14(r5)
/* 809D3984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3988  7C 08 03 A6 */	mtlr r0
/* 809D398C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D3990  4E 80 00 20 */	blr 
