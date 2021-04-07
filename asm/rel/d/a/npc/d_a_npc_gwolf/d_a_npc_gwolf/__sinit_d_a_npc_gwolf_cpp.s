lbl_809F83B4:
/* 809F83B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F83B8  7C 08 02 A6 */	mflr r0
/* 809F83BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F83C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F83C4  3C 60 80 A0 */	lis r3, cNullVec__6Z2Calc@ha /* 0x809F87F4@ha */
/* 809F83C8  3B E3 87 F4 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x809F87F4@l */
/* 809F83CC  3C 60 80 A0 */	lis r3, __vt__19daNpc_GWolf_Param_c@ha /* 0x809F8EB0@ha */
/* 809F83D0  38 03 8E B0 */	addi r0, r3, __vt__19daNpc_GWolf_Param_c@l /* 0x809F8EB0@l */
/* 809F83D4  3C 60 80 A0 */	lis r3, l_HIO@ha /* 0x809F8F14@ha */
/* 809F83D8  94 03 8F 14 */	stwu r0, l_HIO@l(r3)  /* 0x809F8F14@l */
/* 809F83DC  3C 80 80 A0 */	lis r4, __dt__19daNpc_GWolf_Param_cFv@ha /* 0x809F8488@ha */
/* 809F83E0  38 84 84 88 */	addi r4, r4, __dt__19daNpc_GWolf_Param_cFv@l /* 0x809F8488@l */
/* 809F83E4  3C A0 80 A0 */	lis r5, lit_4017@ha /* 0x809F8F08@ha */
/* 809F83E8  38 A5 8F 08 */	addi r5, r5, lit_4017@l /* 0x809F8F08@l */
/* 809F83EC  4B FF AC 4D */	bl __register_global_object
/* 809F83F0  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809F83F4  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809F83F8  80 64 00 00 */	lwz r3, 0(r4)
/* 809F83FC  80 04 00 04 */	lwz r0, 4(r4)
/* 809F8400  90 7F 01 E0 */	stw r3, 0x1e0(r31)
/* 809F8404  90 1F 01 E4 */	stw r0, 0x1e4(r31)
/* 809F8408  80 04 00 08 */	lwz r0, 8(r4)
/* 809F840C  90 1F 01 E8 */	stw r0, 0x1e8(r31)
/* 809F8410  38 9F 01 E0 */	addi r4, r31, 0x1e0
/* 809F8414  80 7F 01 B0 */	lwz r3, 0x1b0(r31)
/* 809F8418  80 1F 01 B4 */	lwz r0, 0x1b4(r31)
/* 809F841C  90 64 00 0C */	stw r3, 0xc(r4)
/* 809F8420  90 04 00 10 */	stw r0, 0x10(r4)
/* 809F8424  80 1F 01 B8 */	lwz r0, 0x1b8(r31)
/* 809F8428  90 04 00 14 */	stw r0, 0x14(r4)
/* 809F842C  80 7F 01 BC */	lwz r3, 0x1bc(r31)
/* 809F8430  80 1F 01 C0 */	lwz r0, 0x1c0(r31)
/* 809F8434  90 64 00 18 */	stw r3, 0x18(r4)
/* 809F8438  90 04 00 1C */	stw r0, 0x1c(r4)
/* 809F843C  80 1F 01 C4 */	lwz r0, 0x1c4(r31)
/* 809F8440  90 04 00 20 */	stw r0, 0x20(r4)
/* 809F8444  80 7F 01 C8 */	lwz r3, 0x1c8(r31)
/* 809F8448  80 1F 01 CC */	lwz r0, 0x1cc(r31)
/* 809F844C  90 64 00 24 */	stw r3, 0x24(r4)
/* 809F8450  90 04 00 28 */	stw r0, 0x28(r4)
/* 809F8454  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 809F8458  90 04 00 2C */	stw r0, 0x2c(r4)
/* 809F845C  80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 809F8460  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 809F8464  90 64 00 30 */	stw r3, 0x30(r4)
/* 809F8468  90 04 00 34 */	stw r0, 0x34(r4)
/* 809F846C  80 1F 01 DC */	lwz r0, 0x1dc(r31)
/* 809F8470  90 04 00 38 */	stw r0, 0x38(r4)
/* 809F8474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F8478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F847C  7C 08 03 A6 */	mtlr r0
/* 809F8480  38 21 00 10 */	addi r1, r1, 0x10
/* 809F8484  4E 80 00 20 */	blr 
