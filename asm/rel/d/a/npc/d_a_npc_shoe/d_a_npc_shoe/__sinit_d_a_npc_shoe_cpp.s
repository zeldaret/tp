lbl_80AEA2D8:
/* 80AEA2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEA2DC  7C 08 02 A6 */	mflr r0
/* 80AEA2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEA2E4  3C 60 80 AF */	lis r3, __vt__17daNpcShoe_Param_c@ha /* 0x80AEA724@ha */
/* 80AEA2E8  38 03 A7 24 */	addi r0, r3, __vt__17daNpcShoe_Param_c@l /* 0x80AEA724@l */
/* 80AEA2EC  3C 60 80 AF */	lis r3, l_HIO@ha /* 0x80AEA744@ha */
/* 80AEA2F0  94 03 A7 44 */	stwu r0, l_HIO@l(r3)  /* 0x80AEA744@l */
/* 80AEA2F4  3C 80 80 AF */	lis r4, __dt__17daNpcShoe_Param_cFv@ha /* 0x80AEA344@ha */
/* 80AEA2F8  38 84 A3 44 */	addi r4, r4, __dt__17daNpcShoe_Param_cFv@l /* 0x80AEA344@l */
/* 80AEA2FC  3C A0 80 AF */	lis r5, lit_3805@ha /* 0x80AEA738@ha */
/* 80AEA300  38 A5 A7 38 */	addi r5, r5, lit_3805@l /* 0x80AEA738@l */
/* 80AEA304  4B FF D5 D5 */	bl __register_global_object
/* 80AEA308  3C 60 80 AF */	lis r3, mEvtSeqList__11daNpcShoe_c@ha /* 0x80AEA5B4@ha */
/* 80AEA30C  38 A3 A5 B4 */	addi r5, r3, mEvtSeqList__11daNpcShoe_c@l /* 0x80AEA5B4@l */
/* 80AEA310  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AEA314  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AEA318  80 64 00 00 */	lwz r3, 0(r4)
/* 80AEA31C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AEA320  90 65 00 00 */	stw r3, 0(r5)
/* 80AEA324  90 05 00 04 */	stw r0, 4(r5)
/* 80AEA328  80 04 00 08 */	lwz r0, 8(r4)
/* 80AEA32C  90 05 00 08 */	stw r0, 8(r5)
/* 80AEA330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEA334  7C 08 03 A6 */	mtlr r0
/* 80AEA338  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEA33C  4E 80 00 20 */	blr 
