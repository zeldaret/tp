lbl_80CB8290:
/* 80CB8290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8294  7C 08 02 A6 */	mflr r0
/* 80CB8298  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB829C  3C 60 80 CC */	lis r3, l_ccDCyl@ha /* 0x80CB849C@ha */
/* 80CB82A0  38 63 84 9C */	addi r3, r3, l_ccDCyl@l /* 0x80CB849C@l */
/* 80CB82A4  38 A3 FF FC */	addi r5, r3, -4
/* 80CB82A8  3C 60 80 CC */	lis r3, l_ccDObjData@ha /* 0x80CB83A4@ha */
/* 80CB82AC  38 63 83 A4 */	addi r3, r3, l_ccDObjData@l /* 0x80CB83A4@l */
/* 80CB82B0  38 83 FF FC */	addi r4, r3, -4
/* 80CB82B4  38 00 00 06 */	li r0, 6
/* 80CB82B8  7C 09 03 A6 */	mtctr r0
lbl_80CB82BC:
/* 80CB82BC  80 64 00 04 */	lwz r3, 4(r4)
/* 80CB82C0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80CB82C4  90 65 00 04 */	stw r3, 4(r5)
/* 80CB82C8  94 05 00 08 */	stwu r0, 8(r5)
/* 80CB82CC  42 00 FF F0 */	bdnz lbl_80CB82BC
/* 80CB82D0  3C 60 80 CC */	lis r3, __vt__21daObj_Pumpkin_Param_c@ha /* 0x80CB85BC@ha */
/* 80CB82D4  38 03 85 BC */	addi r0, r3, __vt__21daObj_Pumpkin_Param_c@l /* 0x80CB85BC@l */
/* 80CB82D8  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CB85DC@ha */
/* 80CB82DC  94 03 85 DC */	stwu r0, l_HIO@l(r3)  /* 0x80CB85DC@l */
/* 80CB82E0  3C 80 80 CC */	lis r4, __dt__21daObj_Pumpkin_Param_cFv@ha /* 0x80CB8304@ha */
/* 80CB82E4  38 84 83 04 */	addi r4, r4, __dt__21daObj_Pumpkin_Param_cFv@l /* 0x80CB8304@l */
/* 80CB82E8  3C A0 80 CC */	lis r5, lit_3860@ha /* 0x80CB85D0@ha */
/* 80CB82EC  38 A5 85 D0 */	addi r5, r5, lit_3860@l /* 0x80CB85D0@l */
/* 80CB82F0  4B FF D4 29 */	bl __register_global_object
/* 80CB82F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB82F8  7C 08 03 A6 */	mtlr r0
/* 80CB82FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8300  4E 80 00 20 */	blr 
