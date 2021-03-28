lbl_809969FC:
/* 809969FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80996A00  7C 08 02 A6 */	mflr r0
/* 80996A04  90 01 00 44 */	stw r0, 0x44(r1)
/* 80996A08  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80996A0C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80996A10  39 61 00 30 */	addi r11, r1, 0x30
/* 80996A14  4B 9C B7 C0 */	b _savegpr_27
/* 80996A18  7C 7E 1B 78 */	mr r30, r3
/* 80996A1C  7C 9B 23 78 */	mr r27, r4
/* 80996A20  7C BC 2B 78 */	mr r28, r5
/* 80996A24  3C 60 80 9A */	lis r3, m__20daNpc_clerkB_Param_c@ha
/* 80996A28  3B E3 99 78 */	addi r31, r3, m__20daNpc_clerkB_Param_c@l
/* 80996A2C  3B A0 00 00 */	li r29, 0
/* 80996A30  38 80 00 00 */	li r4, 0
/* 80996A34  98 9E 11 0F */	stb r4, 0x110f(r30)
/* 80996A38  88 BE 11 0D */	lbz r5, 0x110d(r30)
/* 80996A3C  28 05 00 00 */	cmplwi r5, 0
/* 80996A40  41 82 02 10 */	beq lbl_80996C50
/* 80996A44  38 7F 00 00 */	addi r3, r31, 0
/* 80996A48  C0 43 00 8C */	lfs f2, 0x8c(r3)
/* 80996A4C  A8 03 00 90 */	lha r0, 0x90(r3)
/* 80996A50  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80996A54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80996A58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80996A5C  3C 00 43 30 */	lis r0, 0x4330
/* 80996A60  90 01 00 08 */	stw r0, 8(r1)
/* 80996A64  C8 01 00 08 */	lfd f0, 8(r1)
/* 80996A68  EC 00 08 28 */	fsubs f0, f0, f1
/* 80996A6C  EC 42 00 24 */	fdivs f2, f2, f0
/* 80996A70  2C 05 00 03 */	cmpwi r5, 3
/* 80996A74  41 82 00 90 */	beq lbl_80996B04
/* 80996A78  40 80 01 D0 */	bge lbl_80996C48
/* 80996A7C  2C 05 00 02 */	cmpwi r5, 2
/* 80996A80  40 80 00 08 */	bge lbl_80996A88
/* 80996A84  48 00 01 C4 */	b lbl_80996C48
lbl_80996A88:
/* 80996A88  98 9E 11 0E */	stb r4, 0x110e(r30)
/* 80996A8C  98 9E 11 0C */	stb r4, 0x110c(r30)
/* 80996A90  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80996A94  2C 00 00 08 */	cmpwi r0, 8
/* 80996A98  41 82 00 24 */	beq lbl_80996ABC
/* 80996A9C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80996AA0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80996AA4  4B 7A ED F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996AA8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80996AAC  38 00 00 08 */	li r0, 8
/* 80996AB0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80996AB4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80996AB8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80996ABC:
/* 80996ABC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80996AC0  2C 00 00 05 */	cmpwi r0, 5
/* 80996AC4  41 82 00 24 */	beq lbl_80996AE8
/* 80996AC8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80996ACC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80996AD0  4B 7A ED C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996AD4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80996AD8  38 00 00 05 */	li r0, 5
/* 80996ADC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80996AE0  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80996AE4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80996AE8:
/* 80996AE8  38 60 00 13 */	li r3, 0x13
/* 80996AEC  4B 8A 17 10 */	b setStatus__12dMsgObject_cFUs
/* 80996AF0  38 00 00 0A */	li r0, 0xa
/* 80996AF4  90 1E 11 04 */	stw r0, 0x1104(r30)
/* 80996AF8  38 00 00 03 */	li r0, 3
/* 80996AFC  98 1E 11 0D */	stb r0, 0x110d(r30)
/* 80996B00  48 00 01 48 */	b lbl_80996C48
lbl_80996B04:
/* 80996B04  C3 FE 11 08 */	lfs f31, 0x1108(r30)
/* 80996B08  38 7E 11 08 */	addi r3, r30, 0x1108
/* 80996B0C  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80996B10  4B 8D 9C 30 */	b cLib_chaseF__FPfff
/* 80996B14  80 1E 11 04 */	lwz r0, 0x1104(r30)
/* 80996B18  2C 00 00 00 */	cmpwi r0, 0
/* 80996B1C  41 82 00 18 */	beq lbl_80996B34
/* 80996B20  38 7E 11 04 */	addi r3, r30, 0x1104
/* 80996B24  48 00 2A D9 */	bl func_809995FC
/* 80996B28  2C 03 00 00 */	cmpwi r3, 0
/* 80996B2C  40 82 00 08 */	bne lbl_80996B34
/* 80996B30  3B A0 00 01 */	li r29, 1
lbl_80996B34:
/* 80996B34  C0 1E 11 08 */	lfs f0, 0x1108(r30)
/* 80996B38  FC 00 02 10 */	fabs f0, f0
/* 80996B3C  FC 00 00 18 */	frsp f0, f0
/* 80996B40  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80996B44  C0 23 11 80 */	lfs f1, G_CM3D_F_ABS_MIN@l(r3)
/* 80996B48  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80996B4C  40 80 00 28 */	bge lbl_80996B74
/* 80996B50  FC 00 FA 10 */	fabs f0, f31
/* 80996B54  FC 00 00 18 */	frsp f0, f0
/* 80996B58  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80996B5C  7C 00 00 26 */	mfcr r0
/* 80996B60  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80996B64  40 82 00 10 */	bne lbl_80996B74
/* 80996B68  3B A0 00 01 */	li r29, 1
/* 80996B6C  38 00 00 00 */	li r0, 0
/* 80996B70  90 1E 11 04 */	stw r0, 0x1104(r30)
lbl_80996B74:
/* 80996B74  2C 1D 00 00 */	cmpwi r29, 0
/* 80996B78  41 82 00 24 */	beq lbl_80996B9C
/* 80996B7C  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80996B80  D0 3E 0F 38 */	stfs f1, 0xf38(r30)
/* 80996B84  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80996B88  D0 1E 0F 3C */	stfs f0, 0xf3c(r30)
/* 80996B8C  D0 3E 0F 40 */	stfs f1, 0xf40(r30)
/* 80996B90  D0 1E 0F 44 */	stfs f0, 0xf44(r30)
/* 80996B94  38 00 00 01 */	li r0, 1
/* 80996B98  98 1E 11 0C */	stb r0, 0x110c(r30)
lbl_80996B9C:
/* 80996B9C  C0 1E 11 08 */	lfs f0, 0x1108(r30)
/* 80996BA0  FC 00 02 10 */	fabs f0, f0
/* 80996BA4  FC 20 00 18 */	frsp f1, f0
/* 80996BA8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80996BAC  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80996BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80996BB4  40 80 00 94 */	bge lbl_80996C48
/* 80996BB8  88 1E 11 0C */	lbz r0, 0x110c(r30)
/* 80996BBC  28 00 00 00 */	cmplwi r0, 0
/* 80996BC0  41 82 00 88 */	beq lbl_80996C48
/* 80996BC4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80996BC8  2C 00 00 07 */	cmpwi r0, 7
/* 80996BCC  40 82 00 24 */	bne lbl_80996BF0
/* 80996BD0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80996BD4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80996BD8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80996BDC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80996BE0  40 80 00 68 */	bge lbl_80996C48
/* 80996BE4  38 00 00 00 */	li r0, 0
/* 80996BE8  98 1E 11 0D */	stb r0, 0x110d(r30)
/* 80996BEC  48 00 00 5C */	b lbl_80996C48
lbl_80996BF0:
/* 80996BF0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80996BF4  2C 00 00 08 */	cmpwi r0, 8
/* 80996BF8  41 82 00 24 */	beq lbl_80996C1C
/* 80996BFC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80996C00  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80996C04  4B 7A EC 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996C08  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80996C0C  38 00 00 08 */	li r0, 8
/* 80996C10  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80996C14  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80996C18  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80996C1C:
/* 80996C1C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80996C20  2C 00 00 07 */	cmpwi r0, 7
/* 80996C24  41 82 00 24 */	beq lbl_80996C48
/* 80996C28  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80996C2C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80996C30  4B 7A EC 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996C34  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80996C38  38 00 00 07 */	li r0, 7
/* 80996C3C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80996C40  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80996C44  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80996C48:
/* 80996C48  38 60 00 00 */	li r3, 0
/* 80996C4C  48 00 00 60 */	b lbl_80996CAC
lbl_80996C50:
/* 80996C50  88 1E 11 0E */	lbz r0, 0x110e(r30)
/* 80996C54  28 00 00 00 */	cmplwi r0, 0
/* 80996C58  40 82 00 50 */	bne lbl_80996CA8
/* 80996C5C  4B 8A 15 D0 */	b getStatus__12dMsgObject_cFv
/* 80996C60  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80996C64  20 60 00 01 */	subfic r3, r0, 1
/* 80996C68  30 03 FF FF */	addic r0, r3, -1
/* 80996C6C  7C 00 19 10 */	subfe r0, r0, r3
/* 80996C70  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80996C74  40 82 00 2C */	bne lbl_80996CA0
/* 80996C78  7F 63 DB 78 */	mr r3, r27
/* 80996C7C  7F C4 F3 78 */	mr r4, r30
/* 80996C80  7F 85 E3 78 */	mr r5, r28
/* 80996C84  38 C0 00 00 */	li r6, 0
/* 80996C88  38 E0 00 00 */	li r7, 0
/* 80996C8C  4B 8B 33 04 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80996C90  38 00 00 01 */	li r0, 1
/* 80996C94  98 1E 11 0E */	stb r0, 0x110e(r30)
/* 80996C98  38 60 00 01 */	li r3, 1
/* 80996C9C  48 00 00 10 */	b lbl_80996CAC
lbl_80996CA0:
/* 80996CA0  38 60 00 00 */	li r3, 0
/* 80996CA4  48 00 00 08 */	b lbl_80996CAC
lbl_80996CA8:
/* 80996CA8  38 60 00 01 */	li r3, 1
lbl_80996CAC:
/* 80996CAC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80996CB0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80996CB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80996CB8  4B 9C B5 68 */	b _restgpr_27
/* 80996CBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80996CC0  7C 08 03 A6 */	mtlr r0
/* 80996CC4  38 21 00 40 */	addi r1, r1, 0x40
/* 80996CC8  4E 80 00 20 */	blr 
