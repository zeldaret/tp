lbl_805098E4:
/* 805098E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805098E8  7C 08 02 A6 */	mflr r0
/* 805098EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805098F0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805098F4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805098F8  39 61 00 40 */	addi r11, r1, 0x40
/* 805098FC  4B E5 88 D5 */	bl _savegpr_26
/* 80509900  7C 7C 1B 78 */	mr r28, r3
/* 80509904  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 80509908  3B C3 85 84 */	addi r30, r3, lit_4208@l /* 0x80518584@l */
/* 8050990C  80 1C 09 8C */	lwz r0, 0x98c(r28)
/* 80509910  90 01 00 08 */	stw r0, 8(r1)
/* 80509914  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80509918  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8050991C  38 81 00 08 */	addi r4, r1, 8
/* 80509920  4B B0 FE D9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80509924  7C 7D 1B 79 */	or. r29, r3, r3
/* 80509928  40 82 00 10 */	bne lbl_80509938
/* 8050992C  7F 83 E3 78 */	mr r3, r28
/* 80509930  4B B1 03 4D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80509934  48 00 0A 98 */	b lbl_8050A3CC
lbl_80509938:
/* 80509938  88 1D 17 E1 */	lbz r0, 0x17e1(r29)
/* 8050993C  28 00 00 00 */	cmplwi r0, 0
/* 80509940  41 82 00 0C */	beq lbl_8050994C
/* 80509944  7F 83 E3 78 */	mr r3, r28
/* 80509948  4B B0 FF 7D */	bl fopAcM_setStageLayer__FPv
lbl_8050994C:
/* 8050994C  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 80509950  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80509954  40 82 00 10 */	bne lbl_80509964
/* 80509958  7F 83 E3 78 */	mr r3, r28
/* 8050995C  4B B1 03 21 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80509960  48 00 0A 6C */	b lbl_8050A3CC
lbl_80509964:
/* 80509964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80509968  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050996C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80509970  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80509974  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80509978  7D 89 03 A6 */	mtctr r12
/* 8050997C  4E 80 04 21 */	bctrl 
/* 80509980  28 03 00 00 */	cmplwi r3, 0
/* 80509984  41 82 00 58 */	beq lbl_805099DC
/* 80509988  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050998C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80509990  3B 63 56 B8 */	addi r27, r3, 0x56b8
/* 80509994  3B 40 00 01 */	li r26, 1
/* 80509998  7F 63 DB 78 */	mr r3, r27
/* 8050999C  4B B6 9E 49 */	bl LockonTruth__12dAttention_cFv
/* 805099A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805099A4  40 82 00 14 */	bne lbl_805099B8
/* 805099A8  80 1B 03 34 */	lwz r0, 0x334(r27)
/* 805099AC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 805099B0  40 82 00 08 */	bne lbl_805099B8
/* 805099B4  3B 40 00 00 */	li r26, 0
lbl_805099B8:
/* 805099B8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 805099BC  41 82 00 20 */	beq lbl_805099DC
/* 805099C0  7F 63 DB 78 */	mr r3, r27
/* 805099C4  38 80 00 00 */	li r4, 0
/* 805099C8  4B B6 9B 75 */	bl LockonTarget__12dAttention_cFl
/* 805099CC  7C 1C 18 40 */	cmplw r28, r3
/* 805099D0  40 82 00 0C */	bne lbl_805099DC
/* 805099D4  38 00 00 01 */	li r0, 1
/* 805099D8  98 1D 06 C0 */	stb r0, 0x6c0(r29)
lbl_805099DC:
/* 805099DC  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 805099E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805099E4  40 82 00 88 */	bne lbl_80509A6C
/* 805099E8  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 805099EC  2C 00 00 07 */	cmpwi r0, 7
/* 805099F0  40 82 00 7C */	bne lbl_80509A6C
/* 805099F4  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 805099F8  2C 00 00 28 */	cmpwi r0, 0x28
/* 805099FC  41 82 00 70 */	beq lbl_80509A6C
/* 80509A00  7F 83 E3 78 */	mr r3, r28
/* 80509A04  38 80 00 27 */	li r4, 0x27
/* 80509A08  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509A0C  38 A0 00 02 */	li r5, 2
/* 80509A10  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509A14  4B FF B1 C1 */	bl anm_init__FP10e_rd_classifUcf
/* 80509A18  38 00 00 28 */	li r0, 0x28
/* 80509A1C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80509A20  80 1C 06 98 */	lwz r0, 0x698(r28)
/* 80509A24  28 00 00 00 */	cmplwi r0, 0
/* 80509A28  41 82 00 44 */	beq lbl_80509A6C
/* 80509A2C  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 80509A30  38 80 00 0A */	li r4, 0xa
/* 80509A34  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80509A38  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80509A3C  3C A5 00 02 */	addis r5, r5, 2
/* 80509A40  38 C0 00 80 */	li r6, 0x80
/* 80509A44  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80509A48  4B B3 28 A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80509A4C  7C 64 1B 78 */	mr r4, r3
/* 80509A50  80 7C 06 98 */	lwz r3, 0x698(r28)
/* 80509A54  38 A0 00 00 */	li r5, 0
/* 80509A58  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80509A5C  FC 40 08 90 */	fmr f2, f1
/* 80509A60  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80509A64  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 80509A68  4B B0 74 09 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80509A6C:
/* 80509A6C  7F 83 E3 78 */	mr r3, r28
/* 80509A70  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80509A74  4B B1 0E F1 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80509A78  FF E0 08 90 */	fmr f31, f1
/* 80509A7C  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80509A80  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80509A84  FC 00 00 1E */	fctiwz f0, f0
/* 80509A88  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80509A8C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80509A90  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 80509A94  28 00 00 32 */	cmplwi r0, 0x32
/* 80509A98  41 81 08 F4 */	bgt lbl_8050A38C
/* 80509A9C  3C 60 80 52 */	lis r3, lit_6656@ha /* 0x80518AC0@ha */
/* 80509AA0  38 63 8A C0 */	addi r3, r3, lit_6656@l /* 0x80518AC0@l */
/* 80509AA4  54 00 10 3A */	slwi r0, r0, 2
/* 80509AA8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80509AAC  7C 09 03 A6 */	mtctr r0
/* 80509AB0  4E 80 04 20 */	bctr 
lbl_80509AB4:
/* 80509AB4  A0 7D 06 BE */	lhz r3, 0x6be(r29)
/* 80509AB8  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80509ABC  41 82 00 70 */	beq lbl_80509B2C
/* 80509AC0  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 80509AC4  2C 00 00 01 */	cmpwi r0, 1
/* 80509AC8  40 82 00 48 */	bne lbl_80509B10
/* 80509ACC  A8 1D 06 D0 */	lha r0, 0x6d0(r29)
/* 80509AD0  2C 00 00 00 */	cmpwi r0, 0
/* 80509AD4  40 80 00 20 */	bge lbl_80509AF4
/* 80509AD8  7F 83 E3 78 */	mr r3, r28
/* 80509ADC  38 80 00 2E */	li r4, 0x2e
/* 80509AE0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80509AE4  38 A0 00 02 */	li r5, 2
/* 80509AE8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509AEC  4B FF B0 E9 */	bl anm_init__FP10e_rd_classifUcf
/* 80509AF0  48 00 01 3C */	b lbl_80509C2C
lbl_80509AF4:
/* 80509AF4  7F 83 E3 78 */	mr r3, r28
/* 80509AF8  38 80 00 30 */	li r4, 0x30
/* 80509AFC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80509B00  38 A0 00 02 */	li r5, 2
/* 80509B04  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509B08  4B FF B0 CD */	bl anm_init__FP10e_rd_classifUcf
/* 80509B0C  48 00 01 20 */	b lbl_80509C2C
lbl_80509B10:
/* 80509B10  7F 83 E3 78 */	mr r3, r28
/* 80509B14  38 80 00 2D */	li r4, 0x2d
/* 80509B18  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80509B1C  38 A0 00 02 */	li r5, 2
/* 80509B20  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509B24  4B FF B0 B1 */	bl anm_init__FP10e_rd_classifUcf
/* 80509B28  48 00 01 04 */	b lbl_80509C2C
lbl_80509B2C:
/* 80509B2C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80509B30  41 82 00 68 */	beq lbl_80509B98
/* 80509B34  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 80509B38  2C 00 00 01 */	cmpwi r0, 1
/* 80509B3C  40 82 00 20 */	bne lbl_80509B5C
/* 80509B40  7F 83 E3 78 */	mr r3, r28
/* 80509B44  38 80 00 24 */	li r4, 0x24
/* 80509B48  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80509B4C  38 A0 00 00 */	li r5, 0
/* 80509B50  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509B54  4B FF B0 81 */	bl anm_init__FP10e_rd_classifUcf
/* 80509B58  48 00 00 1C */	b lbl_80509B74
lbl_80509B5C:
/* 80509B5C  7F 83 E3 78 */	mr r3, r28
/* 80509B60  38 80 00 25 */	li r4, 0x25
/* 80509B64  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80509B68  38 A0 00 00 */	li r5, 0
/* 80509B6C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509B70  4B FF B0 65 */	bl anm_init__FP10e_rd_classifUcf
lbl_80509B74:
/* 80509B74  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80509B78  4B D5 DD DD */	bl cM_rndF__Ff
/* 80509B7C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80509B80  EC 00 08 2A */	fadds f0, f0, f1
/* 80509B84  FC 00 00 1E */	fctiwz f0, f0
/* 80509B88  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80509B8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80509B90  B0 1C 09 92 */	sth r0, 0x992(r28)
/* 80509B94  48 00 00 98 */	b lbl_80509C2C
lbl_80509B98:
/* 80509B98  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80509B9C  41 82 00 48 */	beq lbl_80509BE4
/* 80509BA0  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 80509BA4  2C 00 00 01 */	cmpwi r0, 1
/* 80509BA8  40 82 00 20 */	bne lbl_80509BC8
/* 80509BAC  7F 83 E3 78 */	mr r3, r28
/* 80509BB0  38 80 00 26 */	li r4, 0x26
/* 80509BB4  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509BB8  38 A0 00 02 */	li r5, 2
/* 80509BBC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509BC0  4B FF B0 15 */	bl anm_init__FP10e_rd_classifUcf
/* 80509BC4  48 00 00 68 */	b lbl_80509C2C
lbl_80509BC8:
/* 80509BC8  7F 83 E3 78 */	mr r3, r28
/* 80509BCC  38 80 00 28 */	li r4, 0x28
/* 80509BD0  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509BD4  38 A0 00 02 */	li r5, 2
/* 80509BD8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509BDC  4B FF AF F9 */	bl anm_init__FP10e_rd_classifUcf
/* 80509BE0  48 00 00 4C */	b lbl_80509C2C
lbl_80509BE4:
/* 80509BE4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80509BE8  41 82 00 44 */	beq lbl_80509C2C
/* 80509BEC  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 80509BF0  2C 00 00 01 */	cmpwi r0, 1
/* 80509BF4  40 82 00 20 */	bne lbl_80509C14
/* 80509BF8  7F 83 E3 78 */	mr r3, r28
/* 80509BFC  38 80 00 34 */	li r4, 0x34
/* 80509C00  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509C04  38 A0 00 02 */	li r5, 2
/* 80509C08  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509C0C  4B FF AF C9 */	bl anm_init__FP10e_rd_classifUcf
/* 80509C10  48 00 00 1C */	b lbl_80509C2C
lbl_80509C14:
/* 80509C14  7F 83 E3 78 */	mr r3, r28
/* 80509C18  38 80 00 35 */	li r4, 0x35
/* 80509C1C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509C20  38 A0 00 02 */	li r5, 2
/* 80509C24  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509C28  4B FF AF AD */	bl anm_init__FP10e_rd_classifUcf
lbl_80509C2C:
/* 80509C2C  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 80509C30  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80509C34  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80509C38  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80509C3C  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 80509C40  2C 00 00 01 */	cmpwi r0, 1
/* 80509C44  40 82 00 10 */	bne lbl_80509C54
/* 80509C48  38 00 00 02 */	li r0, 2
/* 80509C4C  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 80509C50  48 00 07 3C */	b lbl_8050A38C
lbl_80509C54:
/* 80509C54  38 00 00 01 */	li r0, 1
/* 80509C58  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 80509C5C  88 7C 05 BC */	lbz r3, 0x5bc(r28)
/* 80509C60  28 03 00 01 */	cmplwi r3, 1
/* 80509C64  40 82 00 D8 */	bne lbl_80509D3C
/* 80509C68  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80509C6C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80509C70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80509C74  40 81 00 C8 */	ble lbl_80509D3C
/* 80509C78  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 80509C7C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80509C80  40 80 07 0C */	bge lbl_8050A38C
/* 80509C84  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80509C88  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80509C8C  40 80 07 00 */	bge lbl_8050A38C
/* 80509C90  A8 1C 09 94 */	lha r0, 0x994(r28)
/* 80509C94  2C 00 00 00 */	cmpwi r0, 0
/* 80509C98  40 82 06 F4 */	bne lbl_8050A38C
/* 80509C9C  A8 7C 09 7C */	lha r3, 0x97c(r28)
/* 80509CA0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80509CA4  7C 03 00 50 */	subf r0, r3, r0
/* 80509CA8  7C 00 07 34 */	extsh r0, r0
/* 80509CAC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80509CB0  40 81 00 18 */	ble lbl_80509CC8
/* 80509CB4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80509CB8  40 80 00 10 */	bge lbl_80509CC8
/* 80509CBC  38 00 00 0A */	li r0, 0xa
/* 80509CC0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80509CC4  48 00 00 1C */	b lbl_80509CE0
lbl_80509CC8:
/* 80509CC8  2C 00 F0 00 */	cmpwi r0, -4096
/* 80509CCC  40 80 00 14 */	bge lbl_80509CE0
/* 80509CD0  2C 00 C0 00 */	cmpwi r0, -16384
/* 80509CD4  40 81 00 0C */	ble lbl_80509CE0
/* 80509CD8  38 00 00 14 */	li r0, 0x14
/* 80509CDC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80509CE0:
/* 80509CE0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80509CE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80509CE8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80509CEC  7D 89 03 A6 */	mtctr r12
/* 80509CF0  4E 80 04 21 */	bctrl 
/* 80509CF4  28 03 00 00 */	cmplwi r3, 0
/* 80509CF8  41 82 06 94 */	beq lbl_8050A38C
/* 80509CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80509D00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80509D04  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80509D08  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 80509D0C  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80509D10  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80509D14  4C 41 13 82 */	cror 2, 1, 2
/* 80509D18  40 82 06 74 */	bne lbl_8050A38C
/* 80509D1C  4B D5 DC 39 */	bl cM_rndF__Ff
/* 80509D20  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80509D24  EC 00 08 2A */	fadds f0, f0, f1
/* 80509D28  FC 00 00 1E */	fctiwz f0, f0
/* 80509D2C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80509D30  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80509D34  B0 1C 09 94 */	sth r0, 0x994(r28)
/* 80509D38  48 00 06 54 */	b lbl_8050A38C
lbl_80509D3C:
/* 80509D3C  A8 1C 09 92 */	lha r0, 0x992(r28)
/* 80509D40  2C 00 00 00 */	cmpwi r0, 0
/* 80509D44  40 82 06 48 */	bne lbl_8050A38C
/* 80509D48  28 03 00 02 */	cmplwi r3, 2
/* 80509D4C  41 80 06 40 */	blt lbl_8050A38C
/* 80509D50  7F 83 E3 78 */	mr r3, r28
/* 80509D54  38 80 00 2A */	li r4, 0x2a
/* 80509D58  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509D5C  38 A0 00 00 */	li r5, 0
/* 80509D60  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509D64  4B FF AE 71 */	bl anm_init__FP10e_rd_classifUcf
/* 80509D68  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 80509D6C  38 80 00 08 */	li r4, 8
/* 80509D70  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80509D74  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80509D78  3C A5 00 02 */	addis r5, r5, 2
/* 80509D7C  38 C0 00 80 */	li r6, 0x80
/* 80509D80  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80509D84  4B B3 25 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80509D88  7C 64 1B 78 */	mr r4, r3
/* 80509D8C  80 7C 06 98 */	lwz r3, 0x698(r28)
/* 80509D90  38 A0 00 00 */	li r5, 0
/* 80509D94  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509D98  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509D9C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80509DA0  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 80509DA4  4B B0 70 CD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80509DA8  38 00 00 1E */	li r0, 0x1e
/* 80509DAC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80509DB0  48 00 05 DC */	b lbl_8050A38C
lbl_80509DB4:
/* 80509DB4  7F 83 E3 78 */	mr r3, r28
/* 80509DB8  38 80 00 1F */	li r4, 0x1f
/* 80509DBC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80509DC0  38 A0 00 02 */	li r5, 2
/* 80509DC4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509DC8  4B FF AE 0D */	bl anm_init__FP10e_rd_classifUcf
/* 80509DCC  38 00 00 0B */	li r0, 0xb
/* 80509DD0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80509DD4:
/* 80509DD4  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80509DD8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80509DDC  40 81 00 50 */	ble lbl_80509E2C
/* 80509DE0  38 00 00 00 */	li r0, 0
/* 80509DE4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80509DE8  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 80509DEC  2C 00 00 01 */	cmpwi r0, 1
/* 80509DF0  40 82 00 20 */	bne lbl_80509E10
/* 80509DF4  7F 83 E3 78 */	mr r3, r28
/* 80509DF8  38 80 00 26 */	li r4, 0x26
/* 80509DFC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80509E00  38 A0 00 02 */	li r5, 2
/* 80509E04  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509E08  4B FF AD CD */	bl anm_init__FP10e_rd_classifUcf
/* 80509E0C  48 00 05 80 */	b lbl_8050A38C
lbl_80509E10:
/* 80509E10  7F 83 E3 78 */	mr r3, r28
/* 80509E14  38 80 00 28 */	li r4, 0x28
/* 80509E18  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80509E1C  38 A0 00 02 */	li r5, 2
/* 80509E20  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509E24  4B FF AD B1 */	bl anm_init__FP10e_rd_classifUcf
/* 80509E28  48 00 05 64 */	b lbl_8050A38C
lbl_80509E2C:
/* 80509E2C  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80509E30  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80509E34  40 80 05 58 */	bge lbl_8050A38C
/* 80509E38  A8 1C 09 94 */	lha r0, 0x994(r28)
/* 80509E3C  2C 00 00 00 */	cmpwi r0, 0
/* 80509E40  40 82 05 4C */	bne lbl_8050A38C
/* 80509E44  38 00 00 19 */	li r0, 0x19
/* 80509E48  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80509E4C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80509E50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80509E54  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80509E58  7D 89 03 A6 */	mtctr r12
/* 80509E5C  4E 80 04 21 */	bctrl 
/* 80509E60  28 03 00 00 */	cmplwi r3, 0
/* 80509E64  41 82 00 20 */	beq lbl_80509E84
/* 80509E68  7F 83 E3 78 */	mr r3, r28
/* 80509E6C  38 80 00 22 */	li r4, 0x22
/* 80509E70  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509E74  38 A0 00 00 */	li r5, 0
/* 80509E78  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509E7C  4B FF AD 59 */	bl anm_init__FP10e_rd_classifUcf
/* 80509E80  48 00 05 0C */	b lbl_8050A38C
lbl_80509E84:
/* 80509E84  7F 83 E3 78 */	mr r3, r28
/* 80509E88  38 80 00 1E */	li r4, 0x1e
/* 80509E8C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509E90  38 A0 00 00 */	li r5, 0
/* 80509E94  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509E98  4B FF AD 3D */	bl anm_init__FP10e_rd_classifUcf
/* 80509E9C  48 00 04 F0 */	b lbl_8050A38C
lbl_80509EA0:
/* 80509EA0  7F 83 E3 78 */	mr r3, r28
/* 80509EA4  38 80 00 21 */	li r4, 0x21
/* 80509EA8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80509EAC  38 A0 00 02 */	li r5, 2
/* 80509EB0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509EB4  4B FF AD 21 */	bl anm_init__FP10e_rd_classifUcf
/* 80509EB8  38 00 00 15 */	li r0, 0x15
/* 80509EBC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80509EC0:
/* 80509EC0  38 00 00 01 */	li r0, 1
/* 80509EC4  98 1C 09 AB */	stb r0, 0x9ab(r28)
/* 80509EC8  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80509ECC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80509ED0  40 81 00 50 */	ble lbl_80509F20
/* 80509ED4  38 00 00 00 */	li r0, 0
/* 80509ED8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80509EDC  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 80509EE0  2C 00 00 01 */	cmpwi r0, 1
/* 80509EE4  40 82 00 20 */	bne lbl_80509F04
/* 80509EE8  7F 83 E3 78 */	mr r3, r28
/* 80509EEC  38 80 00 26 */	li r4, 0x26
/* 80509EF0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80509EF4  38 A0 00 02 */	li r5, 2
/* 80509EF8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509EFC  4B FF AC D9 */	bl anm_init__FP10e_rd_classifUcf
/* 80509F00  48 00 04 8C */	b lbl_8050A38C
lbl_80509F04:
/* 80509F04  7F 83 E3 78 */	mr r3, r28
/* 80509F08  38 80 00 28 */	li r4, 0x28
/* 80509F0C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80509F10  38 A0 00 02 */	li r5, 2
/* 80509F14  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509F18  4B FF AC BD */	bl anm_init__FP10e_rd_classifUcf
/* 80509F1C  48 00 04 70 */	b lbl_8050A38C
lbl_80509F20:
/* 80509F20  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80509F24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80509F28  40 80 04 64 */	bge lbl_8050A38C
/* 80509F2C  A8 1C 09 94 */	lha r0, 0x994(r28)
/* 80509F30  2C 00 00 00 */	cmpwi r0, 0
/* 80509F34  40 82 04 58 */	bne lbl_8050A38C
/* 80509F38  38 00 00 19 */	li r0, 0x19
/* 80509F3C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80509F40  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80509F44  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80509F48  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80509F4C  7D 89 03 A6 */	mtctr r12
/* 80509F50  4E 80 04 21 */	bctrl 
/* 80509F54  28 03 00 00 */	cmplwi r3, 0
/* 80509F58  41 82 00 20 */	beq lbl_80509F78
/* 80509F5C  7F 83 E3 78 */	mr r3, r28
/* 80509F60  38 80 00 23 */	li r4, 0x23
/* 80509F64  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509F68  38 A0 00 00 */	li r5, 0
/* 80509F6C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509F70  4B FF AC 65 */	bl anm_init__FP10e_rd_classifUcf
/* 80509F74  48 00 04 18 */	b lbl_8050A38C
lbl_80509F78:
/* 80509F78  7F 83 E3 78 */	mr r3, r28
/* 80509F7C  38 80 00 20 */	li r4, 0x20
/* 80509F80  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80509F84  38 A0 00 00 */	li r5, 0
/* 80509F88  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80509F8C  4B FF AC 49 */	bl anm_init__FP10e_rd_classifUcf
/* 80509F90  48 00 03 FC */	b lbl_8050A38C
lbl_80509F94:
/* 80509F94  2C 04 00 17 */	cmpwi r4, 0x17
/* 80509F98  41 81 00 0C */	bgt lbl_80509FA4
/* 80509F9C  38 00 00 01 */	li r0, 1
/* 80509FA0  98 1C 09 AB */	stb r0, 0x9ab(r28)
lbl_80509FA4:
/* 80509FA4  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80509FA8  38 63 00 0C */	addi r3, r3, 0xc
/* 80509FAC  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80509FB0  4B E1 E4 7D */	bl checkPass__12J3DFrameCtrlFf
/* 80509FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80509FB8  41 82 00 30 */	beq lbl_80509FE8
/* 80509FBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070012@ha */
/* 80509FC0  38 03 00 12 */	addi r0, r3, 0x0012 /* 0x00070012@l */
/* 80509FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80509FC8  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 80509FCC  38 81 00 14 */	addi r4, r1, 0x14
/* 80509FD0  38 A0 00 00 */	li r5, 0
/* 80509FD4  38 C0 FF FF */	li r6, -1
/* 80509FD8  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 80509FDC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80509FE0  7D 89 03 A6 */	mtctr r12
/* 80509FE4  4E 80 04 21 */	bctrl 
lbl_80509FE8:
/* 80509FE8  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80509FEC  38 80 00 01 */	li r4, 1
/* 80509FF0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80509FF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80509FF8  40 82 00 18 */	bne lbl_8050A010
/* 80509FFC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050A000  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050A004  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050A008  41 82 00 08 */	beq lbl_8050A010
/* 8050A00C  38 80 00 00 */	li r4, 0
lbl_8050A010:
/* 8050A010  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050A014  41 82 03 78 */	beq lbl_8050A38C
/* 8050A018  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 8050A01C  2C 00 00 01 */	cmpwi r0, 1
/* 8050A020  40 82 00 20 */	bne lbl_8050A040
/* 8050A024  7F 83 E3 78 */	mr r3, r28
/* 8050A028  38 80 00 26 */	li r4, 0x26
/* 8050A02C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050A030  38 A0 00 02 */	li r5, 2
/* 8050A034  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A038  4B FF AB 9D */	bl anm_init__FP10e_rd_classifUcf
/* 8050A03C  48 00 00 3C */	b lbl_8050A078
lbl_8050A040:
/* 8050A040  7F 83 E3 78 */	mr r3, r28
/* 8050A044  38 80 00 28 */	li r4, 0x28
/* 8050A048  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050A04C  38 A0 00 02 */	li r5, 2
/* 8050A050  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A054  4B FF AB 81 */	bl anm_init__FP10e_rd_classifUcf
/* 8050A058  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8050A05C  4B D5 D8 F9 */	bl cM_rndF__Ff
/* 8050A060  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8050A064  EC 00 08 2A */	fadds f0, f0, f1
/* 8050A068  FC 00 00 1E */	fctiwz f0, f0
/* 8050A06C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050A070  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8050A074  B0 1C 09 94 */	sth r0, 0x994(r28)
lbl_8050A078:
/* 8050A078  38 00 00 00 */	li r0, 0
/* 8050A07C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050A080  48 00 03 0C */	b lbl_8050A38C
lbl_8050A084:
/* 8050A084  38 00 00 03 */	li r0, 3
/* 8050A088  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 8050A08C  2C 04 00 0E */	cmpwi r4, 0xe
/* 8050A090  40 82 00 2C */	bne lbl_8050A0BC
/* 8050A094  3C 00 00 08 */	lis r0, 8
/* 8050A098  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050A09C  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050A0A0  38 81 00 10 */	addi r4, r1, 0x10
/* 8050A0A4  38 A0 00 00 */	li r5, 0
/* 8050A0A8  38 C0 FF FF */	li r6, -1
/* 8050A0AC  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050A0B0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8050A0B4  7D 89 03 A6 */	mtctr r12
/* 8050A0B8  4E 80 04 21 */	bctrl 
lbl_8050A0BC:
/* 8050A0BC  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050A0C0  38 80 00 01 */	li r4, 1
/* 8050A0C4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050A0C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050A0CC  40 82 00 18 */	bne lbl_8050A0E4
/* 8050A0D0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050A0D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050A0D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050A0DC  41 82 00 08 */	beq lbl_8050A0E4
/* 8050A0E0  38 80 00 00 */	li r4, 0
lbl_8050A0E4:
/* 8050A0E4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050A0E8  41 82 00 24 */	beq lbl_8050A10C
/* 8050A0EC  38 00 00 1F */	li r0, 0x1f
/* 8050A0F0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050A0F4  7F 83 E3 78 */	mr r3, r28
/* 8050A0F8  38 80 00 2B */	li r4, 0x2b
/* 8050A0FC  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 8050A100  38 A0 00 02 */	li r5, 2
/* 8050A104  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A108  4B FF AA CD */	bl anm_init__FP10e_rd_classifUcf
lbl_8050A10C:
/* 8050A10C  38 00 00 01 */	li r0, 1
/* 8050A110  98 1C 09 A2 */	stb r0, 0x9a2(r28)
/* 8050A114  48 00 02 78 */	b lbl_8050A38C
lbl_8050A118:
/* 8050A118  38 00 00 03 */	li r0, 3
/* 8050A11C  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 8050A120  A8 1C 09 92 */	lha r0, 0x992(r28)
/* 8050A124  2C 00 00 00 */	cmpwi r0, 0
/* 8050A128  40 82 00 9C */	bne lbl_8050A1C4
/* 8050A12C  C0 3C 09 78 */	lfs f1, 0x978(r28)
/* 8050A130  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x80519194@ha */
/* 8050A134  38 63 91 94 */	addi r3, r3, l_HIO@l /* 0x80519194@l */
/* 8050A138  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8050A13C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050A140  40 80 00 84 */	bge lbl_8050A1C4
/* 8050A144  88 1C 09 A4 */	lbz r0, 0x9a4(r28)
/* 8050A148  7C 00 07 75 */	extsb. r0, r0
/* 8050A14C  40 82 00 78 */	bne lbl_8050A1C4
/* 8050A150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050A154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050A158  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8050A15C  28 00 00 00 */	cmplwi r0, 0
/* 8050A160  40 82 00 64 */	bne lbl_8050A1C4
/* 8050A164  7F 83 E3 78 */	mr r3, r28
/* 8050A168  38 80 00 29 */	li r4, 0x29
/* 8050A16C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8050A170  38 A0 00 00 */	li r5, 0
/* 8050A174  FC 40 08 90 */	fmr f2, f1
/* 8050A178  4B FF AA 5D */	bl anm_init__FP10e_rd_classifUcf
/* 8050A17C  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 8050A180  38 80 00 0A */	li r4, 0xa
/* 8050A184  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050A188  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050A18C  3C A5 00 02 */	addis r5, r5, 2
/* 8050A190  38 C0 00 80 */	li r6, 0x80
/* 8050A194  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8050A198  4B B3 21 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8050A19C  7C 64 1B 78 */	mr r4, r3
/* 8050A1A0  80 7C 06 98 */	lwz r3, 0x698(r28)
/* 8050A1A4  38 A0 00 00 */	li r5, 0
/* 8050A1A8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8050A1AC  FC 40 08 90 */	fmr f2, f1
/* 8050A1B0  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8050A1B4  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 8050A1B8  4B B0 6C B9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8050A1BC  38 00 00 20 */	li r0, 0x20
/* 8050A1C0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_8050A1C4:
/* 8050A1C4  38 00 00 01 */	li r0, 1
/* 8050A1C8  98 1C 09 A2 */	stb r0, 0x9a2(r28)
/* 8050A1CC  48 00 01 C0 */	b lbl_8050A38C
lbl_8050A1D0:
/* 8050A1D0  2C 04 00 03 */	cmpwi r4, 3
/* 8050A1D4  41 81 00 0C */	bgt lbl_8050A1E0
/* 8050A1D8  38 00 00 01 */	li r0, 1
/* 8050A1DC  98 1C 09 A2 */	stb r0, 0x9a2(r28)
lbl_8050A1E0:
/* 8050A1E0  2C 04 00 02 */	cmpwi r4, 2
/* 8050A1E4  40 82 00 0C */	bne lbl_8050A1F0
/* 8050A1E8  38 00 00 01 */	li r0, 1
/* 8050A1EC  98 1C 09 A3 */	stb r0, 0x9a3(r28)
lbl_8050A1F0:
/* 8050A1F0  38 00 00 03 */	li r0, 3
/* 8050A1F4  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 8050A1F8  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050A1FC  38 80 00 01 */	li r4, 1
/* 8050A200  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050A204  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050A208  40 82 00 18 */	bne lbl_8050A220
/* 8050A20C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050A210  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050A214  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050A218  41 82 00 08 */	beq lbl_8050A220
/* 8050A21C  38 80 00 00 */	li r4, 0
lbl_8050A220:
/* 8050A220  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050A224  41 82 01 68 */	beq lbl_8050A38C
/* 8050A228  7F 83 E3 78 */	mr r3, r28
/* 8050A22C  38 80 00 2A */	li r4, 0x2a
/* 8050A230  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8050A234  38 A0 00 00 */	li r5, 0
/* 8050A238  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A23C  4B FF A9 99 */	bl anm_init__FP10e_rd_classifUcf
/* 8050A240  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 8050A244  38 80 00 08 */	li r4, 8
/* 8050A248  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050A24C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050A250  3C A5 00 02 */	addis r5, r5, 2
/* 8050A254  38 C0 00 80 */	li r6, 0x80
/* 8050A258  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8050A25C  4B B3 20 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8050A260  7C 64 1B 78 */	mr r4, r3
/* 8050A264  80 7C 06 98 */	lwz r3, 0x698(r28)
/* 8050A268  38 A0 00 00 */	li r5, 0
/* 8050A26C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8050A270  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A274  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8050A278  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 8050A27C  4B B0 6B F5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8050A280  38 00 00 1E */	li r0, 0x1e
/* 8050A284  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050A288  88 1C 09 BC */	lbz r0, 0x9bc(r28)
/* 8050A28C  2C 00 00 02 */	cmpwi r0, 2
/* 8050A290  40 82 00 34 */	bne lbl_8050A2C4
/* 8050A294  88 1C 05 BB */	lbz r0, 0x5bb(r28)
/* 8050A298  28 00 00 00 */	cmplwi r0, 0
/* 8050A29C  41 82 00 28 */	beq lbl_8050A2C4
/* 8050A2A0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8050A2A4  4B D5 D6 B1 */	bl cM_rndF__Ff
/* 8050A2A8  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8050A2AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8050A2B0  FC 00 00 1E */	fctiwz f0, f0
/* 8050A2B4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050A2B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8050A2BC  B0 1C 09 92 */	sth r0, 0x992(r28)
/* 8050A2C0  48 00 00 CC */	b lbl_8050A38C
lbl_8050A2C4:
/* 8050A2C4  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8050A2C8  4B D5 D6 8D */	bl cM_rndF__Ff
/* 8050A2CC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8050A2D0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050A2D4  FC 00 00 1E */	fctiwz f0, f0
/* 8050A2D8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050A2DC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8050A2E0  B0 1C 09 92 */	sth r0, 0x992(r28)
/* 8050A2E4  48 00 00 A8 */	b lbl_8050A38C
lbl_8050A2E8:
/* 8050A2E8  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 8050A2EC  2C 00 00 07 */	cmpwi r0, 7
/* 8050A2F0  41 82 00 9C */	beq lbl_8050A38C
/* 8050A2F4  38 00 00 00 */	li r0, 0
/* 8050A2F8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050A2FC  7F 83 E3 78 */	mr r3, r28
/* 8050A300  38 80 00 35 */	li r4, 0x35
/* 8050A304  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8050A308  38 A0 00 02 */	li r5, 2
/* 8050A30C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A310  4B FF A8 C5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050A314  48 00 00 78 */	b lbl_8050A38C
lbl_8050A318:
/* 8050A318  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 8050A31C  2C 00 00 00 */	cmpwi r0, 0
/* 8050A320  40 82 00 6C */	bne lbl_8050A38C
/* 8050A324  38 00 00 00 */	li r0, 0
/* 8050A328  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050A32C  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 8050A330  2C 00 00 01 */	cmpwi r0, 1
/* 8050A334  40 82 00 20 */	bne lbl_8050A354
/* 8050A338  7F 83 E3 78 */	mr r3, r28
/* 8050A33C  38 80 00 26 */	li r4, 0x26
/* 8050A340  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050A344  38 A0 00 02 */	li r5, 2
/* 8050A348  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A34C  4B FF A8 89 */	bl anm_init__FP10e_rd_classifUcf
/* 8050A350  48 00 00 3C */	b lbl_8050A38C
lbl_8050A354:
/* 8050A354  7F 83 E3 78 */	mr r3, r28
/* 8050A358  38 80 00 28 */	li r4, 0x28
/* 8050A35C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8050A360  38 A0 00 02 */	li r5, 2
/* 8050A364  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050A368  4B FF A8 6D */	bl anm_init__FP10e_rd_classifUcf
/* 8050A36C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 8050A370  4B D5 D5 E5 */	bl cM_rndF__Ff
/* 8050A374  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8050A378  EC 00 08 2A */	fadds f0, f0, f1
/* 8050A37C  FC 00 00 1E */	fctiwz f0, f0
/* 8050A380  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050A384  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8050A388  B0 1C 09 94 */	sth r0, 0x994(r28)
lbl_8050A38C:
/* 8050A38C  88 1C 09 BE */	lbz r0, 0x9be(r28)
/* 8050A390  2C 00 00 02 */	cmpwi r0, 2
/* 8050A394  40 82 00 38 */	bne lbl_8050A3CC
/* 8050A398  80 1C 06 7C */	lwz r0, 0x67c(r28)
/* 8050A39C  2C 00 00 28 */	cmpwi r0, 0x28
/* 8050A3A0  40 82 00 2C */	bne lbl_8050A3CC
/* 8050A3A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070018@ha */
/* 8050A3A8  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00070018@l */
/* 8050A3AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050A3B0  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050A3B4  38 81 00 0C */	addi r4, r1, 0xc
/* 8050A3B8  38 A0 FF FF */	li r5, -1
/* 8050A3BC  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050A3C0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8050A3C4  7D 89 03 A6 */	mtctr r12
/* 8050A3C8  4E 80 04 21 */	bctrl 
lbl_8050A3CC:
/* 8050A3CC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8050A3D0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8050A3D4  39 61 00 40 */	addi r11, r1, 0x40
/* 8050A3D8  4B E5 7E 45 */	bl _restgpr_26
/* 8050A3DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8050A3E0  7C 08 03 A6 */	mtlr r0
/* 8050A3E4  38 21 00 50 */	addi r1, r1, 0x50
/* 8050A3E8  4E 80 00 20 */	blr 
