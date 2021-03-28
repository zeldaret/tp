lbl_807DA8E0:
/* 807DA8E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807DA8E4  7C 08 02 A6 */	mflr r0
/* 807DA8E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807DA8EC  39 61 00 20 */	addi r11, r1, 0x20
/* 807DA8F0  4B B8 78 EC */	b _savegpr_29
/* 807DA8F4  7C 7D 1B 78 */	mr r29, r3
/* 807DA8F8  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807DA8FC  3B E3 29 8C */	addi r31, r3, lit_3882@l
/* 807DA900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807DA904  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807DA908  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 807DA90C  38 00 01 D5 */	li r0, 0x1d5
/* 807DA910  B0 01 00 08 */	sth r0, 8(r1)
/* 807DA914  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 807DA918  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 807DA91C  38 81 00 08 */	addi r4, r1, 8
/* 807DA920  4B 83 EE D8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807DA924  38 00 00 14 */	li r0, 0x14
/* 807DA928  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 807DA92C  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 807DA930  2C 00 00 02 */	cmpwi r0, 2
/* 807DA934  41 82 00 88 */	beq lbl_807DA9BC
/* 807DA938  40 80 00 B0 */	bge lbl_807DA9E8
/* 807DA93C  2C 00 00 00 */	cmpwi r0, 0
/* 807DA940  41 82 00 10 */	beq lbl_807DA950
/* 807DA944  40 80 00 2C */	bge lbl_807DA970
/* 807DA948  48 00 00 A0 */	b lbl_807DA9E8
/* 807DA94C  48 00 00 9C */	b lbl_807DA9E8
lbl_807DA950:
/* 807DA950  7F A3 EB 78 */	mr r3, r29
/* 807DA954  38 80 00 2A */	li r4, 0x2a
/* 807DA958  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807DA95C  38 A0 00 02 */	li r5, 2
/* 807DA960  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807DA964  4B FF 7B E5 */	bl anm_init__FP10e_wb_classifUcf
/* 807DA968  38 00 00 01 */	li r0, 1
/* 807DA96C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807DA970:
/* 807DA970  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807DA974  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 807DA978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DA97C  40 81 00 6C */	ble lbl_807DA9E8
/* 807DA980  C0 1F 02 04 */	lfs f0, 0x204(r31)
/* 807DA984  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DA988  40 80 00 60 */	bge lbl_807DA9E8
/* 807DA98C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 807DA990  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807DA994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DA998  40 81 00 50 */	ble lbl_807DA9E8
/* 807DA99C  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 807DA9A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DA9A4  40 80 00 44 */	bge lbl_807DA9E8
/* 807DA9A8  38 00 00 46 */	li r0, 0x46
/* 807DA9AC  B0 1D 16 9E */	sth r0, 0x169e(r29)
/* 807DA9B0  38 00 00 02 */	li r0, 2
/* 807DA9B4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807DA9B8  48 00 00 30 */	b lbl_807DA9E8
lbl_807DA9BC:
/* 807DA9BC  A8 1D 16 9E */	lha r0, 0x169e(r29)
/* 807DA9C0  2C 00 00 00 */	cmpwi r0, 0
/* 807DA9C4  40 82 00 24 */	bne lbl_807DA9E8
/* 807DA9C8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 807DA9CC  C0 1F 02 08 */	lfs f0, 0x208(r31)
/* 807DA9D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807DA9D4  40 81 00 14 */	ble lbl_807DA9E8
/* 807DA9D8  38 00 00 32 */	li r0, 0x32
/* 807DA9DC  B0 1D 16 9E */	sth r0, 0x169e(r29)
/* 807DA9E0  38 00 00 03 */	li r0, 3
/* 807DA9E4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807DA9E8:
/* 807DA9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 807DA9EC  4B B8 78 3C */	b _restgpr_29
/* 807DA9F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807DA9F4  7C 08 03 A6 */	mtlr r0
/* 807DA9F8  38 21 00 20 */	addi r1, r1, 0x20
/* 807DA9FC  4E 80 00 20 */	blr 
