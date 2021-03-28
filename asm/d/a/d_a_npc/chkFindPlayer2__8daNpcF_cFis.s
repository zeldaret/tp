lbl_801549E0:
/* 801549E0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801549E4  7C 08 02 A6 */	mflr r0
/* 801549E8  90 01 00 94 */	stw r0, 0x94(r1)
/* 801549EC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801549F0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 801549F4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801549F8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 801549FC  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80154A00  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80154A04  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80154A08  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 80154A0C  39 61 00 50 */	addi r11, r1, 0x50
/* 80154A10  48 20 D7 C5 */	bl _savegpr_27
/* 80154A14  7C 7B 1B 78 */	mr r27, r3
/* 80154A18  7C 9C 23 78 */	mr r28, r4
/* 80154A1C  7C BD 2B 78 */	mr r29, r5
/* 80154A20  38 61 00 20 */	addi r3, r1, 0x20
/* 80154A24  7F 64 DB 78 */	mr r4, r27
/* 80154A28  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80154A2C  3B E5 61 C0 */	addi r31, r5, g_dComIfG_gameInfo@l
/* 80154A30  80 BF 5D AC */	lwz r5, 0x5dac(r31)
/* 80154A34  4B FF FF 39 */	bl getAttentionPos__8daNpcF_cFP10fopAc_ac_c
/* 80154A38  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80154A3C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80154A40  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80154A44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80154A48  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80154A4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80154A50  2C 1C 00 00 */	cmpwi r28, 0
/* 80154A54  40 82 00 0C */	bne lbl_80154A60
/* 80154A58  88 1B 05 47 */	lbz r0, 0x547(r27)
/* 80154A5C  48 00 00 08 */	b lbl_80154A64
lbl_80154A60:
/* 80154A60  88 1B 05 45 */	lbz r0, 0x545(r27)
lbl_80154A64:
/* 80154A64  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80154A68  2C 1C 00 00 */	cmpwi r28, 0
/* 80154A6C  40 82 00 14 */	bne lbl_80154A80
/* 80154A70  7F C3 F3 78 */	mr r3, r30
/* 80154A74  4B FF 65 9D */	bl getDistTable__12dAttention_cFi
/* 80154A78  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80154A7C  48 00 00 10 */	b lbl_80154A8C
lbl_80154A80:
/* 80154A80  7F C3 F3 78 */	mr r3, r30
/* 80154A84  4B FF 65 8D */	bl getDistTable__12dAttention_cFi
/* 80154A88  C3 E3 00 04 */	lfs f31, 4(r3)
lbl_80154A8C:
/* 80154A8C  7F C3 F3 78 */	mr r3, r30
/* 80154A90  4B FF 65 81 */	bl getDistTable__12dAttention_cFi
/* 80154A94  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80154A98  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 80154A9C  EF C0 00 72 */	fmuls f30, f0, f1
/* 80154AA0  7F C3 F3 78 */	mr r3, r30
/* 80154AA4  4B FF 65 6D */	bl getDistTable__12dAttention_cFi
/* 80154AA8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80154AAC  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 80154AB0  EF A0 00 72 */	fmuls f29, f0, f1
/* 80154AB4  7F C3 F3 78 */	mr r3, r30
/* 80154AB8  4B FF 65 59 */	bl getDistTable__12dAttention_cFi
/* 80154ABC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80154AC0  C3 82 9A 4C */	lfs f28, lit_6775(r2)
/* 80154AC4  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80154AC8  41 82 00 0C */	beq lbl_80154AD4
/* 80154ACC  C3 82 9A 50 */	lfs f28, lit_6904(r2)
/* 80154AD0  48 00 00 50 */	b lbl_80154B20
lbl_80154AD4:
/* 80154AD4  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80154AD8  41 82 00 0C */	beq lbl_80154AE4
/* 80154ADC  C3 82 9A 54 */	lfs f28, lit_6905(r2)
/* 80154AE0  48 00 00 40 */	b lbl_80154B20
lbl_80154AE4:
/* 80154AE4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80154AE8  41 82 00 0C */	beq lbl_80154AF4
/* 80154AEC  C3 82 9A 58 */	lfs f28, lit_6906(r2)
/* 80154AF0  48 00 00 30 */	b lbl_80154B20
lbl_80154AF4:
/* 80154AF4  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80154AF8  41 82 00 0C */	beq lbl_80154B04
/* 80154AFC  C3 82 9A 5C */	lfs f28, lit_6907(r2)
/* 80154B00  48 00 00 20 */	b lbl_80154B20
lbl_80154B04:
/* 80154B04  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80154B08  41 82 00 0C */	beq lbl_80154B14
/* 80154B0C  C3 82 9A 60 */	lfs f28, lit_6908(r2)
/* 80154B10  48 00 00 10 */	b lbl_80154B20
lbl_80154B14:
/* 80154B14  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80154B18  41 82 00 08 */	beq lbl_80154B20
/* 80154B1C  C3 82 9A 64 */	lfs f28, lit_6909(r2)
lbl_80154B20:
/* 80154B20  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80154B24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80154B28  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80154B2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80154B30  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80154B34  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80154B38  C0 1B 05 50 */	lfs f0, 0x550(r27)
/* 80154B3C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80154B40  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 80154B44  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80154B48  C0 1B 05 58 */	lfs f0, 0x558(r27)
/* 80154B4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80154B50  7F 63 DB 78 */	mr r3, r27
/* 80154B54  38 81 00 14 */	addi r4, r1, 0x14
/* 80154B58  38 A1 00 08 */	addi r5, r1, 8
/* 80154B5C  FC 20 F8 90 */	fmr f1, f31
/* 80154B60  FC 40 F0 90 */	fmr f2, f30
/* 80154B64  FC 60 E8 90 */	fmr f3, f29
/* 80154B68  38 C0 00 00 */	li r6, 0
/* 80154B6C  4B FF FC C9 */	bl chkPointInArea__8daNpcF_cF4cXyz4cXyzfffs
/* 80154B70  2C 03 00 00 */	cmpwi r3, 0
/* 80154B74  41 82 00 28 */	beq lbl_80154B9C
/* 80154B78  7F 63 DB 78 */	mr r3, r27
/* 80154B7C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80154B80  FC 20 E0 90 */	fmr f1, f28
/* 80154B84  7F A5 EB 78 */	mr r5, r29
/* 80154B88  4B FF FB A9 */	bl chkActorInSight2__8daNpcF_cFP10fopAc_ac_cfs
/* 80154B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80154B90  41 82 00 0C */	beq lbl_80154B9C
/* 80154B94  38 60 00 01 */	li r3, 1
/* 80154B98  48 00 00 08 */	b lbl_80154BA0
lbl_80154B9C:
/* 80154B9C  38 60 00 00 */	li r3, 0
lbl_80154BA0:
/* 80154BA0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80154BA4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80154BA8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80154BAC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80154BB0  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80154BB4  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80154BB8  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 80154BBC  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80154BC0  39 61 00 50 */	addi r11, r1, 0x50
/* 80154BC4  48 20 D6 5D */	bl _restgpr_27
/* 80154BC8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80154BCC  7C 08 03 A6 */	mtlr r0
/* 80154BD0  38 21 00 90 */	addi r1, r1, 0x90
/* 80154BD4  4E 80 00 20 */	blr 
