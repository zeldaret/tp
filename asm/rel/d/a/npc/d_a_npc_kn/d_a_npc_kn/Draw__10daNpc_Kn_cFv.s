lbl_80A2B6B0:
/* 80A2B6B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2B6B4  7C 08 02 A6 */	mflr r0
/* 80A2B6B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2B6BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2B6C0  4B 93 6B 1C */	b _savegpr_29
/* 80A2B6C4  7C 7D 1B 78 */	mr r29, r3
/* 80A2B6C8  83 C3 09 A0 */	lwz r30, 0x9a0(r3)
/* 80A2B6CC  28 1E 00 00 */	cmplwi r30, 0
/* 80A2B6D0  41 82 00 30 */	beq lbl_80A2B700
/* 80A2B6D4  80 9D 05 BC */	lwz r4, 0x5bc(r29)
/* 80A2B6D8  80 84 00 04 */	lwz r4, 4(r4)
/* 80A2B6DC  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A2B6E0  81 83 0E 40 */	lwz r12, 0xe40(r3)
/* 80A2B6E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A2B6E8  7D 89 03 A6 */	mtctr r12
/* 80A2B6EC  4E 80 04 21 */	bctrl 
/* 80A2B6F0  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80A2B6F4  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80A2B6F8  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A2B6FC  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80A2B700:
/* 80A2B700  38 00 00 00 */	li r0, 0
/* 80A2B704  B0 01 00 08 */	sth r0, 8(r1)
/* 80A2B708  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80A2B70C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A2B710  3C 60 80 A4 */	lis r3, m__16daNpc_Kn_Param_c@ha
/* 80A2B714  38 C3 09 70 */	addi r6, r3, m__16daNpc_Kn_Param_c@l
/* 80A2B718  A8 06 00 8C */	lha r0, 0x8c(r6)
/* 80A2B71C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80A2B720  7F A3 EB 78 */	mr r3, r29
/* 80A2B724  38 80 00 00 */	li r4, 0
/* 80A2B728  38 A0 00 00 */	li r5, 0
/* 80A2B72C  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80A2B730  38 C1 00 08 */	addi r6, r1, 8
/* 80A2B734  3C E0 80 A4 */	lis r7, lit_4204@ha
/* 80A2B738  C0 47 09 00 */	lfs f2, lit_4204@l(r7)
/* 80A2B73C  38 E0 00 01 */	li r7, 1
/* 80A2B740  39 00 00 00 */	li r8, 0
/* 80A2B744  39 20 00 00 */	li r9, 0
/* 80A2B748  48 00 D4 71 */	bl draw__10daNpc_Kn_cFiifP11_GXColorS10fiii
/* 80A2B74C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2B750  4B 93 6A D8 */	b _restgpr_29
/* 80A2B754  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2B758  7C 08 03 A6 */	mtlr r0
/* 80A2B75C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2B760  4E 80 00 20 */	blr 
