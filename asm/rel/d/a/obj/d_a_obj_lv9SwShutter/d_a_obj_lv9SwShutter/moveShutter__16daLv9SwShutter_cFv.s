lbl_80C8D1B8:
/* 80C8D1B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8D1BC  7C 08 02 A6 */	mflr r0
/* 80C8D1C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8D1C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8D1C8  4B 6D 50 14 */	b _savegpr_29
/* 80C8D1CC  7C 7E 1B 78 */	mr r30, r3
/* 80C8D1D0  3C 60 80 C9 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C8D1D4  3B E3 D8 0C */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80C8D1D8  3C 60 80 C9 */	lis r3, data_80C8D930@ha
/* 80C8D1DC  38 A3 D9 30 */	addi r5, r3, data_80C8D930@l
/* 80C8D1E0  88 05 00 00 */	lbz r0, 0(r5)
/* 80C8D1E4  7C 00 07 75 */	extsb. r0, r0
/* 80C8D1E8  40 82 00 58 */	bne lbl_80C8D240
/* 80C8D1EC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80C8D1F0  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80C8D1F4  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80C8D1F8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C8D1FC  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80C8D200  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C8D204  38 9F 00 44 */	addi r4, r31, 0x44
/* 80C8D208  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80C8D20C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80C8D210  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C8D214  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C8D218  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80C8D21C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C8D220  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80C8D224  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C8D228  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C8D22C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C8D230  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80C8D234  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C8D238  38 00 00 01 */	li r0, 1
/* 80C8D23C  98 05 00 00 */	stb r0, 0(r5)
lbl_80C8D240:
/* 80C8D240  8B BE 05 AE */	lbz r29, 0x5ae(r30)
/* 80C8D244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8D248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C8D24C  88 9E 05 AD */	lbz r4, 0x5ad(r30)
/* 80C8D250  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C8D254  7C 05 07 74 */	extsb r5, r0
/* 80C8D258  4B 3A 81 08 */	b isSwitch__10dSv_info_cCFii
/* 80C8D25C  98 7E 05 AE */	stb r3, 0x5ae(r30)
/* 80C8D260  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80C8D264  7C 00 E8 40 */	cmplw r0, r29
/* 80C8D268  41 82 00 20 */	beq lbl_80C8D288
/* 80C8D26C  28 00 00 00 */	cmplwi r0, 0
/* 80C8D270  41 82 00 10 */	beq lbl_80C8D280
/* 80C8D274  7F C3 F3 78 */	mr r3, r30
/* 80C8D278  48 00 00 55 */	bl init_modeOpen__16daLv9SwShutter_cFv
/* 80C8D27C  48 00 00 0C */	b lbl_80C8D288
lbl_80C8D280:
/* 80C8D280  7F C3 F3 78 */	mr r3, r30
/* 80C8D284  48 00 01 BD */	bl init_modeClose__16daLv9SwShutter_cFv
lbl_80C8D288:
/* 80C8D288  7F C3 F3 78 */	mr r3, r30
/* 80C8D28C  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80C8D290  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C8D294  39 9F 00 44 */	addi r12, r31, 0x44
/* 80C8D298  7D 8C 02 14 */	add r12, r12, r0
/* 80C8D29C  4B 6D 4D E8 */	b __ptmf_scall
/* 80C8D2A0  60 00 00 00 */	nop 
/* 80C8D2A4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8D2A8  4B 6D 4F 80 */	b _restgpr_29
/* 80C8D2AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8D2B0  7C 08 03 A6 */	mtlr r0
/* 80C8D2B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8D2B8  4E 80 00 20 */	blr 
