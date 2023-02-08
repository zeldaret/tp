lbl_8095E96C:
/* 8095E96C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095E970  7C 08 02 A6 */	mflr r0
/* 8095E974  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095E978  80 83 05 68 */	lwz r4, 0x568(r3)
/* 8095E97C  80 84 00 04 */	lwz r4, 4(r4)
/* 8095E980  80 84 00 04 */	lwz r4, 4(r4)
/* 8095E984  80 84 00 60 */	lwz r4, 0x60(r4)
/* 8095E988  80 84 00 08 */	lwz r4, 8(r4)
/* 8095E98C  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 8095E990  90 04 00 3C */	stw r0, 0x3c(r4)
/* 8095E994  38 80 00 00 */	li r4, 0
/* 8095E998  38 A0 00 00 */	li r5, 0
/* 8095E99C  3C C0 80 96 */	lis r6, m__17daNpcAshB_Param_c@ha /* 0x809620E4@ha */
/* 8095E9A0  38 C6 20 E4 */	addi r6, r6, m__17daNpcAshB_Param_c@l /* 0x809620E4@l */
/* 8095E9A4  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 8095E9A8  38 C0 00 00 */	li r6, 0
/* 8095E9AC  38 E0 00 00 */	li r7, 0
/* 8095E9B0  4B 7F 38 FD */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 8095E9B4  38 60 00 01 */	li r3, 1
/* 8095E9B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095E9BC  7C 08 03 A6 */	mtlr r0
/* 8095E9C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8095E9C4  4E 80 00 20 */	blr 
