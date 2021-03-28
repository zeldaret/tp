lbl_807EA474:
/* 807EA474  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807EA478  7C 08 02 A6 */	mflr r0
/* 807EA47C  90 01 00 74 */	stw r0, 0x74(r1)
/* 807EA480  39 61 00 70 */	addi r11, r1, 0x70
/* 807EA484  4B B7 7D 54 */	b _savegpr_28
/* 807EA488  7C 7D 1B 78 */	mr r29, r3
/* 807EA48C  3C 80 80 7F */	lis r4, lit_3905@ha
/* 807EA490  3B E4 F7 70 */	addi r31, r4, lit_3905@l
/* 807EA494  80 03 07 34 */	lwz r0, 0x734(r3)
/* 807EA498  2C 00 00 00 */	cmpwi r0, 0
/* 807EA49C  40 82 03 B8 */	bne lbl_807EA854
/* 807EA4A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807EA4A4  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 807EA4A8  88 1C 5D B0 */	lbz r0, 0x5db0(r28)
/* 807EA4AC  7C 00 07 74 */	extsb r0, r0
/* 807EA4B0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807EA4B4  7C 9C 02 14 */	add r4, r28, r0
/* 807EA4B8  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 807EA4BC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 807EA4C0  4B 83 02 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EA4C4  A8 9E 02 32 */	lha r4, 0x232(r30)
/* 807EA4C8  3C 84 00 01 */	addis r4, r4, 1
/* 807EA4CC  38 04 80 00 */	addi r0, r4, -32768
/* 807EA4D0  7C 03 00 50 */	subf r0, r3, r0
/* 807EA4D4  7C 1E 07 34 */	extsh r30, r0
/* 807EA4D8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807EA4DC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807EA4E0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807EA4E4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807EA4E8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807EA4EC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807EA4F0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807EA4F4  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807EA4F8  28 00 00 01 */	cmplwi r0, 1
/* 807EA4FC  41 82 00 24 */	beq lbl_807EA520
/* 807EA500  3C 60 80 7F */	lis r3, s_attack_ww__FPvPv@ha
/* 807EA504  38 63 8E 6C */	addi r3, r3, s_attack_ww__FPvPv@l
/* 807EA508  7F A4 EB 78 */	mr r4, r29
/* 807EA50C  4B 83 6E 2C */	b fpcEx_Search__FPFPvPv_PvPv
/* 807EA510  28 03 00 00 */	cmplwi r3, 0
/* 807EA514  41 82 01 5C */	beq lbl_807EA670
/* 807EA518  38 60 00 00 */	li r3, 0
/* 807EA51C  48 00 03 3C */	b lbl_807EA858
lbl_807EA520:
/* 807EA520  7F C3 F3 78 */	mr r3, r30
/* 807EA524  4B B7 AB AC */	b abs
/* 807EA528  2C 03 50 00 */	cmpwi r3, 0x5000
/* 807EA52C  40 81 01 44 */	ble lbl_807EA670
/* 807EA530  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807EA534  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807EA538  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807EA53C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EA540  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807EA544  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807EA548  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807EA54C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807EA550  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807EA554  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807EA558  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807EA55C  38 61 00 28 */	addi r3, r1, 0x28
/* 807EA560  38 81 00 34 */	addi r4, r1, 0x34
/* 807EA564  4B B5 CE 38 */	b PSVECSquareDistance
/* 807EA568  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EA56C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA570  40 81 00 58 */	ble lbl_807EA5C8
/* 807EA574  FC 00 08 34 */	frsqrte f0, f1
/* 807EA578  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EA57C  FC 44 00 32 */	fmul f2, f4, f0
/* 807EA580  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EA584  FC 00 00 32 */	fmul f0, f0, f0
/* 807EA588  FC 01 00 32 */	fmul f0, f1, f0
/* 807EA58C  FC 03 00 28 */	fsub f0, f3, f0
/* 807EA590  FC 02 00 32 */	fmul f0, f2, f0
/* 807EA594  FC 44 00 32 */	fmul f2, f4, f0
/* 807EA598  FC 00 00 32 */	fmul f0, f0, f0
/* 807EA59C  FC 01 00 32 */	fmul f0, f1, f0
/* 807EA5A0  FC 03 00 28 */	fsub f0, f3, f0
/* 807EA5A4  FC 02 00 32 */	fmul f0, f2, f0
/* 807EA5A8  FC 44 00 32 */	fmul f2, f4, f0
/* 807EA5AC  FC 00 00 32 */	fmul f0, f0, f0
/* 807EA5B0  FC 01 00 32 */	fmul f0, f1, f0
/* 807EA5B4  FC 03 00 28 */	fsub f0, f3, f0
/* 807EA5B8  FC 02 00 32 */	fmul f0, f2, f0
/* 807EA5BC  FC 21 00 32 */	fmul f1, f1, f0
/* 807EA5C0  FC 20 08 18 */	frsp f1, f1
/* 807EA5C4  48 00 00 88 */	b lbl_807EA64C
lbl_807EA5C8:
/* 807EA5C8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EA5CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA5D0  40 80 00 10 */	bge lbl_807EA5E0
/* 807EA5D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807EA5D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807EA5DC  48 00 00 70 */	b lbl_807EA64C
lbl_807EA5E0:
/* 807EA5E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807EA5E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807EA5E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EA5EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EA5F0  7C 03 00 00 */	cmpw r3, r0
/* 807EA5F4  41 82 00 14 */	beq lbl_807EA608
/* 807EA5F8  40 80 00 40 */	bge lbl_807EA638
/* 807EA5FC  2C 03 00 00 */	cmpwi r3, 0
/* 807EA600  41 82 00 20 */	beq lbl_807EA620
/* 807EA604  48 00 00 34 */	b lbl_807EA638
lbl_807EA608:
/* 807EA608  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EA60C  41 82 00 0C */	beq lbl_807EA618
/* 807EA610  38 00 00 01 */	li r0, 1
/* 807EA614  48 00 00 28 */	b lbl_807EA63C
lbl_807EA618:
/* 807EA618  38 00 00 02 */	li r0, 2
/* 807EA61C  48 00 00 20 */	b lbl_807EA63C
lbl_807EA620:
/* 807EA620  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EA624  41 82 00 0C */	beq lbl_807EA630
/* 807EA628  38 00 00 05 */	li r0, 5
/* 807EA62C  48 00 00 10 */	b lbl_807EA63C
lbl_807EA630:
/* 807EA630  38 00 00 03 */	li r0, 3
/* 807EA634  48 00 00 08 */	b lbl_807EA63C
lbl_807EA638:
/* 807EA638  38 00 00 04 */	li r0, 4
lbl_807EA63C:
/* 807EA63C  2C 00 00 01 */	cmpwi r0, 1
/* 807EA640  40 82 00 0C */	bne lbl_807EA64C
/* 807EA644  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807EA648  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807EA64C:
/* 807EA64C  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 807EA650  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 807EA654  EC 02 00 2A */	fadds f0, f2, f0
/* 807EA658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA65C  40 81 00 14 */	ble lbl_807EA670
/* 807EA660  7F A3 EB 78 */	mr r3, r29
/* 807EA664  4B 82 F6 18 */	b fopAcM_delete__FP10fopAc_ac_c
/* 807EA668  38 60 00 01 */	li r3, 1
/* 807EA66C  48 00 01 EC */	b lbl_807EA858
lbl_807EA670:
/* 807EA670  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 807EA674  28 00 00 00 */	cmplwi r0, 0
/* 807EA678  40 82 00 2C */	bne lbl_807EA6A4
/* 807EA67C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807EA680  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807EA684  EC 01 00 28 */	fsubs f0, f1, f0
/* 807EA688  FC 00 02 10 */	fabs f0, f0
/* 807EA68C  FC 20 00 18 */	frsp f1, f0
/* 807EA690  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807EA694  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA698  40 81 00 0C */	ble lbl_807EA6A4
/* 807EA69C  38 60 00 00 */	li r3, 0
/* 807EA6A0  48 00 01 B8 */	b lbl_807EA858
lbl_807EA6A4:
/* 807EA6A4  7F C3 F3 78 */	mr r3, r30
/* 807EA6A8  4B B7 AA 28 */	b abs
/* 807EA6AC  2C 03 15 55 */	cmpwi r3, 0x1555
/* 807EA6B0  40 80 01 A4 */	bge lbl_807EA854
/* 807EA6B4  C0 5D 06 70 */	lfs f2, 0x670(r29)
/* 807EA6B8  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 807EA6BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807EA6C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EA6C4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807EA6C8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 807EA6CC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807EA6D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807EA6D4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807EA6D8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807EA6DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807EA6E0  38 61 00 10 */	addi r3, r1, 0x10
/* 807EA6E4  38 81 00 1C */	addi r4, r1, 0x1c
/* 807EA6E8  4B B5 CC B4 */	b PSVECSquareDistance
/* 807EA6EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EA6F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA6F4  40 81 00 58 */	ble lbl_807EA74C
/* 807EA6F8  FC 00 08 34 */	frsqrte f0, f1
/* 807EA6FC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EA700  FC 44 00 32 */	fmul f2, f4, f0
/* 807EA704  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EA708  FC 00 00 32 */	fmul f0, f0, f0
/* 807EA70C  FC 01 00 32 */	fmul f0, f1, f0
/* 807EA710  FC 03 00 28 */	fsub f0, f3, f0
/* 807EA714  FC 02 00 32 */	fmul f0, f2, f0
/* 807EA718  FC 44 00 32 */	fmul f2, f4, f0
/* 807EA71C  FC 00 00 32 */	fmul f0, f0, f0
/* 807EA720  FC 01 00 32 */	fmul f0, f1, f0
/* 807EA724  FC 03 00 28 */	fsub f0, f3, f0
/* 807EA728  FC 02 00 32 */	fmul f0, f2, f0
/* 807EA72C  FC 44 00 32 */	fmul f2, f4, f0
/* 807EA730  FC 00 00 32 */	fmul f0, f0, f0
/* 807EA734  FC 01 00 32 */	fmul f0, f1, f0
/* 807EA738  FC 03 00 28 */	fsub f0, f3, f0
/* 807EA73C  FC 02 00 32 */	fmul f0, f2, f0
/* 807EA740  FC 21 00 32 */	fmul f1, f1, f0
/* 807EA744  FC 20 08 18 */	frsp f1, f1
/* 807EA748  48 00 00 88 */	b lbl_807EA7D0
lbl_807EA74C:
/* 807EA74C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EA750  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA754  40 80 00 10 */	bge lbl_807EA764
/* 807EA758  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807EA75C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807EA760  48 00 00 70 */	b lbl_807EA7D0
lbl_807EA764:
/* 807EA764  D0 21 00 08 */	stfs f1, 8(r1)
/* 807EA768  80 81 00 08 */	lwz r4, 8(r1)
/* 807EA76C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EA770  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EA774  7C 03 00 00 */	cmpw r3, r0
/* 807EA778  41 82 00 14 */	beq lbl_807EA78C
/* 807EA77C  40 80 00 40 */	bge lbl_807EA7BC
/* 807EA780  2C 03 00 00 */	cmpwi r3, 0
/* 807EA784  41 82 00 20 */	beq lbl_807EA7A4
/* 807EA788  48 00 00 34 */	b lbl_807EA7BC
lbl_807EA78C:
/* 807EA78C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EA790  41 82 00 0C */	beq lbl_807EA79C
/* 807EA794  38 00 00 01 */	li r0, 1
/* 807EA798  48 00 00 28 */	b lbl_807EA7C0
lbl_807EA79C:
/* 807EA79C  38 00 00 02 */	li r0, 2
/* 807EA7A0  48 00 00 20 */	b lbl_807EA7C0
lbl_807EA7A4:
/* 807EA7A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EA7A8  41 82 00 0C */	beq lbl_807EA7B4
/* 807EA7AC  38 00 00 05 */	li r0, 5
/* 807EA7B0  48 00 00 10 */	b lbl_807EA7C0
lbl_807EA7B4:
/* 807EA7B4  38 00 00 03 */	li r0, 3
/* 807EA7B8  48 00 00 08 */	b lbl_807EA7C0
lbl_807EA7BC:
/* 807EA7BC  38 00 00 04 */	li r0, 4
lbl_807EA7C0:
/* 807EA7C0  2C 00 00 01 */	cmpwi r0, 1
/* 807EA7C4  40 82 00 0C */	bne lbl_807EA7D0
/* 807EA7C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807EA7CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807EA7D0:
/* 807EA7D0  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 807EA7D4  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 807EA7D8  EC 02 00 2A */	fadds f0, f2, f0
/* 807EA7DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EA7E0  40 80 00 74 */	bge lbl_807EA854
/* 807EA7E4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807EA7E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807EA7EC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807EA7F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807EA7F4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807EA7F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807EA7FC  7F A3 EB 78 */	mr r3, r29
/* 807EA800  38 81 00 40 */	addi r4, r1, 0x40
/* 807EA804  4B FF DB 09 */	bl checkCreateBg__8daE_WW_cF4cXyz
/* 807EA808  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807EA80C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807EA810  7C 00 00 26 */	mfcr r0
/* 807EA814  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 807EA818  68 00 00 01 */	xori r0, r0, 1
/* 807EA81C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 807EA820  41 82 00 34 */	beq lbl_807EA854
/* 807EA824  7F A3 EB 78 */	mr r3, r29
/* 807EA828  4B FF DD 39 */	bl checkAttackWall__8daE_WW_cFv
/* 807EA82C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EA830  41 82 00 24 */	beq lbl_807EA854
/* 807EA834  7F A3 EB 78 */	mr r3, r29
/* 807EA838  38 80 00 02 */	li r4, 2
/* 807EA83C  38 A0 00 00 */	li r5, 0
/* 807EA840  4B FF D3 9D */	bl setActionMode__8daE_WW_cFii
/* 807EA844  38 00 00 01 */	li r0, 1
/* 807EA848  98 1D 07 56 */	stb r0, 0x756(r29)
/* 807EA84C  38 60 00 01 */	li r3, 1
/* 807EA850  48 00 00 08 */	b lbl_807EA858
lbl_807EA854:
/* 807EA854  38 60 00 00 */	li r3, 0
lbl_807EA858:
/* 807EA858  39 61 00 70 */	addi r11, r1, 0x70
/* 807EA85C  4B B7 79 C8 */	b _restgpr_28
/* 807EA860  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807EA864  7C 08 03 A6 */	mtlr r0
/* 807EA868  38 21 00 70 */	addi r1, r1, 0x70
/* 807EA86C  4E 80 00 20 */	blr 
