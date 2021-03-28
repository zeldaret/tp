lbl_800B6A30:
/* 800B6A30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800B6A34  7C 08 02 A6 */	mflr r0
/* 800B6A38  90 01 00 64 */	stw r0, 0x64(r1)
/* 800B6A3C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800B6A40  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800B6A44  39 61 00 50 */	addi r11, r1, 0x50
/* 800B6A48  48 2A B7 95 */	bl _savegpr_29
/* 800B6A4C  7C 7E 1B 78 */	mr r30, r3
/* 800B6A50  4B FF 98 6D */	bl setFrontWallType__9daAlink_cFv
/* 800B6A54  AB FE 30 78 */	lha r31, 0x3078(r30)
/* 800B6A58  38 00 00 00 */	li r0, 0
/* 800B6A5C  B0 1E 30 78 */	sth r0, 0x3078(r30)
/* 800B6A60  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800B6A64  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B6A68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B6A6C  41 81 00 18 */	bgt lbl_800B6A84
/* 800B6A70  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800B6A74  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B6A78  40 82 00 0C */	bne lbl_800B6A84
/* 800B6A7C  38 60 00 00 */	li r3, 0
/* 800B6A80  48 00 04 88 */	b lbl_800B6F08
lbl_800B6A84:
/* 800B6A84  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800B6A88  54 03 07 BD */	rlwinm. r3, r0, 0, 0x1e, 0x1e
/* 800B6A8C  41 82 01 E4 */	beq lbl_800B6C70
/* 800B6A90  88 7E 2F 91 */	lbz r3, 0x2f91(r30)
/* 800B6A94  28 03 00 0A */	cmplwi r3, 0xa
/* 800B6A98  40 82 00 5C */	bne lbl_800B6AF4
/* 800B6A9C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B6AA0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800B6AA4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B6AA8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800B6AAC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 800B6AB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B6AB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6AB8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800B6ABC  38 80 00 02 */	li r4, 2
/* 800B6AC0  38 A0 00 01 */	li r5, 1
/* 800B6AC4  38 C1 00 2C */	addi r6, r1, 0x2c
/* 800B6AC8  4B FB 8F 5D */	bl StartShock__12dVibration_cFii4cXyz
/* 800B6ACC  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B6AD0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6AD4  41 82 00 14 */	beq lbl_800B6AE8
/* 800B6AD8  7F C3 F3 78 */	mr r3, r30
/* 800B6ADC  38 80 00 08 */	li r4, 8
/* 800B6AE0  48 07 EC 11 */	bl procWolfHangWallCatchInit__9daAlink_cFi
/* 800B6AE4  48 00 04 24 */	b lbl_800B6F08
lbl_800B6AE8:
/* 800B6AE8  7F C3 F3 78 */	mr r3, r30
/* 800B6AEC  48 04 3F 91 */	bl procHangStartInit__9daAlink_cFv
/* 800B6AF0  48 00 04 18 */	b lbl_800B6F08
lbl_800B6AF4:
/* 800B6AF4  28 03 00 0B */	cmplwi r3, 0xb
/* 800B6AF8  40 82 00 40 */	bne lbl_800B6B38
/* 800B6AFC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B6B00  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800B6B04  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B6B08  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800B6B0C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800B6B10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B6B14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6B18  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800B6B1C  38 80 00 02 */	li r4, 2
/* 800B6B20  38 A0 00 01 */	li r5, 1
/* 800B6B24  38 C1 00 20 */	addi r6, r1, 0x20
/* 800B6B28  4B FB 8E FD */	bl StartShock__12dVibration_cFii4cXyz
/* 800B6B2C  7F C3 F3 78 */	mr r3, r30
/* 800B6B30  48 04 52 D5 */	bl procHangWallCatchInit__9daAlink_cFv
/* 800B6B34  48 00 03 D4 */	b lbl_800B6F08
lbl_800B6B38:
/* 800B6B38  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B6B3C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6B40  40 82 03 C4 */	bne lbl_800B6F04
/* 800B6B44  28 03 00 03 */	cmplwi r3, 3
/* 800B6B48  40 82 00 50 */	bne lbl_800B6B98
/* 800B6B4C  A8 7E 30 6E */	lha r3, 0x306e(r30)
/* 800B6B50  3C 63 00 01 */	addis r3, r3, 1
/* 800B6B54  38 03 80 00 */	addi r0, r3, -32768
/* 800B6B58  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800B6B5C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B6B60  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800B6B64  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B6B68  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800B6B6C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800B6B70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B6B74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6B78  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800B6B7C  38 80 00 02 */	li r4, 2
/* 800B6B80  38 A0 00 01 */	li r5, 1
/* 800B6B84  38 C1 00 14 */	addi r6, r1, 0x14
/* 800B6B88  4B FB 8E 9D */	bl StartShock__12dVibration_cFii4cXyz
/* 800B6B8C  7F C3 F3 78 */	mr r3, r30
/* 800B6B90  48 04 86 FD */	bl setClimbStartNotGround__9daAlink_cFv
/* 800B6B94  48 00 03 74 */	b lbl_800B6F08
lbl_800B6B98:
/* 800B6B98  28 03 00 04 */	cmplwi r3, 4
/* 800B6B9C  40 82 03 68 */	bne lbl_800B6F04
/* 800B6BA0  7F C3 F3 78 */	mr r3, r30
/* 800B6BA4  48 04 63 B5 */	bl getLadderUnitCount__9daAlink_cCFv
/* 800B6BA8  38 83 FF FF */	addi r4, r3, -1
/* 800B6BAC  2C 04 00 01 */	cmpwi r4, 1
/* 800B6BB0  40 80 00 0C */	bge lbl_800B6BBC
/* 800B6BB4  38 60 00 00 */	li r3, 0
/* 800B6BB8  48 00 03 50 */	b lbl_800B6F08
lbl_800B6BBC:
/* 800B6BBC  7F C3 F3 78 */	mr r3, r30
/* 800B6BC0  48 04 66 31 */	bl setLadderPos__9daAlink_cFi
/* 800B6BC4  7F C3 F3 78 */	mr r3, r30
/* 800B6BC8  38 80 00 01 */	li r4, 1
/* 800B6BCC  38 A0 00 00 */	li r5, 0
/* 800B6BD0  48 00 A7 0D */	bl deleteEquipItem__9daAlink_cFii
/* 800B6BD4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B6BD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 800B6BDC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B6BE0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800B6BE4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800B6BE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B6BEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6BF0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800B6BF4  38 80 00 02 */	li r4, 2
/* 800B6BF8  38 A0 00 01 */	li r5, 1
/* 800B6BFC  38 C1 00 08 */	addi r6, r1, 8
/* 800B6C00  4B FB 8E 25 */	bl StartShock__12dVibration_cFii4cXyz
/* 800B6C04  C0 0D 81 18 */	lfs f0, l_ladderAnmBaseTransY(r13)
/* 800B6C08  D0 1E 33 B0 */	stfs f0, 0x33b0(r30)
/* 800B6C0C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 800B6C10  C0 3E 33 C0 */	lfs f1, 0x33c0(r30)
/* 800B6C14  C0 02 93 E0 */	lfs f0, lit_11673(r2)
/* 800B6C18  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B6C1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800B6C20  40 81 00 18 */	ble lbl_800B6C38
/* 800B6C24  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800B6C28  7F C3 F3 78 */	mr r3, r30
/* 800B6C2C  38 80 00 01 */	li r4, 1
/* 800B6C30  48 04 6B F5 */	bl procLadderUpEndInit__9daAlink_cFi
/* 800B6C34  48 00 00 20 */	b lbl_800B6C54
lbl_800B6C38:
/* 800B6C38  7F C3 F3 78 */	mr r3, r30
/* 800B6C3C  38 80 00 01 */	li r4, 1
/* 800B6C40  38 A0 00 00 */	li r5, 0
/* 800B6C44  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 800B6C48  48 04 71 49 */	bl procLadderMoveInit__9daAlink_cFiiP4cXyz
/* 800B6C4C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B6C50  D0 1E 1F DC */	stfs f0, 0x1fdc(r30)
lbl_800B6C54:
/* 800B6C54  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 800B6C58  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800B6C5C  38 80 00 00 */	li r4, 0
/* 800B6C60  38 A0 00 23 */	li r5, 0x23
/* 800B6C64  4B F5 8B E5 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 800B6C68  38 60 00 01 */	li r3, 1
/* 800B6C6C  48 00 02 9C */	b lbl_800B6F08
lbl_800B6C70:
/* 800B6C70  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800B6C74  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800B6C78  40 82 02 8C */	bne lbl_800B6F04
/* 800B6C7C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B6C80  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6C84  40 82 01 6C */	bne lbl_800B6DF0
/* 800B6C88  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800B6C8C  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800B6C90  41 82 00 28 */	beq lbl_800B6CB8
/* 800B6C94  A8 7E 30 6E */	lha r3, 0x306e(r30)
/* 800B6C98  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800B6C9C  7C 03 00 50 */	subf r0, r3, r0
/* 800B6CA0  7C 03 07 34 */	extsh r3, r0
/* 800B6CA4  48 2A E4 2D */	bl abs
/* 800B6CA8  2C 03 78 00 */	cmpwi r3, 0x7800
/* 800B6CAC  40 80 00 0C */	bge lbl_800B6CB8
/* 800B6CB0  38 60 00 00 */	li r3, 0
/* 800B6CB4  48 00 02 54 */	b lbl_800B6F08
lbl_800B6CB8:
/* 800B6CB8  88 1E 2F 91 */	lbz r0, 0x2f91(r30)
/* 800B6CBC  28 00 00 03 */	cmplwi r0, 3
/* 800B6CC0  40 82 00 10 */	bne lbl_800B6CD0
/* 800B6CC4  7F C3 F3 78 */	mr r3, r30
/* 800B6CC8  48 04 74 4D */	bl setClimbInit__9daAlink_cFv
/* 800B6CCC  48 00 02 3C */	b lbl_800B6F08
lbl_800B6CD0:
/* 800B6CD0  28 00 00 04 */	cmplwi r0, 4
/* 800B6CD4  40 82 00 10 */	bne lbl_800B6CE4
/* 800B6CD8  7F C3 F3 78 */	mr r3, r30
/* 800B6CDC  48 04 62 A9 */	bl setLadderInit__9daAlink_cFv
/* 800B6CE0  48 00 02 28 */	b lbl_800B6F08
lbl_800B6CE4:
/* 800B6CE4  28 00 00 05 */	cmplwi r0, 5
/* 800B6CE8  40 82 01 34 */	bne lbl_800B6E1C
/* 800B6CEC  3B A0 00 00 */	li r29, 0
/* 800B6CF0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 800B6CF4  2C 00 00 04 */	cmpwi r0, 4
/* 800B6CF8  40 82 00 30 */	bne lbl_800B6D28
/* 800B6CFC  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800B6D00  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800B6D04  38 63 04 78 */	addi r3, r3, 0x478
/* 800B6D08  4B FE 6D 59 */	bl checkStageName__9daAlink_cFPCc
/* 800B6D0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B6D10  41 82 00 18 */	beq lbl_800B6D28
/* 800B6D14  3C 60 80 11 */	lis r3, daAlink_searchTagKandelaar__FP10fopAc_ac_cPv@ha
/* 800B6D18  38 63 06 54 */	addi r3, r3, daAlink_searchTagKandelaar__FP10fopAc_ac_cPv@l
/* 800B6D1C  38 80 00 00 */	li r4, 0
/* 800B6D20  4B F6 2A D9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800B6D24  7C 7D 1B 78 */	mr r29, r3
lbl_800B6D28:
/* 800B6D28  28 1D 00 00 */	cmplwi r29, 0
/* 800B6D2C  41 82 00 A0 */	beq lbl_800B6DCC
/* 800B6D30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B6D34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6D38  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 800B6D3C  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 800B6D40  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800B6D44  EF E1 00 28 */	fsubs f31, f1, f0
/* 800B6D48  7F A3 EB 78 */	mr r3, r29
/* 800B6D4C  4B F6 3C 19 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800B6D50  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 800B6D54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B6D58  40 80 00 68 */	bge lbl_800B6DC0
/* 800B6D5C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B6D60  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800B6D64  4C 40 13 82 */	cror 2, 0, 2
/* 800B6D68  40 82 00 58 */	bne lbl_800B6DC0
/* 800B6D6C  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 800B6D70  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B6D74  40 80 00 4C */	bge lbl_800B6DC0
/* 800B6D78  3B E0 00 00 */	li r31, 0
/* 800B6D7C  38 60 00 48 */	li r3, 0x48
/* 800B6D80  38 80 00 01 */	li r4, 1
/* 800B6D84  4B F7 45 25 */	bl dComIfGp_checkItemGet__FUci
/* 800B6D88  2C 03 00 00 */	cmpwi r3, 0
/* 800B6D8C  41 82 00 1C */	beq lbl_800B6DA8
/* 800B6D90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B6D94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B6D98  A0 03 00 08 */	lhz r0, 8(r3)
/* 800B6D9C  28 00 00 00 */	cmplwi r0, 0
/* 800B6DA0  41 82 00 08 */	beq lbl_800B6DA8
/* 800B6DA4  3B E0 00 01 */	li r31, 1
lbl_800B6DA8:
/* 800B6DA8  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 800B6DAC  20 64 00 01 */	subfic r3, r4, 1
/* 800B6DB0  30 03 FF FF */	addic r0, r3, -1
/* 800B6DB4  7C 00 19 10 */	subfe r0, r0, r3
/* 800B6DB8  90 1D 05 F8 */	stw r0, 0x5f8(r29)
/* 800B6DBC  48 00 00 08 */	b lbl_800B6DC4
lbl_800B6DC0:
/* 800B6DC0  38 80 00 01 */	li r4, 1
lbl_800B6DC4:
/* 800B6DC4  2C 04 00 00 */	cmpwi r4, 0
/* 800B6DC8  41 82 00 10 */	beq lbl_800B6DD8
lbl_800B6DCC:
/* 800B6DCC  7F C3 F3 78 */	mr r3, r30
/* 800B6DD0  48 04 6B FD */	bl procLadderDownStartInit__9daAlink_cFv
/* 800B6DD4  48 00 01 34 */	b lbl_800B6F08
lbl_800B6DD8:
/* 800B6DD8  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800B6DDC  64 00 00 40 */	oris r0, r0, 0x40
/* 800B6DE0  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 800B6DE4  7F C3 F3 78 */	mr r3, r30
/* 800B6DE8  48 00 C5 D1 */	bl procWaitInit__9daAlink_cFv
/* 800B6DEC  48 00 01 1C */	b lbl_800B6F08
lbl_800B6DF0:
/* 800B6DF0  28 03 00 00 */	cmplwi r3, 0
/* 800B6DF4  40 82 00 28 */	bne lbl_800B6E1C
/* 800B6DF8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800B6DFC  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800B6E00  7C 03 00 50 */	subf r0, r3, r0
/* 800B6E04  7C 03 07 34 */	extsh r3, r0
/* 800B6E08  4B FF C6 8D */	bl getDirectionFromAngle__9daAlink_cFs
/* 800B6E0C  2C 03 00 00 */	cmpwi r3, 0
/* 800B6E10  41 82 00 0C */	beq lbl_800B6E1C
/* 800B6E14  38 60 00 00 */	li r3, 0
/* 800B6E18  48 00 00 F0 */	b lbl_800B6F08
lbl_800B6E1C:
/* 800B6E1C  38 1F 00 01 */	addi r0, r31, 1
/* 800B6E20  B0 1E 30 78 */	sth r0, 0x3078(r30)
/* 800B6E24  88 BE 2F 91 */	lbz r5, 0x2f91(r30)
/* 800B6E28  28 05 00 06 */	cmplwi r5, 6
/* 800B6E2C  40 82 00 3C */	bne lbl_800B6E68
/* 800B6E30  A8 9E 30 78 */	lha r4, 0x3078(r30)
/* 800B6E34  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wallHang_c0@ha
/* 800B6E38  A8 03 E1 F4 */	lha r0, m__22daAlinkHIO_wallHang_c0@l(r3)
/* 800B6E3C  7C 04 00 00 */	cmpw r4, r0
/* 800B6E40  40 81 00 C4 */	ble lbl_800B6F04
/* 800B6E44  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B6E48  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6E4C  41 82 00 10 */	beq lbl_800B6E5C
/* 800B6E50  7F C3 F3 78 */	mr r3, r30
/* 800B6E54  48 07 85 C9 */	bl procWolfStepMoveInit__9daAlink_cFv
/* 800B6E58  48 00 00 B0 */	b lbl_800B6F08
lbl_800B6E5C:
/* 800B6E5C  7F C3 F3 78 */	mr r3, r30
/* 800B6E60  48 01 06 75 */	bl procStepMoveInit__9daAlink_cFv
/* 800B6E64  48 00 00 A4 */	b lbl_800B6F08
lbl_800B6E68:
/* 800B6E68  28 05 00 07 */	cmplwi r5, 7
/* 800B6E6C  41 82 00 14 */	beq lbl_800B6E80
/* 800B6E70  28 05 00 08 */	cmplwi r5, 8
/* 800B6E74  41 82 00 0C */	beq lbl_800B6E80
/* 800B6E78  28 05 00 09 */	cmplwi r5, 9
/* 800B6E7C  40 82 00 80 */	bne lbl_800B6EFC
lbl_800B6E80:
/* 800B6E80  A8 9E 30 78 */	lha r4, 0x3078(r30)
/* 800B6E84  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wallHang_c0@ha
/* 800B6E88  38 63 E1 F4 */	addi r3, r3, m__22daAlinkHIO_wallHang_c0@l
/* 800B6E8C  A8 03 00 02 */	lha r0, 2(r3)
/* 800B6E90  7C 04 00 00 */	cmpw r4, r0
/* 800B6E94  40 81 00 70 */	ble lbl_800B6F04
/* 800B6E98  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B6E9C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6EA0  41 82 00 3C */	beq lbl_800B6EDC
/* 800B6EA4  28 05 00 07 */	cmplwi r5, 7
/* 800B6EA8  41 82 00 0C */	beq lbl_800B6EB4
/* 800B6EAC  28 05 00 08 */	cmplwi r5, 8
/* 800B6EB0  40 82 00 54 */	bne lbl_800B6F04
lbl_800B6EB4:
/* 800B6EB4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800B6EB8  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B6EBC  41 82 00 14 */	beq lbl_800B6ED0
/* 800B6EC0  7F C3 F3 78 */	mr r3, r30
/* 800B6EC4  38 80 00 07 */	li r4, 7
/* 800B6EC8  48 07 E8 29 */	bl procWolfHangWallCatchInit__9daAlink_cFi
/* 800B6ECC  48 00 00 3C */	b lbl_800B6F08
lbl_800B6ED0:
/* 800B6ED0  7F C3 F3 78 */	mr r3, r30
/* 800B6ED4  48 07 E7 19 */	bl procWolfHangReadyInit__9daAlink_cFv
/* 800B6ED8  48 00 00 30 */	b lbl_800B6F08
lbl_800B6EDC:
/* 800B6EDC  28 05 00 07 */	cmplwi r5, 7
/* 800B6EE0  40 82 00 10 */	bne lbl_800B6EF0
/* 800B6EE4  7F C3 F3 78 */	mr r3, r30
/* 800B6EE8  48 04 4F 1D */	bl procHangWallCatchInit__9daAlink_cFv
/* 800B6EEC  48 00 00 1C */	b lbl_800B6F08
lbl_800B6EF0:
/* 800B6EF0  7F C3 F3 78 */	mr r3, r30
/* 800B6EF4  48 04 52 85 */	bl procHangReadyInit__9daAlink_cFv
/* 800B6EF8  48 00 00 10 */	b lbl_800B6F08
lbl_800B6EFC:
/* 800B6EFC  38 00 00 00 */	li r0, 0
/* 800B6F00  B0 1E 30 78 */	sth r0, 0x3078(r30)
lbl_800B6F04:
/* 800B6F04  38 60 00 00 */	li r3, 0
lbl_800B6F08:
/* 800B6F08  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 800B6F0C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800B6F10  39 61 00 50 */	addi r11, r1, 0x50
/* 800B6F14  48 2A B3 15 */	bl _restgpr_29
/* 800B6F18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800B6F1C  7C 08 03 A6 */	mtlr r0
/* 800B6F20  38 21 00 60 */	addi r1, r1, 0x60
/* 800B6F24  4E 80 00 20 */	blr 
