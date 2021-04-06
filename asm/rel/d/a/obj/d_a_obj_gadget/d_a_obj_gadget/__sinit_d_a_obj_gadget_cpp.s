lbl_80BF4864:
/* 80BF4864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4868  7C 08 02 A6 */	mflr r0
/* 80BF486C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF4870  3C 60 80 BF */	lis r3, l_ccDCyl@ha /* 0x80BF4A64@ha */
/* 80BF4874  38 63 4A 64 */	addi r3, r3, l_ccDCyl@l /* 0x80BF4A64@l */
/* 80BF4878  38 A3 FF FC */	addi r5, r3, -4
/* 80BF487C  3C 60 80 BF */	lis r3, l_ccDObjData@ha /* 0x80BF4970@ha */
/* 80BF4880  38 63 49 70 */	addi r3, r3, l_ccDObjData@l /* 0x80BF4970@l */
/* 80BF4884  38 83 FF FC */	addi r4, r3, -4
/* 80BF4888  38 00 00 06 */	li r0, 6
/* 80BF488C  7C 09 03 A6 */	mtctr r0
lbl_80BF4890:
/* 80BF4890  80 64 00 04 */	lwz r3, 4(r4)
/* 80BF4894  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BF4898  90 65 00 04 */	stw r3, 4(r5)
/* 80BF489C  94 05 00 08 */	stwu r0, 8(r5)
/* 80BF48A0  42 00 FF F0 */	bdnz lbl_80BF4890
/* 80BF48A4  3C 60 80 BF */	lis r3, __vt__20daObj_Gadget_Param_c@ha /* 0x80BF4B84@ha */
/* 80BF48A8  38 03 4B 84 */	addi r0, r3, __vt__20daObj_Gadget_Param_c@l /* 0x80BF4B84@l */
/* 80BF48AC  3C 60 80 BF */	lis r3, l_HIO@ha /* 0x80BF4BE4@ha */
/* 80BF48B0  94 03 4B E4 */	stwu r0, l_HIO@l(r3)  /* 0x80BF4BE4@l */
/* 80BF48B4  3C 80 80 BF */	lis r4, __dt__20daObj_Gadget_Param_cFv@ha /* 0x80BF48D8@ha */
/* 80BF48B8  38 84 48 D8 */	addi r4, r4, __dt__20daObj_Gadget_Param_cFv@l /* 0x80BF48D8@l */
/* 80BF48BC  3C A0 80 BF */	lis r5, lit_3804@ha /* 0x80BF4BD8@ha */
/* 80BF48C0  38 A5 4B D8 */	addi r5, r5, lit_3804@l /* 0x80BF4BD8@l */
/* 80BF48C4  4B FF E3 F5 */	bl __register_global_object
/* 80BF48C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF48CC  7C 08 03 A6 */	mtlr r0
/* 80BF48D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF48D4  4E 80 00 20 */	blr 
