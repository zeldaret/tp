lbl_809F2374:
/* 809F2374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2378  7C 08 02 A6 */	mflr r0
/* 809F237C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F2380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F2384  7C 7F 1B 78 */	mr r31, r3
/* 809F2388  4B 76 6D 74 */	b drawNpc__10daNpcCd2_cFv
/* 809F238C  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 809F2390  2C 00 00 10 */	cmpwi r0, 0x10
/* 809F2394  40 80 00 1C */	bge lbl_809F23B0
/* 809F2398  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 809F239C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 809F23A0  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 809F23A4  7C 63 02 14 */	add r3, r3, r0
/* 809F23A8  C0 23 01 E8 */	lfs f1, 0x1e8(r3)
/* 809F23AC  48 00 00 18 */	b lbl_809F23C4
lbl_809F23B0:
/* 809F23B0  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 809F23B4  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 809F23B8  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 809F23BC  7C 63 02 14 */	add r3, r3, r0
/* 809F23C0  C0 23 FF 18 */	lfs f1, -0xe8(r3)
lbl_809F23C4:
/* 809F23C4  7F E3 FB 78 */	mr r3, r31
/* 809F23C8  80 9F 0D 84 */	lwz r4, 0xd84(r31)
/* 809F23CC  80 BF 0A C8 */	lwz r5, 0xac8(r31)
/* 809F23D0  4B 76 6C 20 */	b drawObj__10daNpcCd2_cFiP8J3DModelf
/* 809F23D4  7F E3 FB 78 */	mr r3, r31
/* 809F23D8  3C 80 80 9F */	lis r4, lit_4488@ha
/* 809F23DC  C0 24 2D 28 */	lfs f1, lit_4488@l(r4)
/* 809F23E0  4B 76 6B 8C */	b drawShadow__10daNpcCd2_cFf
/* 809F23E4  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 809F23E8  2C 00 00 01 */	cmpwi r0, 1
/* 809F23EC  40 82 00 60 */	bne lbl_809F244C
/* 809F23F0  80 9F 0A CC */	lwz r4, 0xacc(r31)
/* 809F23F4  28 04 00 00 */	cmplwi r4, 0
/* 809F23F8  41 82 00 54 */	beq lbl_809F244C
/* 809F23FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809F2400  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809F2404  80 84 00 04 */	lwz r4, 4(r4)
/* 809F2408  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809F240C  4B 7B 29 94 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809F2410  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 809F2414  80 63 00 04 */	lwz r3, 4(r3)
/* 809F2418  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809F241C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809F2420  38 63 01 50 */	addi r3, r3, 0x150
/* 809F2424  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809F2428  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809F242C  4B 95 40 84 */	b PSMTXCopy
/* 809F2430  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F2434  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F2438  80 9F 0A CC */	lwz r4, 0xacc(r31)
/* 809F243C  38 84 00 24 */	addi r4, r4, 0x24
/* 809F2440  4B 95 40 70 */	b PSMTXCopy
/* 809F2444  80 7F 0A CC */	lwz r3, 0xacc(r31)
/* 809F2448  4B 61 B8 7C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_809F244C:
/* 809F244C  38 60 00 01 */	li r3, 1
/* 809F2450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F2454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2458  7C 08 03 A6 */	mtlr r0
/* 809F245C  38 21 00 10 */	addi r1, r1, 0x10
/* 809F2460  4E 80 00 20 */	blr 
