lbl_807D7AD4:
/* 807D7AD4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 807D7AD8  7C 08 02 A6 */	mflr r0
/* 807D7ADC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 807D7AE0  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 807D7AE4  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 807D7AE8  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 807D7AEC  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 807D7AF0  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 807D7AF4  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 807D7AF8  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 807D7AFC  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 807D7B00  39 61 00 90 */	addi r11, r1, 0x90
/* 807D7B04  4B B8 A6 BC */	b _savegpr_22
/* 807D7B08  7C 7F 1B 78 */	mr r31, r3
/* 807D7B0C  3C 60 80 7E */	lis r3, lit_1109@ha
/* 807D7B10  3B 63 35 78 */	addi r27, r3, lit_1109@l
/* 807D7B14  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807D7B18  3B 83 29 8C */	addi r28, r3, lit_3882@l
/* 807D7B1C  88 1B 02 44 */	lbz r0, 0x244(r27)
/* 807D7B20  7C 00 07 75 */	extsb. r0, r0
/* 807D7B24  40 82 00 80 */	bne lbl_807D7BA4
/* 807D7B28  C0 5C 01 AC */	lfs f2, 0x1ac(r28)
/* 807D7B2C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807D7B30  C0 3C 01 B0 */	lfs f1, 0x1b0(r28)
/* 807D7B34  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807D7B38  C0 1C 01 B4 */	lfs f0, 0x1b4(r28)
/* 807D7B3C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807D7B40  D0 5B 02 54 */	stfs f2, 0x254(r27)
/* 807D7B44  38 7B 02 54 */	addi r3, r27, 0x254
/* 807D7B48  D0 23 00 04 */	stfs f1, 4(r3)
/* 807D7B4C  D0 03 00 08 */	stfs f0, 8(r3)
/* 807D7B50  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807D7B54  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807D7B58  38 BB 02 38 */	addi r5, r27, 0x238
/* 807D7B5C  4B FF A8 BD */	bl __register_global_object
/* 807D7B60  C0 5C 01 AC */	lfs f2, 0x1ac(r28)
/* 807D7B64  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 807D7B68  C0 3C 01 B0 */	lfs f1, 0x1b0(r28)
/* 807D7B6C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807D7B70  C0 1C 01 B8 */	lfs f0, 0x1b8(r28)
/* 807D7B74  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807D7B78  38 7B 02 54 */	addi r3, r27, 0x254
/* 807D7B7C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807D7B80  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807D7B84  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807D7B88  38 63 00 0C */	addi r3, r3, 0xc
/* 807D7B8C  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807D7B90  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807D7B94  38 BB 02 48 */	addi r5, r27, 0x248
/* 807D7B98  4B FF A8 81 */	bl __register_global_object
/* 807D7B9C  38 00 00 01 */	li r0, 1
/* 807D7BA0  98 1B 02 44 */	stb r0, 0x244(r27)
lbl_807D7BA4:
/* 807D7BA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D7BA8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 807D7BAC  83 5D 5D AC */	lwz r26, 0x5dac(r29)
/* 807D7BB0  7F E3 FB 78 */	mr r3, r31
/* 807D7BB4  7F 44 D3 78 */	mr r4, r26
/* 807D7BB8  4B 84 2D AC */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D7BBC  FF A0 08 90 */	fmr f29, f1
/* 807D7BC0  7F E3 FB 78 */	mr r3, r31
/* 807D7BC4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807D7BC8  4B 84 2B 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D7BCC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 807D7BD0  7C 00 18 50 */	subf r0, r0, r3
/* 807D7BD4  7C 19 07 34 */	extsh r25, r0
/* 807D7BD8  C3 FC 00 48 */	lfs f31, 0x48(r28)
/* 807D7BDC  C3 DC 00 60 */	lfs f30, 0x60(r28)
/* 807D7BE0  3B 00 04 00 */	li r24, 0x400
/* 807D7BE4  3A E0 00 00 */	li r23, 0
/* 807D7BE8  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D7BEC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807D7BF0  FC 00 00 1E */	fctiwz f0, f0
/* 807D7BF4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807D7BF8  82 C1 00 5C */	lwz r22, 0x5c(r1)
/* 807D7BFC  80 1F 14 34 */	lwz r0, 0x1434(r31)
/* 807D7C00  90 01 00 0C */	stw r0, 0xc(r1)
/* 807D7C04  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807D7C08  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807D7C0C  38 81 00 0C */	addi r4, r1, 0xc
/* 807D7C10  4B 84 1B E8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807D7C14  7C 7E 1B 78 */	mr r30, r3
/* 807D7C18  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 807D7C1C  2C 00 00 01 */	cmpwi r0, 1
/* 807D7C20  41 82 01 60 */	beq lbl_807D7D80
/* 807D7C24  40 80 00 2C */	bge lbl_807D7C50
/* 807D7C28  2C 00 FF 9E */	cmpwi r0, -98
/* 807D7C2C  41 82 01 20 */	beq lbl_807D7D4C
/* 807D7C30  40 80 00 14 */	bge lbl_807D7C44
/* 807D7C34  2C 00 FF 9C */	cmpwi r0, -100
/* 807D7C38  41 82 00 40 */	beq lbl_807D7C78
/* 807D7C3C  40 80 00 9C */	bge lbl_807D7CD8
/* 807D7C40  48 00 07 00 */	b lbl_807D8340
lbl_807D7C44:
/* 807D7C44  2C 00 00 00 */	cmpwi r0, 0
/* 807D7C48  40 80 01 0C */	bge lbl_807D7D54
/* 807D7C4C  48 00 06 F4 */	b lbl_807D8340
lbl_807D7C50:
/* 807D7C50  2C 00 00 05 */	cmpwi r0, 5
/* 807D7C54  41 82 06 08 */	beq lbl_807D825C
/* 807D7C58  40 80 00 14 */	bge lbl_807D7C6C
/* 807D7C5C  2C 00 00 03 */	cmpwi r0, 3
/* 807D7C60  41 82 01 DC */	beq lbl_807D7E3C
/* 807D7C64  40 80 02 CC */	bge lbl_807D7F30
/* 807D7C68  48 00 01 68 */	b lbl_807D7DD0
lbl_807D7C6C:
/* 807D7C6C  2C 00 00 07 */	cmpwi r0, 7
/* 807D7C70  40 80 06 D0 */	bge lbl_807D8340
/* 807D7C74  48 00 06 68 */	b lbl_807D82DC
lbl_807D7C78:
/* 807D7C78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D7C7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D7C80  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 807D7C84  7F A3 EB 78 */	mr r3, r29
/* 807D7C88  3C 80 80 7E */	lis r4, stringBase0@ha
/* 807D7C8C  38 84 2F 0C */	addi r4, r4, stringBase0@l
/* 807D7C90  38 84 00 08 */	addi r4, r4, 8
/* 807D7C94  38 A0 00 00 */	li r5, 0
/* 807D7C98  38 C0 00 00 */	li r6, 0
/* 807D7C9C  4B 86 FE 80 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 807D7CA0  7C 64 1B 78 */	mr r4, r3
/* 807D7CA4  2C 04 FF FF */	cmpwi r4, -1
/* 807D7CA8  41 82 06 98 */	beq lbl_807D8340
/* 807D7CAC  7F A3 EB 78 */	mr r3, r29
/* 807D7CB0  4B 87 04 CC */	b cutEnd__16dEvent_manager_cFi
/* 807D7CB4  38 00 FF 9D */	li r0, -99
/* 807D7CB8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7CBC  7F E3 FB 78 */	mr r3, r31
/* 807D7CC0  38 80 00 2A */	li r4, 0x2a
/* 807D7CC4  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 807D7CC8  38 A0 00 02 */	li r5, 2
/* 807D7CCC  FC 40 F0 90 */	fmr f2, f30
/* 807D7CD0  4B FF A8 79 */	bl anm_init__FP10e_wb_classifUcf
/* 807D7CD4  48 00 06 6C */	b lbl_807D8340
lbl_807D7CD8:
/* 807D7CD8  38 00 58 F0 */	li r0, 0x58f0
/* 807D7CDC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807D7CE0  3B 00 00 00 */	li r24, 0
/* 807D7CE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D7CE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D7CEC  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 807D7CF0  7F A3 EB 78 */	mr r3, r29
/* 807D7CF4  3C 80 80 7E */	lis r4, stringBase0@ha
/* 807D7CF8  38 84 2F 0C */	addi r4, r4, stringBase0@l
/* 807D7CFC  38 84 00 08 */	addi r4, r4, 8
/* 807D7D00  38 A0 00 00 */	li r5, 0
/* 807D7D04  38 C0 00 00 */	li r6, 0
/* 807D7D08  4B 86 FE 14 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 807D7D0C  7C 64 1B 78 */	mr r4, r3
/* 807D7D10  2C 04 FF FF */	cmpwi r4, -1
/* 807D7D14  41 82 06 2C */	beq lbl_807D8340
/* 807D7D18  7F A3 EB 78 */	mr r3, r29
/* 807D7D1C  3C A0 80 7E */	lis r5, stringBase0@ha
/* 807D7D20  38 A5 2F 0C */	addi r5, r5, stringBase0@l
/* 807D7D24  38 A5 00 12 */	addi r5, r5, 0x12
/* 807D7D28  38 C0 00 03 */	li r6, 3
/* 807D7D2C  4B 87 03 C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 807D7D30  28 03 00 00 */	cmplwi r3, 0
/* 807D7D34  41 82 06 0C */	beq lbl_807D8340
/* 807D7D38  38 00 00 02 */	li r0, 2
/* 807D7D3C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D7D40  38 00 FF 9E */	li r0, -98
/* 807D7D44  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7D48  48 00 05 F8 */	b lbl_807D8340
lbl_807D7D4C:
/* 807D7D4C  3B 00 00 00 */	li r24, 0
/* 807D7D50  48 00 05 F0 */	b lbl_807D8340
lbl_807D7D54:
/* 807D7D54  7F E3 FB 78 */	mr r3, r31
/* 807D7D58  38 80 00 2A */	li r4, 0x2a
/* 807D7D5C  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 807D7D60  38 A0 00 02 */	li r5, 2
/* 807D7D64  FC 40 F0 90 */	fmr f2, f30
/* 807D7D68  4B FF A7 E1 */	bl anm_init__FP10e_wb_classifUcf
/* 807D7D6C  38 00 00 01 */	li r0, 1
/* 807D7D70  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7D74  38 00 00 0A */	li r0, 0xa
/* 807D7D78  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 807D7D7C  48 00 05 C4 */	b lbl_807D8340
lbl_807D7D80:
/* 807D7D80  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 807D7D84  2C 00 00 00 */	cmpwi r0, 0
/* 807D7D88  40 82 05 B8 */	bne lbl_807D8340
/* 807D7D8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D7D90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D7D94  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 807D7D98  28 00 00 00 */	cmplwi r0, 0
/* 807D7D9C  40 82 05 A4 */	bne lbl_807D8340
/* 807D7DA0  38 00 00 02 */	li r0, 2
/* 807D7DA4  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7DA8  38 00 00 01 */	li r0, 1
/* 807D7DAC  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 807D7DB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807D7DB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807D7DB8  80 63 00 00 */	lwz r3, 0(r3)
/* 807D7DBC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807D7DC0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000007@ha */
/* 807D7DC4  38 84 00 07 */	addi r4, r4, 0x0007 /* 0x01000007@l */
/* 807D7DC8  4B AD 76 D4 */	b subBgmStart__8Z2SeqMgrFUl
/* 807D7DCC  48 00 05 74 */	b lbl_807D8340
lbl_807D7DD0:
/* 807D7DD0  88 1F 05 BF */	lbz r0, 0x5bf(r31)
/* 807D7DD4  28 00 00 00 */	cmplwi r0, 0
/* 807D7DD8  40 82 05 68 */	bne lbl_807D8340
/* 807D7DDC  7F E3 FB 78 */	mr r3, r31
/* 807D7DE0  38 80 00 1B */	li r4, 0x1b
/* 807D7DE4  C0 3C 00 D8 */	lfs f1, 0xd8(r28)
/* 807D7DE8  38 A0 00 00 */	li r5, 0
/* 807D7DEC  FC 40 F0 90 */	fmr f2, f30
/* 807D7DF0  4B FF A7 59 */	bl anm_init__FP10e_wb_classifUcf
/* 807D7DF4  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807D7DF8  60 00 00 08 */	ori r0, r0, 8
/* 807D7DFC  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 807D7E00  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 807D7E04  D0 1F 16 84 */	stfs f0, 0x1684(r31)
/* 807D7E08  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 807D7E0C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807D7E10  38 7B 02 54 */	addi r3, r27, 0x254
/* 807D7E14  7C 63 02 14 */	add r3, r3, r0
/* 807D7E18  C0 03 00 00 */	lfs f0, 0(r3)
/* 807D7E1C  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 807D7E20  C0 03 00 04 */	lfs f0, 4(r3)
/* 807D7E24  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 807D7E28  C0 03 00 08 */	lfs f0, 8(r3)
/* 807D7E2C  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 807D7E30  38 00 00 03 */	li r0, 3
/* 807D7E34  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7E38  48 00 05 08 */	b lbl_807D8340
lbl_807D7E3C:
/* 807D7E3C  2C 16 00 0F */	cmpwi r22, 0xf
/* 807D7E40  40 80 00 08 */	bge lbl_807D7E48
/* 807D7E44  3B 00 00 00 */	li r24, 0
lbl_807D7E48:
/* 807D7E48  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D7E4C  38 63 00 0C */	addi r3, r3, 0xc
/* 807D7E50  C0 3C 00 D8 */	lfs f1, 0xd8(r28)
/* 807D7E54  4B B5 05 D8 */	b checkPass__12J3DFrameCtrlFf
/* 807D7E58  2C 03 00 00 */	cmpwi r3, 0
/* 807D7E5C  41 82 00 1C */	beq lbl_807D7E78
/* 807D7E60  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D7E64  60 00 00 02 */	ori r0, r0, 2
/* 807D7E68  98 1F 14 2D */	stb r0, 0x142d(r31)
/* 807D7E6C  38 00 00 0A */	li r0, 0xa
/* 807D7E70  98 1F 14 2C */	stb r0, 0x142c(r31)
/* 807D7E74  48 00 00 28 */	b lbl_807D7E9C
lbl_807D7E78:
/* 807D7E78  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D7E7C  38 63 00 0C */	addi r3, r3, 0xc
/* 807D7E80  C0 3C 00 5C */	lfs f1, 0x5c(r28)
/* 807D7E84  4B B5 05 A8 */	b checkPass__12J3DFrameCtrlFf
/* 807D7E88  2C 03 00 00 */	cmpwi r3, 0
/* 807D7E8C  41 82 00 10 */	beq lbl_807D7E9C
/* 807D7E90  88 1F 14 2D */	lbz r0, 0x142d(r31)
/* 807D7E94  60 00 00 03 */	ori r0, r0, 3
/* 807D7E98  98 1F 14 2D */	stb r0, 0x142d(r31)
lbl_807D7E9C:
/* 807D7E9C  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807D7EA0  38 80 00 01 */	li r4, 1
/* 807D7EA4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D7EA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D7EAC  40 82 00 18 */	bne lbl_807D7EC4
/* 807D7EB0  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 807D7EB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D7EB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D7EBC  41 82 00 08 */	beq lbl_807D7EC4
/* 807D7EC0  38 80 00 00 */	li r4, 0
lbl_807D7EC4:
/* 807D7EC4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D7EC8  41 82 04 78 */	beq lbl_807D8340
/* 807D7ECC  7F E3 FB 78 */	mr r3, r31
/* 807D7ED0  38 80 00 20 */	li r4, 0x20
/* 807D7ED4  C0 3C 00 F8 */	lfs f1, 0xf8(r28)
/* 807D7ED8  38 A0 00 02 */	li r5, 2
/* 807D7EDC  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 807D7EE0  4B FF A6 69 */	bl anm_init__FP10e_wb_classifUcf
/* 807D7EE4  38 00 00 04 */	li r0, 4
/* 807D7EE8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D7EEC  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807D7EF0  60 00 00 10 */	ori r0, r0, 0x10
/* 807D7EF4  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 807D7EF8  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003002A@ha */
/* 807D7EFC  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0003002A@l */
/* 807D7F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D7F04  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807D7F08  38 81 00 14 */	addi r4, r1, 0x14
/* 807D7F0C  38 A0 00 00 */	li r5, 0
/* 807D7F10  38 C0 FF FF */	li r6, -1
/* 807D7F14  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807D7F18  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807D7F1C  7D 89 03 A6 */	mtctr r12
/* 807D7F20  4E 80 04 21 */	bctrl 
/* 807D7F24  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 807D7F28  D0 1F 16 90 */	stfs f0, 0x1690(r31)
/* 807D7F2C  48 00 04 14 */	b lbl_807D8340
lbl_807D7F30:
/* 807D7F30  38 7B 00 50 */	addi r3, r27, 0x50
/* 807D7F34  C3 E3 00 34 */	lfs f31, 0x34(r3)
/* 807D7F38  C3 DC 00 F8 */	lfs f30, 0xf8(r28)
/* 807D7F3C  38 00 00 01 */	li r0, 1
/* 807D7F40  98 1F 14 2C */	stb r0, 0x142c(r31)
/* 807D7F44  2C 19 30 00 */	cmpwi r25, 0x3000
/* 807D7F48  40 80 00 30 */	bge lbl_807D7F78
/* 807D7F4C  2C 19 D0 00 */	cmpwi r25, -12288
/* 807D7F50  40 81 00 28 */	ble lbl_807D7F78
/* 807D7F54  C0 1C 01 28 */	lfs f0, 0x128(r28)
/* 807D7F58  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 807D7F5C  40 80 00 1C */	bge lbl_807D7F78
/* 807D7F60  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 807D7F64  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 807D7F68  40 81 00 10 */	ble lbl_807D7F78
/* 807D7F6C  38 00 00 0D */	li r0, 0xd
/* 807D7F70  B0 1F 06 DC */	sth r0, 0x6dc(r31)
/* 807D7F74  48 00 00 3C */	b lbl_807D7FB0
lbl_807D7F78:
/* 807D7F78  2C 19 08 00 */	cmpwi r25, 0x800
/* 807D7F7C  40 80 00 18 */	bge lbl_807D7F94
/* 807D7F80  2C 19 F8 00 */	cmpwi r25, -2048
/* 807D7F84  40 81 00 10 */	ble lbl_807D7F94
/* 807D7F88  38 00 00 01 */	li r0, 1
/* 807D7F8C  B0 1F 06 DA */	sth r0, 0x6da(r31)
/* 807D7F90  48 00 00 20 */	b lbl_807D7FB0
lbl_807D7F94:
/* 807D7F94  7F 20 07 35 */	extsh. r0, r25
/* 807D7F98  40 81 00 10 */	ble lbl_807D7FA8
/* 807D7F9C  38 00 00 03 */	li r0, 3
/* 807D7FA0  B0 1F 06 DA */	sth r0, 0x6da(r31)
/* 807D7FA4  48 00 00 0C */	b lbl_807D7FB0
lbl_807D7FA8:
/* 807D7FA8  38 00 00 02 */	li r0, 2
/* 807D7FAC  B0 1F 06 DA */	sth r0, 0x6da(r31)
lbl_807D7FB0:
/* 807D7FB0  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 807D7FB4  7C 00 07 75 */	extsb. r0, r0
/* 807D7FB8  40 82 00 14 */	bne lbl_807D7FCC
/* 807D7FBC  38 7B 00 50 */	addi r3, r27, 0x50
/* 807D7FC0  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 807D7FC4  C3 83 00 54 */	lfs f28, 0x54(r3)
/* 807D7FC8  48 00 00 10 */	b lbl_807D7FD8
lbl_807D7FCC:
/* 807D7FCC  38 7B 00 50 */	addi r3, r27, 0x50
/* 807D7FD0  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 807D7FD4  C3 83 00 50 */	lfs f28, 0x50(r3)
lbl_807D7FD8:
/* 807D7FD8  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 807D7FDC  2C 00 00 00 */	cmpwi r0, 0
/* 807D7FE0  40 82 00 C0 */	bne lbl_807D80A0
/* 807D7FE4  2C 19 30 00 */	cmpwi r25, 0x3000
/* 807D7FE8  40 80 00 B8 */	bge lbl_807D80A0
/* 807D7FEC  2C 19 D0 00 */	cmpwi r25, -12288
/* 807D7FF0  40 81 00 B0 */	ble lbl_807D80A0
/* 807D7FF4  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 807D7FF8  40 81 00 A8 */	ble lbl_807D80A0
/* 807D7FFC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807D8000  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 807D8004  C0 5C 01 08 */	lfs f2, 0x108(r28)
/* 807D8008  C0 7F 05 2C */	lfs f3, 0x52c(r31)
/* 807D800C  C0 1F 16 90 */	lfs f0, 0x1690(r31)
/* 807D8010  EC 63 00 32 */	fmuls f3, f3, f0
/* 807D8014  4B A9 7A 28 */	b cLib_addCalc2__FPffff
/* 807D8018  38 7F 16 90 */	addi r3, r31, 0x1690
/* 807D801C  C0 3C 01 88 */	lfs f1, 0x188(r28)
/* 807D8020  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 807D8024  C0 7C 01 8C */	lfs f3, 0x18c(r28)
/* 807D8028  4B A9 7A 14 */	b cLib_addCalc2__FPffff
/* 807D802C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D8030  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D8034  80 63 00 00 */	lwz r3, 0(r3)
/* 807D8038  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807D803C  4B 83 43 A0 */	b mDoMtx_YrotS__FPA4_fs
/* 807D8040  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807D8044  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 807D8048  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D804C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D8050  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 807D8054  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807D8058  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D805C  38 61 00 48 */	addi r3, r1, 0x48
/* 807D8060  38 81 00 3C */	addi r4, r1, 0x3c
/* 807D8064  4B A9 8E 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D8068  C0 3C 00 80 */	lfs f1, 0x80(r28)
/* 807D806C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807D8070  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D8074  FC 00 00 1E */	fctiwz f0, f0
/* 807D8078  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807D807C  82 E1 00 5C */	lwz r23, 0x5c(r1)
/* 807D8080  7E E0 07 34 */	extsh r0, r23
/* 807D8084  2C 00 10 00 */	cmpwi r0, 0x1000
/* 807D8088  40 81 00 0C */	ble lbl_807D8094
/* 807D808C  3A E0 10 00 */	li r23, 0x1000
/* 807D8090  48 00 00 10 */	b lbl_807D80A0
lbl_807D8094:
/* 807D8094  2C 00 F0 00 */	cmpwi r0, -4096
/* 807D8098  40 80 00 08 */	bge lbl_807D80A0
/* 807D809C  3A E0 F0 00 */	li r23, -4096
lbl_807D80A0:
/* 807D80A0  FC 1D E0 40 */	fcmpo cr0, f29, f28
/* 807D80A4  40 80 00 14 */	bge lbl_807D80B8
/* 807D80A8  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 807D80AC  80 03 05 88 */	lwz r0, 0x588(r3)
/* 807D80B0  64 00 00 08 */	oris r0, r0, 8
/* 807D80B4  90 03 05 88 */	stw r0, 0x588(r3)
lbl_807D80B8:
/* 807D80B8  38 61 00 18 */	addi r3, r1, 0x18
/* 807D80BC  38 9F 05 C4 */	addi r4, r31, 0x5c4
/* 807D80C0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807D80C4  4B A8 EA 70 */	b __mi__4cXyzCFRC3Vec
/* 807D80C8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807D80CC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807D80D0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D80D4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D80D8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 807D80DC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 807D80E0  4B A8 F5 94 */	b cM_atan2s__Fff
/* 807D80E4  B0 7F 05 DC */	sth r3, 0x5dc(r31)
/* 807D80E8  88 1F 07 9E */	lbz r0, 0x79e(r31)
/* 807D80EC  7C 00 07 74 */	extsb r0, r0
/* 807D80F0  2C 00 00 02 */	cmpwi r0, 2
/* 807D80F4  41 80 00 3C */	blt lbl_807D8130
/* 807D80F8  A8 1F 06 8E */	lha r0, 0x68e(r31)
/* 807D80FC  1C 00 03 20 */	mulli r0, r0, 0x320
/* 807D8100  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807D8104  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807D8108  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807D810C  7C 23 04 2E */	lfsx f1, r3, r0
/* 807D8110  A8 7F 05 DC */	lha r3, 0x5dc(r31)
/* 807D8114  C0 1C 01 BC */	lfs f0, 0x1bc(r28)
/* 807D8118  EC 00 00 72 */	fmuls f0, f0, f1
/* 807D811C  FC 00 00 1E */	fctiwz f0, f0
/* 807D8120  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807D8124  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 807D8128  7C 03 02 14 */	add r0, r3, r0
/* 807D812C  B0 1F 05 DC */	sth r0, 0x5dc(r31)
lbl_807D8130:
/* 807D8130  38 61 00 48 */	addi r3, r1, 0x48
/* 807D8134  4B B6 F0 04 */	b PSVECSquareMag
/* 807D8138  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 807D813C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D8140  40 81 00 58 */	ble lbl_807D8198
/* 807D8144  FC 00 08 34 */	frsqrte f0, f1
/* 807D8148  C8 9C 00 90 */	lfd f4, 0x90(r28)
/* 807D814C  FC 44 00 32 */	fmul f2, f4, f0
/* 807D8150  C8 7C 00 98 */	lfd f3, 0x98(r28)
/* 807D8154  FC 00 00 32 */	fmul f0, f0, f0
/* 807D8158  FC 01 00 32 */	fmul f0, f1, f0
/* 807D815C  FC 03 00 28 */	fsub f0, f3, f0
/* 807D8160  FC 02 00 32 */	fmul f0, f2, f0
/* 807D8164  FC 44 00 32 */	fmul f2, f4, f0
/* 807D8168  FC 00 00 32 */	fmul f0, f0, f0
/* 807D816C  FC 01 00 32 */	fmul f0, f1, f0
/* 807D8170  FC 03 00 28 */	fsub f0, f3, f0
/* 807D8174  FC 02 00 32 */	fmul f0, f2, f0
/* 807D8178  FC 44 00 32 */	fmul f2, f4, f0
/* 807D817C  FC 00 00 32 */	fmul f0, f0, f0
/* 807D8180  FC 01 00 32 */	fmul f0, f1, f0
/* 807D8184  FC 03 00 28 */	fsub f0, f3, f0
/* 807D8188  FC 02 00 32 */	fmul f0, f2, f0
/* 807D818C  FC 21 00 32 */	fmul f1, f1, f0
/* 807D8190  FC 20 08 18 */	frsp f1, f1
/* 807D8194  48 00 00 88 */	b lbl_807D821C
lbl_807D8198:
/* 807D8198  C8 1C 00 A0 */	lfd f0, 0xa0(r28)
/* 807D819C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D81A0  40 80 00 10 */	bge lbl_807D81B0
/* 807D81A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807D81A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807D81AC  48 00 00 70 */	b lbl_807D821C
lbl_807D81B0:
/* 807D81B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807D81B4  80 81 00 08 */	lwz r4, 8(r1)
/* 807D81B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807D81BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807D81C0  7C 03 00 00 */	cmpw r3, r0
/* 807D81C4  41 82 00 14 */	beq lbl_807D81D8
/* 807D81C8  40 80 00 40 */	bge lbl_807D8208
/* 807D81CC  2C 03 00 00 */	cmpwi r3, 0
/* 807D81D0  41 82 00 20 */	beq lbl_807D81F0
/* 807D81D4  48 00 00 34 */	b lbl_807D8208
lbl_807D81D8:
/* 807D81D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D81DC  41 82 00 0C */	beq lbl_807D81E8
/* 807D81E0  38 00 00 01 */	li r0, 1
/* 807D81E4  48 00 00 28 */	b lbl_807D820C
lbl_807D81E8:
/* 807D81E8  38 00 00 02 */	li r0, 2
/* 807D81EC  48 00 00 20 */	b lbl_807D820C
lbl_807D81F0:
/* 807D81F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807D81F4  41 82 00 0C */	beq lbl_807D8200
/* 807D81F8  38 00 00 05 */	li r0, 5
/* 807D81FC  48 00 00 10 */	b lbl_807D820C
lbl_807D8200:
/* 807D8200  38 00 00 03 */	li r0, 3
/* 807D8204  48 00 00 08 */	b lbl_807D820C
lbl_807D8208:
/* 807D8208  38 00 00 04 */	li r0, 4
lbl_807D820C:
/* 807D820C  2C 00 00 01 */	cmpwi r0, 1
/* 807D8210  40 82 00 0C */	bne lbl_807D821C
/* 807D8214  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807D8218  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807D821C:
/* 807D821C  C0 1C 01 20 */	lfs f0, 0x120(r28)
/* 807D8220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D8224  40 80 00 30 */	bge lbl_807D8254
/* 807D8228  7F E3 FB 78 */	mr r3, r31
/* 807D822C  38 80 00 25 */	li r4, 0x25
/* 807D8230  C0 3C 00 D8 */	lfs f1, 0xd8(r28)
/* 807D8234  38 A0 00 02 */	li r5, 2
/* 807D8238  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 807D823C  4B FF A3 0D */	bl anm_init__FP10e_wb_classifUcf
/* 807D8240  38 00 00 05 */	li r0, 5
/* 807D8244  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D8248  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 807D824C  60 00 00 20 */	ori r0, r0, 0x20
/* 807D8250  B0 1F 06 BE */	sth r0, 0x6be(r31)
lbl_807D8254:
/* 807D8254  3B 00 08 00 */	li r24, 0x800
/* 807D8258  48 00 00 E8 */	b lbl_807D8340
lbl_807D825C:
/* 807D825C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 807D8260  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 807D8264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D8268  40 81 00 3C */	ble lbl_807D82A4
/* 807D826C  38 00 00 02 */	li r0, 2
/* 807D8270  98 1F 14 2C */	stb r0, 0x142c(r31)
/* 807D8274  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030029@ha */
/* 807D8278  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00030029@l */
/* 807D827C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807D8280  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807D8284  38 81 00 10 */	addi r4, r1, 0x10
/* 807D8288  38 A0 00 00 */	li r5, 0
/* 807D828C  38 C0 FF FF */	li r6, -1
/* 807D8290  81 9F 05 EC */	lwz r12, 0x5ec(r31)
/* 807D8294  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807D8298  7D 89 03 A6 */	mtctr r12
/* 807D829C  4E 80 04 21 */	bctrl 
/* 807D82A0  48 00 00 A0 */	b lbl_807D8340
lbl_807D82A4:
/* 807D82A4  FC 40 F0 90 */	fmr f2, f30
/* 807D82A8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 807D82AC  40 80 00 94 */	bge lbl_807D8340
/* 807D82B0  7F E3 FB 78 */	mr r3, r31
/* 807D82B4  38 80 00 2A */	li r4, 0x2a
/* 807D82B8  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 807D82BC  38 A0 00 02 */	li r5, 2
/* 807D82C0  4B FF A2 89 */	bl anm_init__FP10e_wb_classifUcf
/* 807D82C4  38 00 00 06 */	li r0, 6
/* 807D82C8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D82CC  A8 7F 05 DC */	lha r3, 0x5dc(r31)
/* 807D82D0  38 03 80 00 */	addi r0, r3, -32768
/* 807D82D4  B0 1F 05 DC */	sth r0, 0x5dc(r31)
/* 807D82D8  48 00 00 68 */	b lbl_807D8340
lbl_807D82DC:
/* 807D82DC  3B 00 02 00 */	li r24, 0x200
/* 807D82E0  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 807D82E4  A8 1F 05 DC */	lha r0, 0x5dc(r31)
/* 807D82E8  7C 03 00 50 */	subf r0, r3, r0
/* 807D82EC  B0 1F 06 D0 */	sth r0, 0x6d0(r31)
/* 807D82F0  A8 1F 06 D0 */	lha r0, 0x6d0(r31)
/* 807D82F4  2C 00 08 00 */	cmpwi r0, 0x800
/* 807D82F8  40 80 00 24 */	bge lbl_807D831C
/* 807D82FC  2C 00 F8 00 */	cmpwi r0, -2048
/* 807D8300  40 81 00 1C */	ble lbl_807D831C
/* 807D8304  38 00 00 02 */	li r0, 2
/* 807D8308  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D830C  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 807D8310  20 00 00 01 */	subfic r0, r0, 1
/* 807D8314  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 807D8318  48 00 00 28 */	b lbl_807D8340
lbl_807D831C:
/* 807D831C  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 807D8320  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D8324  41 82 00 1C */	beq lbl_807D8340
/* 807D8328  7F E3 FB 78 */	mr r3, r31
/* 807D832C  38 80 00 28 */	li r4, 0x28
/* 807D8330  C0 3C 00 F8 */	lfs f1, 0xf8(r28)
/* 807D8334  38 A0 00 02 */	li r5, 2
/* 807D8338  C0 5C 00 E8 */	lfs f2, 0xe8(r28)
/* 807D833C  4B FF A2 0D */	bl anm_init__FP10e_wb_classifUcf
lbl_807D8340:
/* 807D8340  38 7F 04 DE */	addi r3, r31, 0x4de
/* 807D8344  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 807D8348  38 A0 00 02 */	li r5, 2
/* 807D834C  7F 06 C3 78 */	mr r6, r24
/* 807D8350  4B A9 82 B8 */	b cLib_addCalcAngleS2__FPssss
/* 807D8354  38 7F 07 A4 */	addi r3, r31, 0x7a4
/* 807D8358  7E E4 BB 78 */	mr r4, r23
/* 807D835C  38 A0 00 08 */	li r5, 8
/* 807D8360  C0 3C 01 90 */	lfs f1, 0x190(r28)
/* 807D8364  C0 1F 16 90 */	lfs f0, 0x1690(r31)
/* 807D8368  EC 01 00 2A */	fadds f0, f1, f0
/* 807D836C  FC 00 00 1E */	fctiwz f0, f0
/* 807D8370  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807D8374  80 C1 00 5C */	lwz r6, 0x5c(r1)
/* 807D8378  4B A9 82 90 */	b cLib_addCalcAngleS2__FPssss
/* 807D837C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807D8380  FC 20 F8 90 */	fmr f1, f31
/* 807D8384  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 807D8388  FC 60 F0 90 */	fmr f3, f30
/* 807D838C  4B A9 76 B0 */	b cLib_addCalc2__FPffff
/* 807D8390  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 807D8394  2C 00 00 04 */	cmpwi r0, 4
/* 807D8398  40 82 00 C0 */	bne lbl_807D8458
/* 807D839C  2C 19 40 00 */	cmpwi r25, 0x4000
/* 807D83A0  41 81 00 0C */	bgt lbl_807D83AC
/* 807D83A4  2C 19 C0 00 */	cmpwi r25, -16384
/* 807D83A8  40 80 00 B0 */	bge lbl_807D8458
lbl_807D83AC:
/* 807D83AC  88 1F 05 BF */	lbz r0, 0x5bf(r31)
/* 807D83B0  28 00 00 00 */	cmplwi r0, 0
/* 807D83B4  41 82 00 A4 */	beq lbl_807D8458
/* 807D83B8  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 807D83BC  2C 00 00 01 */	cmpwi r0, 1
/* 807D83C0  40 82 00 4C */	bne lbl_807D840C
/* 807D83C4  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 807D83C8  C0 5C 01 38 */	lfs f2, 0x138(r28)
/* 807D83CC  38 7B 02 54 */	addi r3, r27, 0x254
/* 807D83D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 807D83D4  EC 02 00 2A */	fadds f0, f2, f0
/* 807D83D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D83DC  40 80 00 30 */	bge lbl_807D840C
/* 807D83E0  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 807D83E4  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 807D83E8  EC 03 10 28 */	fsubs f0, f3, f2
/* 807D83EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D83F0  40 81 00 1C */	ble lbl_807D840C
/* 807D83F4  D0 7F 04 D8 */	stfs f3, 0x4d8(r31)
/* 807D83F8  38 00 00 05 */	li r0, 5
/* 807D83FC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D8400  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 807D8404  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807D8408  48 00 00 50 */	b lbl_807D8458
lbl_807D840C:
/* 807D840C  2C 00 00 00 */	cmpwi r0, 0
/* 807D8410  40 82 00 48 */	bne lbl_807D8458
/* 807D8414  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 807D8418  38 7B 02 54 */	addi r3, r27, 0x254
/* 807D841C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807D8420  C0 5C 01 38 */	lfs f2, 0x138(r28)
/* 807D8424  EC 00 10 28 */	fsubs f0, f0, f2
/* 807D8428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D842C  40 81 00 2C */	ble lbl_807D8458
/* 807D8430  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 807D8434  C0 63 00 08 */	lfs f3, 8(r3)
/* 807D8438  EC 02 18 2A */	fadds f0, f2, f3
/* 807D843C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D8440  40 80 00 18 */	bge lbl_807D8458
/* 807D8444  D0 7F 04 D8 */	stfs f3, 0x4d8(r31)
/* 807D8448  38 00 00 05 */	li r0, 5
/* 807D844C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807D8450  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 807D8454  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_807D8458:
/* 807D8458  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 807D845C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 807D8460  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 807D8464  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 807D8468  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 807D846C  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 807D8470  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 807D8474  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 807D8478  39 61 00 90 */	addi r11, r1, 0x90
/* 807D847C  4B B8 9D 90 */	b _restgpr_22
/* 807D8480  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807D8484  7C 08 03 A6 */	mtlr r0
/* 807D8488  38 21 00 D0 */	addi r1, r1, 0xd0
/* 807D848C  4E 80 00 20 */	blr 
