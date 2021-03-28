lbl_80D477A4:
/* 80D477A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D477A8  7C 08 02 A6 */	mflr r0
/* 80D477AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D477B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D477B4  4B 61 AA 28 */	b _savegpr_29
/* 80D477B8  7C 7D 1B 78 */	mr r29, r3
/* 80D477BC  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80D477C0  28 1E 00 00 */	cmplwi r30, 0
/* 80D477C4  41 82 00 30 */	beq lbl_80D477F4
/* 80D477C8  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80D477CC  80 84 00 04 */	lwz r4, 4(r4)
/* 80D477D0  83 E4 00 04 */	lwz r31, 4(r4)
/* 80D477D4  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80D477D8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80D477DC  7D 89 03 A6 */	mtctr r12
/* 80D477E0  4E 80 04 21 */	bctrl 
/* 80D477E4  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80D477E8  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80D477EC  7C 64 00 2E */	lwzx r3, r4, r0
/* 80D477F0  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80D477F4:
/* 80D477F4  7F A3 EB 78 */	mr r3, r29
/* 80D477F8  38 80 00 00 */	li r4, 0
/* 80D477FC  38 A0 00 00 */	li r5, 0
/* 80D47800  3C C0 80 D5 */	lis r6, m__14daPeru_Param_c@ha
/* 80D47804  38 C6 C0 60 */	addi r6, r6, m__14daPeru_Param_c@l
/* 80D47808  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80D4780C  38 C0 00 00 */	li r6, 0
/* 80D47810  3C E0 80 D5 */	lis r7, lit_4430@ha
/* 80D47814  C0 47 C1 24 */	lfs f2, lit_4430@l(r7)
/* 80D47818  38 E0 00 00 */	li r7, 0
/* 80D4781C  81 1D 0E 80 */	lwz r8, 0xe80(r29)
/* 80D47820  39 20 00 00 */	li r9, 0
/* 80D47824  4B 40 10 48 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80D47828  39 61 00 20 */	addi r11, r1, 0x20
/* 80D4782C  4B 61 A9 FC */	b _restgpr_29
/* 80D47830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D47834  7C 08 03 A6 */	mtlr r0
/* 80D47838  38 21 00 20 */	addi r1, r1, 0x20
/* 80D4783C  4E 80 00 20 */	blr 
