lbl_809CF444:
/* 809CF444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CF448  7C 08 02 A6 */	mflr r0
/* 809CF44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CF450  3C 60 80 9D */	lis r3, __vt__17daNpc_grC_Param_c@ha /* 0x809CFB50@ha */
/* 809CF454  38 03 FB 50 */	addi r0, r3, __vt__17daNpc_grC_Param_c@l /* 0x809CFB50@l */
/* 809CF458  3C 60 80 9D */	lis r3, l_HIO@ha /* 0x809CFBB4@ha */
/* 809CF45C  94 03 FB B4 */	stwu r0, l_HIO@l(r3)  /* 0x809CFBB4@l */
/* 809CF460  3C 80 80 9D */	lis r4, __dt__17daNpc_grC_Param_cFv@ha /* 0x809CF4B0@ha */
/* 809CF464  38 84 F4 B0 */	addi r4, r4, __dt__17daNpc_grC_Param_cFv@l /* 0x809CF4B0@l */
/* 809CF468  3C A0 80 9D */	lis r5, lit_4019@ha /* 0x809CFBA8@ha */
/* 809CF46C  38 A5 FB A8 */	addi r5, r5, lit_4019@l /* 0x809CFBA8@l */
/* 809CF470  4B FF BF E9 */	bl __register_global_object
/* 809CF474  3C 60 80 9D */	lis r3, mEvtCutList__11daNpc_grC_c@ha /* 0x809CF97C@ha */
/* 809CF478  38 A3 F9 7C */	addi r5, r3, mEvtCutList__11daNpc_grC_c@l /* 0x809CF97C@l */
/* 809CF47C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809CF480  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809CF484  80 64 00 00 */	lwz r3, 0(r4)
/* 809CF488  80 04 00 04 */	lwz r0, 4(r4)
/* 809CF48C  90 65 00 00 */	stw r3, 0(r5)
/* 809CF490  90 05 00 04 */	stw r0, 4(r5)
/* 809CF494  80 04 00 08 */	lwz r0, 8(r4)
/* 809CF498  90 05 00 08 */	stw r0, 8(r5)
/* 809CF49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CF4A0  7C 08 03 A6 */	mtlr r0
/* 809CF4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809CF4A8  4E 80 00 20 */	blr 
