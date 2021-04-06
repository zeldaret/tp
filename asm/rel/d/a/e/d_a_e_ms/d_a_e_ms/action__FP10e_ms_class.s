lbl_80727A20:
/* 80727A20  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80727A24  7C 08 02 A6 */	mflr r0
/* 80727A28  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80727A2C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80727A30  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80727A34  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80727A38  4B C3 A7 89 */	bl _savegpr_22
/* 80727A3C  7C 7C 1B 78 */	mr r28, r3
/* 80727A40  3C 80 80 73 */	lis r4, lit_3800@ha /* 0x80729504@ha */
/* 80727A44  3B C4 95 04 */	addi r30, r4, lit_3800@l /* 0x80729504@l */
/* 80727A48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80727A4C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80727A50  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80727A54  4B 8F 2D 8D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80727A58  D0 3C 06 80 */	stfs f1, 0x680(r28)
/* 80727A5C  7F 83 E3 78 */	mr r3, r28
/* 80727A60  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80727A64  4B 8F 2C AD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80727A68  B0 7C 06 84 */	sth r3, 0x684(r28)
/* 80727A6C  7F 83 E3 78 */	mr r3, r28
/* 80727A70  4B FF FE 25 */	bl damage_check__FP10e_ms_class
/* 80727A74  3B 60 00 00 */	li r27, 0
/* 80727A78  3B 40 00 01 */	li r26, 1
/* 80727A7C  3B 20 00 00 */	li r25, 0
/* 80727A80  3B 00 00 01 */	li r24, 1
/* 80727A84  3A E0 00 01 */	li r23, 1
/* 80727A88  3A C0 00 00 */	li r22, 0
/* 80727A8C  38 61 00 54 */	addi r3, r1, 0x54
/* 80727A90  4B 94 FD 21 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80727A94  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80727A98  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80727A9C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80727AA0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80727AA4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80727AA8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80727AAC  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80727AB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80727AB4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80727AB8  38 61 00 54 */	addi r3, r1, 0x54
/* 80727ABC  38 81 00 48 */	addi r4, r1, 0x48
/* 80727AC0  4B B4 02 69 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80727AC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80727AC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80727ACC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80727AD0  7F A3 EB 78 */	mr r3, r29
/* 80727AD4  38 81 00 54 */	addi r4, r1, 0x54
/* 80727AD8  4B 94 C9 C9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80727ADC  D0 3C 06 90 */	stfs f1, 0x690(r28)
/* 80727AE0  A8 1C 06 7E */	lha r0, 0x67e(r28)
/* 80727AE4  28 00 00 0A */	cmplwi r0, 0xa
/* 80727AE8  41 81 00 A0 */	bgt lbl_80727B88
/* 80727AEC  3C 60 80 73 */	lis r3, lit_4628@ha /* 0x80729648@ha */
/* 80727AF0  38 63 96 48 */	addi r3, r3, lit_4628@l /* 0x80729648@l */
/* 80727AF4  54 00 10 3A */	slwi r0, r0, 2
/* 80727AF8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80727AFC  7C 09 03 A6 */	mtctr r0
/* 80727B00  4E 80 04 20 */	bctr 
lbl_80727B04:
/* 80727B04  7F 83 E3 78 */	mr r3, r28
/* 80727B08  4B FF E8 59 */	bl e_ms_normal__FP10e_ms_class
/* 80727B0C  7C 7B 1B 78 */	mr r27, r3
/* 80727B10  3B 20 00 01 */	li r25, 1
/* 80727B14  48 00 00 74 */	b lbl_80727B88
lbl_80727B18:
/* 80727B18  7F 83 E3 78 */	mr r3, r28
/* 80727B1C  4B FF EC 15 */	bl e_ms_attack__FP10e_ms_class
/* 80727B20  7C 7B 1B 78 */	mr r27, r3
/* 80727B24  3A C0 00 01 */	li r22, 1
/* 80727B28  48 00 00 60 */	b lbl_80727B88
lbl_80727B2C:
/* 80727B2C  7F 83 E3 78 */	mr r3, r28
/* 80727B30  4B FF F5 D1 */	bl e_ms_dokuro__FP10e_ms_class
/* 80727B34  48 00 00 54 */	b lbl_80727B88
lbl_80727B38:
/* 80727B38  7F 83 E3 78 */	mr r3, r28
/* 80727B3C  4B FF F4 1D */	bl e_ms_swim__FP10e_ms_class
/* 80727B40  3B 40 00 00 */	li r26, 0
/* 80727B44  48 00 00 44 */	b lbl_80727B88
lbl_80727B48:
/* 80727B48  7F 83 E3 78 */	mr r3, r28
/* 80727B4C  4B FF F9 8D */	bl e_ms_damage__FP10e_ms_class
/* 80727B50  3B 40 FF FF */	li r26, -1
/* 80727B54  3A E0 00 00 */	li r23, 0
/* 80727B58  48 00 00 30 */	b lbl_80727B88
lbl_80727B5C:
/* 80727B5C  7F 83 E3 78 */	mr r3, r28
/* 80727B60  4B FF FB A5 */	bl e_ms_wolfbite__FP10e_ms_class
/* 80727B64  3A E0 00 00 */	li r23, 0
/* 80727B68  3B 40 FF FF */	li r26, -1
/* 80727B6C  3B 00 00 00 */	li r24, 0
/* 80727B70  48 00 00 18 */	b lbl_80727B88
lbl_80727B74:
/* 80727B74  7F 83 E3 78 */	mr r3, r28
/* 80727B78  4B FF FC BD */	bl e_ms_standby__FP10e_ms_class
/* 80727B7C  3A E0 00 00 */	li r23, 0
/* 80727B80  3B 40 FF FF */	li r26, -1
/* 80727B84  3B 00 00 00 */	li r24, 0
lbl_80727B88:
/* 80727B88  7F 00 07 75 */	extsb. r0, r24
/* 80727B8C  41 82 00 1C */	beq lbl_80727BA8
/* 80727B90  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 80727B94  2C 00 00 00 */	cmpwi r0, 0
/* 80727B98  40 81 00 10 */	ble lbl_80727BA8
/* 80727B9C  38 00 00 04 */	li r0, 4
/* 80727BA0  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80727BA4  48 00 00 18 */	b lbl_80727BBC
lbl_80727BA8:
/* 80727BA8  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80727BAC  54 00 00 3E */	slwi r0, r0, 0
/* 80727BB0  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80727BB4  38 00 00 00 */	li r0, 0
/* 80727BB8  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80727BBC:
/* 80727BBC  7E C0 07 75 */	extsb. r0, r22
/* 80727BC0  41 82 00 14 */	beq lbl_80727BD4
/* 80727BC4  38 7C 05 D8 */	addi r3, r28, 0x5d8
/* 80727BC8  38 80 00 01 */	li r4, 1
/* 80727BCC  4B B9 9F B1 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 80727BD0  48 00 00 10 */	b lbl_80727BE0
lbl_80727BD4:
/* 80727BD4  38 7C 05 D8 */	addi r3, r28, 0x5d8
/* 80727BD8  38 80 00 00 */	li r4, 0
/* 80727BDC  4B B9 9F A1 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_80727BE0:
/* 80727BE0  7F 20 07 75 */	extsb. r0, r25
/* 80727BE4  41 82 01 70 */	beq lbl_80727D54
/* 80727BE8  38 00 FF FF */	li r0, -1
/* 80727BEC  90 1C 0B B4 */	stw r0, 0xbb4(r28)
/* 80727BF0  A8 1C 06 7C */	lha r0, 0x67c(r28)
/* 80727BF4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80727BF8  40 82 01 5C */	bne lbl_80727D54
/* 80727BFC  7F 83 E3 78 */	mr r3, r28
/* 80727C00  4B FF E4 6D */	bl search_dokuro__FP10e_ms_class
/* 80727C04  7C 76 1B 79 */	or. r22, r3, r3
/* 80727C08  41 82 01 4C */	beq lbl_80727D54
/* 80727C0C  38 61 00 18 */	addi r3, r1, 0x18
/* 80727C10  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80727C14  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80727C18  4B B3 EF 1D */	bl __mi__4cXyzCFRC3Vec
/* 80727C1C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80727C20  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80727C24  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80727C28  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80727C2C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80727C30  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80727C34  38 61 00 48 */	addi r3, r1, 0x48
/* 80727C38  4B C1 F5 01 */	bl PSVECSquareMag
/* 80727C3C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80727C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80727C44  40 81 00 58 */	ble lbl_80727C9C
/* 80727C48  FC 00 08 34 */	frsqrte f0, f1
/* 80727C4C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80727C50  FC 44 00 32 */	fmul f2, f4, f0
/* 80727C54  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80727C58  FC 00 00 32 */	fmul f0, f0, f0
/* 80727C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80727C60  FC 03 00 28 */	fsub f0, f3, f0
/* 80727C64  FC 02 00 32 */	fmul f0, f2, f0
/* 80727C68  FC 44 00 32 */	fmul f2, f4, f0
/* 80727C6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80727C70  FC 01 00 32 */	fmul f0, f1, f0
/* 80727C74  FC 03 00 28 */	fsub f0, f3, f0
/* 80727C78  FC 02 00 32 */	fmul f0, f2, f0
/* 80727C7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80727C80  FC 00 00 32 */	fmul f0, f0, f0
/* 80727C84  FC 01 00 32 */	fmul f0, f1, f0
/* 80727C88  FC 03 00 28 */	fsub f0, f3, f0
/* 80727C8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80727C90  FC 21 00 32 */	fmul f1, f1, f0
/* 80727C94  FC 20 08 18 */	frsp f1, f1
/* 80727C98  48 00 00 88 */	b lbl_80727D20
lbl_80727C9C:
/* 80727C9C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80727CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80727CA4  40 80 00 10 */	bge lbl_80727CB4
/* 80727CA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80727CAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80727CB0  48 00 00 70 */	b lbl_80727D20
lbl_80727CB4:
/* 80727CB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80727CB8  80 81 00 08 */	lwz r4, 8(r1)
/* 80727CBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80727CC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80727CC4  7C 03 00 00 */	cmpw r3, r0
/* 80727CC8  41 82 00 14 */	beq lbl_80727CDC
/* 80727CCC  40 80 00 40 */	bge lbl_80727D0C
/* 80727CD0  2C 03 00 00 */	cmpwi r3, 0
/* 80727CD4  41 82 00 20 */	beq lbl_80727CF4
/* 80727CD8  48 00 00 34 */	b lbl_80727D0C
lbl_80727CDC:
/* 80727CDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80727CE0  41 82 00 0C */	beq lbl_80727CEC
/* 80727CE4  38 00 00 01 */	li r0, 1
/* 80727CE8  48 00 00 28 */	b lbl_80727D10
lbl_80727CEC:
/* 80727CEC  38 00 00 02 */	li r0, 2
/* 80727CF0  48 00 00 20 */	b lbl_80727D10
lbl_80727CF4:
/* 80727CF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80727CF8  41 82 00 0C */	beq lbl_80727D04
/* 80727CFC  38 00 00 05 */	li r0, 5
/* 80727D00  48 00 00 10 */	b lbl_80727D10
lbl_80727D04:
/* 80727D04  38 00 00 03 */	li r0, 3
/* 80727D08  48 00 00 08 */	b lbl_80727D10
lbl_80727D0C:
/* 80727D0C  38 00 00 04 */	li r0, 4
lbl_80727D10:
/* 80727D10  2C 00 00 01 */	cmpwi r0, 1
/* 80727D14  40 82 00 0C */	bne lbl_80727D20
/* 80727D18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80727D1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80727D20:
/* 80727D20  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80727D24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80727D28  40 80 00 2C */	bge lbl_80727D54
/* 80727D2C  28 16 00 00 */	cmplwi r22, 0
/* 80727D30  41 82 00 0C */	beq lbl_80727D3C
/* 80727D34  80 16 00 04 */	lwz r0, 4(r22)
/* 80727D38  48 00 00 08 */	b lbl_80727D40
lbl_80727D3C:
/* 80727D3C  38 00 FF FF */	li r0, -1
lbl_80727D40:
/* 80727D40  90 1C 0B B4 */	stw r0, 0xbb4(r28)
/* 80727D44  38 00 00 02 */	li r0, 2
/* 80727D48  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 80727D4C  38 00 00 00 */	li r0, 0
/* 80727D50  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80727D54:
/* 80727D54  7F 60 07 75 */	extsb. r0, r27
/* 80727D58  41 82 00 6C */	beq lbl_80727DC4
/* 80727D5C  C0 3C 06 80 */	lfs f1, 0x680(r28)
/* 80727D60  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80727D64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80727D68  40 80 00 5C */	bge lbl_80727DC4
/* 80727D6C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80727D70  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80727D74  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80727D78  41 82 00 4C */	beq lbl_80727DC4
/* 80727D7C  38 00 00 00 */	li r0, 0
/* 80727D80  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 80727D84  38 00 00 05 */	li r0, 5
/* 80727D88  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80727D8C  7F 83 E3 78 */	mr r3, r28
/* 80727D90  38 80 00 08 */	li r4, 8
/* 80727D94  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80727D98  38 A0 00 00 */	li r5, 0
/* 80727D9C  FC 40 08 90 */	fmr f2, f1
/* 80727DA0  4B FF DE 35 */	bl anm_init__FP10e_ms_classifUcf
/* 80727DA4  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80727DA8  4B B3 FB AD */	bl cM_rndF__Ff
/* 80727DAC  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80727DB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80727DB4  FC 00 00 1E */	fctiwz f0, f0
/* 80727DB8  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 80727DBC  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80727DC0  B0 1C 06 86 */	sth r0, 0x686(r28)
lbl_80727DC4:
/* 80727DC4  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80727DC8  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80727DCC  38 A0 00 02 */	li r5, 2
/* 80727DD0  38 C0 20 00 */	li r6, 0x2000
/* 80727DD4  4B B4 88 35 */	bl cLib_addCalcAngleS2__FPssss
/* 80727DD8  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80727DDC  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 80727DE0  38 A0 00 02 */	li r5, 2
/* 80727DE4  38 C0 20 00 */	li r6, 0x2000
/* 80727DE8  4B B4 88 21 */	bl cLib_addCalcAngleS2__FPssss
/* 80727DEC  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 80727DF0  A8 9C 04 E0 */	lha r4, 0x4e0(r28)
/* 80727DF4  38 A0 00 02 */	li r5, 2
/* 80727DF8  38 C0 20 00 */	li r6, 0x2000
/* 80727DFC  4B B4 88 0D */	bl cLib_addCalcAngleS2__FPssss
/* 80727E00  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80727E04  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80727E08  80 63 00 00 */	lwz r3, 0(r3)
/* 80727E0C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80727E10  4B 8E 45 CD */	bl mDoMtx_YrotS__FPA4_fs
/* 80727E14  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80727E18  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80727E1C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80727E20  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80727E24  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80727E28  38 61 00 48 */	addi r3, r1, 0x48
/* 80727E2C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80727E30  4B B4 90 BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80727E34  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80727E38  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80727E3C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80727E40  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80727E44  38 61 00 0C */	addi r3, r1, 0xc
/* 80727E48  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 80727E4C  3C A0 80 73 */	lis r5, l_HIO@ha /* 0x8072980C@ha */
/* 80727E50  38 A5 98 0C */	addi r5, r5, l_HIO@l /* 0x8072980C@l */
/* 80727E54  C0 25 00 08 */	lfs f1, 8(r5)
/* 80727E58  4B B3 ED 2D */	bl __ml__4cXyzCFf
/* 80727E5C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80727E60  38 81 00 0C */	addi r4, r1, 0xc
/* 80727E64  7C 65 1B 78 */	mr r5, r3
/* 80727E68  4B C1 F2 29 */	bl PSVECAdd
/* 80727E6C  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80727E70  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 80727E74  EC 01 00 2A */	fadds f0, f1, f0
/* 80727E78  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80727E7C  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80727E80  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80727E84  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80727E88  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80727E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80727E90  40 80 00 08 */	bge lbl_80727E98
/* 80727E94  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80727E98:
/* 80727E98  7E E0 07 75 */	extsb. r0, r23
/* 80727E9C  41 82 00 48 */	beq lbl_80727EE4
/* 80727EA0  80 1C 09 1C */	lwz r0, 0x91c(r28)
/* 80727EA4  60 00 00 01 */	ori r0, r0, 1
/* 80727EA8  90 1C 09 1C */	stw r0, 0x91c(r28)
/* 80727EAC  34 7C 08 B4 */	addic. r3, r28, 0x8b4
/* 80727EB0  41 82 00 40 */	beq lbl_80727EF0
/* 80727EB4  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80727EB8  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 80727EBC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80727EC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80727EC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80727EC8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80727ECC  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80727ED0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80727ED4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80727ED8  EC 01 00 2A */	fadds f0, f1, f0
/* 80727EDC  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80727EE0  48 00 00 10 */	b lbl_80727EF0
lbl_80727EE4:
/* 80727EE4  80 1C 09 1C */	lwz r0, 0x91c(r28)
/* 80727EE8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80727EEC  90 1C 09 1C */	stw r0, 0x91c(r28)
lbl_80727EF0:
/* 80727EF0  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 80727EF4  7F A4 EB 78 */	mr r4, r29
/* 80727EF8  4B 94 EB B5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80727EFC  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80727F00  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 80727F04  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80727F08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80727F0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80727F10  4C 40 13 82 */	cror 2, 0, 2
/* 80727F14  40 82 00 10 */	bne lbl_80727F24
/* 80727F18  38 00 00 01 */	li r0, 1
/* 80727F1C  98 1C 08 B0 */	stb r0, 0x8b0(r28)
/* 80727F20  48 00 00 0C */	b lbl_80727F2C
lbl_80727F24:
/* 80727F24  38 00 00 00 */	li r0, 0
/* 80727F28  98 1C 08 B0 */	stb r0, 0x8b0(r28)
lbl_80727F2C:
/* 80727F2C  C3 FE 00 04 */	lfs f31, 4(r30)
/* 80727F30  7F 40 07 74 */	extsb r0, r26
/* 80727F34  2C 00 00 01 */	cmpwi r0, 1
/* 80727F38  40 82 00 3C */	bne lbl_80727F74
/* 80727F3C  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80727F40  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 80727F44  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80727F48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80727F4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80727F50  4C 40 13 82 */	cror 2, 0, 2
/* 80727F54  40 82 00 84 */	bne lbl_80727FD8
/* 80727F58  38 00 00 03 */	li r0, 3
/* 80727F5C  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 80727F60  38 00 00 00 */	li r0, 0
/* 80727F64  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80727F68  7F 83 E3 78 */	mr r3, r28
/* 80727F6C  4B FF DE 81 */	bl sibuki_set__FP10e_ms_class
/* 80727F70  48 00 00 68 */	b lbl_80727FD8
lbl_80727F74:
/* 80727F74  7F 40 07 75 */	extsb. r0, r26
/* 80727F78  40 82 00 60 */	bne lbl_80727FD8
/* 80727F7C  C3 FE 00 BC */	lfs f31, 0xbc(r30)
/* 80727F80  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80727F84  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80727F88  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80727F8C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80727F90  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80727F94  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80727F98  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 80727F9C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80727FA0  38 7C 0B 9C */	addi r3, r28, 0xb9c
/* 80727FA4  38 81 00 30 */	addi r4, r1, 0x30
/* 80727FA8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80727FAC  C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 80727FB0  4B 8F 51 5D */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80727FB4  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80727FB8  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 80727FBC  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80727FC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80727FC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80727FC8  40 81 00 10 */	ble lbl_80727FD8
/* 80727FCC  38 00 00 00 */	li r0, 0
/* 80727FD0  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 80727FD4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80727FD8:
/* 80727FD8  38 7C 06 94 */	addi r3, r28, 0x694
/* 80727FDC  FC 20 F8 90 */	fmr f1, f31
/* 80727FE0  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80727FE4  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80727FE8  4B B4 7A 55 */	bl cLib_addCalc2__FPffff
/* 80727FEC  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80727FF0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80727FF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80727FF8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80727FFC  7F 83 E3 78 */	mr r3, r28
/* 80728000  38 9C 05 D8 */	addi r4, r28, 0x5d8
/* 80728004  38 BC 05 38 */	addi r5, r28, 0x538
/* 80728008  38 C1 00 24 */	addi r6, r1, 0x24
/* 8072800C  48 00 10 95 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80728010  38 61 00 54 */	addi r3, r1, 0x54
/* 80728014  38 80 FF FF */	li r4, -1
/* 80728018  4B 94 F8 31 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 8072801C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80728020  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80728024  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80728028  4B C3 A1 E5 */	bl _restgpr_22
/* 8072802C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80728030  7C 08 03 A6 */	mtlr r0
/* 80728034  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80728038  4E 80 00 20 */	blr 
