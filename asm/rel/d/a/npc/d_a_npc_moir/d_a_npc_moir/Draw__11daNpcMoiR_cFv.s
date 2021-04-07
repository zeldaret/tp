lbl_80A7CEA0:
/* 80A7CEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7CEA4  7C 08 02 A6 */	mflr r0
/* 80A7CEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7CEAC  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80A7CEB0  80 84 00 04 */	lwz r4, 4(r4)
/* 80A7CEB4  80 84 00 04 */	lwz r4, 4(r4)
/* 80A7CEB8  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80A7CEBC  80 84 00 04 */	lwz r4, 4(r4)
/* 80A7CEC0  80 03 0B DC */	lwz r0, 0xbdc(r3)
/* 80A7CEC4  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80A7CEC8  38 80 00 00 */	li r4, 0
/* 80A7CECC  38 A0 00 00 */	li r5, 0
/* 80A7CED0  3C C0 80 A8 */	lis r6, m__17daNpcMoiR_Param_c@ha /* 0x80A832AC@ha */
/* 80A7CED4  38 C6 32 AC */	addi r6, r6, m__17daNpcMoiR_Param_c@l /* 0x80A832AC@l */
/* 80A7CED8  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80A7CEDC  38 C0 00 00 */	li r6, 0
/* 80A7CEE0  38 E0 00 00 */	li r7, 0
/* 80A7CEE4  4B 6D 53 C9 */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 80A7CEE8  38 60 00 01 */	li r3, 1
/* 80A7CEEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7CEF0  7C 08 03 A6 */	mtlr r0
/* 80A7CEF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7CEF8  4E 80 00 20 */	blr 
