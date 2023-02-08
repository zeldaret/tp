lbl_80A063D0:
/* 80A063D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A063D4  7C 08 02 A6 */	mflr r0
/* 80A063D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A063DC  3C 60 80 A0 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A06804@ha */
/* 80A063E0  38 A3 68 04 */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x80A06804@l */
/* 80A063E4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A063E8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A063EC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A063F0  80 04 00 04 */	lwz r0, 4(r4)
/* 80A063F4  90 65 0E 30 */	stw r3, 0xe30(r5)
/* 80A063F8  90 05 0E 34 */	stw r0, 0xe34(r5)
/* 80A063FC  80 04 00 08 */	lwz r0, 8(r4)
/* 80A06400  90 05 0E 38 */	stw r0, 0xe38(r5)
/* 80A06404  38 85 0E 30 */	addi r4, r5, 0xe30
/* 80A06408  80 65 0D DC */	lwz r3, 0xddc(r5)
/* 80A0640C  80 05 0D E0 */	lwz r0, 0xde0(r5)
/* 80A06410  90 64 00 0C */	stw r3, 0xc(r4)
/* 80A06414  90 04 00 10 */	stw r0, 0x10(r4)
/* 80A06418  80 05 0D E4 */	lwz r0, 0xde4(r5)
/* 80A0641C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80A06420  80 65 0D E8 */	lwz r3, 0xde8(r5)
/* 80A06424  80 05 0D EC */	lwz r0, 0xdec(r5)
/* 80A06428  90 64 00 18 */	stw r3, 0x18(r4)
/* 80A0642C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80A06430  80 05 0D F0 */	lwz r0, 0xdf0(r5)
/* 80A06434  90 04 00 20 */	stw r0, 0x20(r4)
/* 80A06438  80 65 0D F4 */	lwz r3, 0xdf4(r5)
/* 80A0643C  80 05 0D F8 */	lwz r0, 0xdf8(r5)
/* 80A06440  90 64 00 24 */	stw r3, 0x24(r4)
/* 80A06444  90 04 00 28 */	stw r0, 0x28(r4)
/* 80A06448  80 05 0D FC */	lwz r0, 0xdfc(r5)
/* 80A0644C  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80A06450  80 65 0E 00 */	lwz r3, 0xe00(r5)
/* 80A06454  80 05 0E 04 */	lwz r0, 0xe04(r5)
/* 80A06458  90 64 00 30 */	stw r3, 0x30(r4)
/* 80A0645C  90 04 00 34 */	stw r0, 0x34(r4)
/* 80A06460  80 05 0E 08 */	lwz r0, 0xe08(r5)
/* 80A06464  90 04 00 38 */	stw r0, 0x38(r4)
/* 80A06468  80 65 0E 0C */	lwz r3, 0xe0c(r5)
/* 80A0646C  80 05 0E 10 */	lwz r0, 0xe10(r5)
/* 80A06470  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80A06474  90 04 00 40 */	stw r0, 0x40(r4)
/* 80A06478  80 05 0E 14 */	lwz r0, 0xe14(r5)
/* 80A0647C  90 04 00 44 */	stw r0, 0x44(r4)
/* 80A06480  80 65 0E 18 */	lwz r3, 0xe18(r5)
/* 80A06484  80 05 0E 1C */	lwz r0, 0xe1c(r5)
/* 80A06488  90 64 00 48 */	stw r3, 0x48(r4)
/* 80A0648C  90 04 00 4C */	stw r0, 0x4c(r4)
/* 80A06490  80 05 0E 20 */	lwz r0, 0xe20(r5)
/* 80A06494  90 04 00 50 */	stw r0, 0x50(r4)
/* 80A06498  80 65 0E 24 */	lwz r3, 0xe24(r5)
/* 80A0649C  80 05 0E 28 */	lwz r0, 0xe28(r5)
/* 80A064A0  90 64 00 54 */	stw r3, 0x54(r4)
/* 80A064A4  90 04 00 58 */	stw r0, 0x58(r4)
/* 80A064A8  80 05 0E 2C */	lwz r0, 0xe2c(r5)
/* 80A064AC  90 04 00 5C */	stw r0, 0x5c(r4)
/* 80A064B0  3C 60 80 A0 */	lis r3, __vt__17daNpc_Hoz_Param_c@ha /* 0x80A078D4@ha */
/* 80A064B4  38 03 78 D4 */	addi r0, r3, __vt__17daNpc_Hoz_Param_c@l /* 0x80A078D4@l */
/* 80A064B8  3C 60 80 A0 */	lis r3, l_HIO@ha /* 0x80A078F4@ha */
/* 80A064BC  94 03 78 F4 */	stwu r0, l_HIO@l(r3)  /* 0x80A078F4@l */
/* 80A064C0  3C 80 80 A0 */	lis r4, __dt__17daNpc_Hoz_Param_cFv@ha /* 0x80A065E4@ha */
/* 80A064C4  38 84 65 E4 */	addi r4, r4, __dt__17daNpc_Hoz_Param_cFv@l /* 0x80A065E4@l */
/* 80A064C8  3C A0 80 A0 */	lis r5, lit_3964@ha /* 0x80A078E8@ha */
/* 80A064CC  38 A5 78 E8 */	addi r5, r5, lit_3964@l /* 0x80A078E8@l */
/* 80A064D0  4B FF AF C9 */	bl __register_global_object
/* 80A064D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A064D8  7C 08 03 A6 */	mtlr r0
/* 80A064DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A064E0  4E 80 00 20 */	blr 
