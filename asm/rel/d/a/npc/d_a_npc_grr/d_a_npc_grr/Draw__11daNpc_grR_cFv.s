lbl_809E0450:
/* 809E0450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E0454  7C 08 02 A6 */	mflr r0
/* 809E0458  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E045C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809E0460  7C 7F 1B 78 */	mr r31, r3
/* 809E0464  80 83 05 68 */	lwz r4, 0x568(r3)
/* 809E0468  80 84 00 04 */	lwz r4, 4(r4)
/* 809E046C  80 84 00 04 */	lwz r4, 4(r4)
/* 809E0470  80 84 00 60 */	lwz r4, 0x60(r4)
/* 809E0474  80 84 00 04 */	lwz r4, 4(r4)
/* 809E0478  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 809E047C  90 04 00 3C */	stw r0, 0x3c(r4)
/* 809E0480  3C 80 80 9E */	lis r4, lit_4484@ha
/* 809E0484  38 A4 3D 50 */	addi r5, r4, lit_4484@l
/* 809E0488  80 85 00 00 */	lwz r4, 0(r5)
/* 809E048C  80 05 00 04 */	lwz r0, 4(r5)
/* 809E0490  90 81 00 08 */	stw r4, 8(r1)
/* 809E0494  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E0498  80 05 00 08 */	lwz r0, 8(r5)
/* 809E049C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E04A0  38 81 00 08 */	addi r4, r1, 8
/* 809E04A4  48 00 1A 6D */	bl chkAction__11daNpc_grR_cFM11daNpc_grR_cFPCvPvPv_i
/* 809E04A8  7C 64 1B 78 */	mr r4, r3
/* 809E04AC  7F E3 FB 78 */	mr r3, r31
/* 809E04B0  38 A0 00 00 */	li r5, 0
/* 809E04B4  3C C0 80 9E */	lis r6, m__17daNpc_grR_Param_c@ha
/* 809E04B8  38 C6 38 D8 */	addi r6, r6, m__17daNpc_grR_Param_c@l
/* 809E04BC  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 809E04C0  38 C0 00 00 */	li r6, 0
/* 809E04C4  38 E0 00 00 */	li r7, 0
/* 809E04C8  4B 77 1D E4 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 809E04CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809E04D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E04D4  7C 08 03 A6 */	mtlr r0
/* 809E04D8  38 21 00 20 */	addi r1, r1, 0x20
/* 809E04DC  4E 80 00 20 */	blr 
