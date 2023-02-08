lbl_804C4750:
/* 804C4750  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804C4754  7C 08 02 A6 */	mflr r0
/* 804C4758  90 01 00 54 */	stw r0, 0x54(r1)
/* 804C475C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804C4760  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804C4764  39 61 00 40 */	addi r11, r1, 0x40
/* 804C4768  4B E9 DA 71 */	bl _savegpr_28
/* 804C476C  7C 7D 1B 78 */	mr r29, r3
/* 804C4770  7C 9E 23 78 */	mr r30, r4
/* 804C4774  3C 60 80 4C */	lis r3, lit_3777@ha /* 0x804C64C8@ha */
/* 804C4778  3B 83 64 C8 */	addi r28, r3, lit_3777@l /* 0x804C64C8@l */
/* 804C477C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C4780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C4784  83 E3 5D B4 */	lwz r31, 0x5db4(r3)
/* 804C4788  C0 7F 04 D0 */	lfs f3, 0x4d0(r31)
/* 804C478C  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 804C4790  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804C4794  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804C4798  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804C479C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 804C47A0  C0 1C 03 E4 */	lfs f0, 0x3e4(r28)
/* 804C47A4  EC 21 00 2A */	fadds f1, f1, f0
/* 804C47A8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804C47AC  88 1D 04 96 */	lbz r0, 0x496(r29)
/* 804C47B0  28 00 00 04 */	cmplwi r0, 4
/* 804C47B4  40 82 01 E0 */	bne lbl_804C4994
/* 804C47B8  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 804C47BC  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 804C47C0  40 82 01 D4 */	bne lbl_804C4994
/* 804C47C4  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 804C47C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804C47CC  FC 00 02 10 */	fabs f0, f0
/* 804C47D0  FC 20 00 18 */	frsp f1, f0
/* 804C47D4  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 804C47D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C47DC  4C 40 13 82 */	cror 2, 0, 2
/* 804C47E0  40 82 01 B4 */	bne lbl_804C4994
/* 804C47E4  C0 3D 05 40 */	lfs f1, 0x540(r29)
/* 804C47E8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 804C47EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804C47F0  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C47F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804C47F8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804C47FC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 804C4800  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804C4804  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 804C4808  38 61 00 0C */	addi r3, r1, 0xc
/* 804C480C  38 81 00 18 */	addi r4, r1, 0x18
/* 804C4810  4B E8 2B 8D */	bl PSVECSquareDistance
/* 804C4814  C0 1C 00 B8 */	lfs f0, 0xb8(r28)
/* 804C4818  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C481C  40 81 00 58 */	ble lbl_804C4874
/* 804C4820  FC 00 08 34 */	frsqrte f0, f1
/* 804C4824  C8 9C 04 48 */	lfd f4, 0x448(r28)
/* 804C4828  FC 44 00 32 */	fmul f2, f4, f0
/* 804C482C  C8 7C 04 50 */	lfd f3, 0x450(r28)
/* 804C4830  FC 00 00 32 */	fmul f0, f0, f0
/* 804C4834  FC 01 00 32 */	fmul f0, f1, f0
/* 804C4838  FC 03 00 28 */	fsub f0, f3, f0
/* 804C483C  FC 02 00 32 */	fmul f0, f2, f0
/* 804C4840  FC 44 00 32 */	fmul f2, f4, f0
/* 804C4844  FC 00 00 32 */	fmul f0, f0, f0
/* 804C4848  FC 01 00 32 */	fmul f0, f1, f0
/* 804C484C  FC 03 00 28 */	fsub f0, f3, f0
/* 804C4850  FC 02 00 32 */	fmul f0, f2, f0
/* 804C4854  FC 44 00 32 */	fmul f2, f4, f0
/* 804C4858  FC 00 00 32 */	fmul f0, f0, f0
/* 804C485C  FC 01 00 32 */	fmul f0, f1, f0
/* 804C4860  FC 03 00 28 */	fsub f0, f3, f0
/* 804C4864  FC 02 00 32 */	fmul f0, f2, f0
/* 804C4868  FF E1 00 32 */	fmul f31, f1, f0
/* 804C486C  FF E0 F8 18 */	frsp f31, f31
/* 804C4870  48 00 00 90 */	b lbl_804C4900
lbl_804C4874:
/* 804C4874  C8 1C 04 58 */	lfd f0, 0x458(r28)
/* 804C4878  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C487C  40 80 00 10 */	bge lbl_804C488C
/* 804C4880  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C4884  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804C4888  48 00 00 78 */	b lbl_804C4900
lbl_804C488C:
/* 804C488C  D0 21 00 08 */	stfs f1, 8(r1)
/* 804C4890  80 81 00 08 */	lwz r4, 8(r1)
/* 804C4894  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804C4898  3C 00 7F 80 */	lis r0, 0x7f80
/* 804C489C  7C 03 00 00 */	cmpw r3, r0
/* 804C48A0  41 82 00 14 */	beq lbl_804C48B4
/* 804C48A4  40 80 00 40 */	bge lbl_804C48E4
/* 804C48A8  2C 03 00 00 */	cmpwi r3, 0
/* 804C48AC  41 82 00 20 */	beq lbl_804C48CC
/* 804C48B0  48 00 00 34 */	b lbl_804C48E4
lbl_804C48B4:
/* 804C48B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C48B8  41 82 00 0C */	beq lbl_804C48C4
/* 804C48BC  38 00 00 01 */	li r0, 1
/* 804C48C0  48 00 00 28 */	b lbl_804C48E8
lbl_804C48C4:
/* 804C48C4  38 00 00 02 */	li r0, 2
/* 804C48C8  48 00 00 20 */	b lbl_804C48E8
lbl_804C48CC:
/* 804C48CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C48D0  41 82 00 0C */	beq lbl_804C48DC
/* 804C48D4  38 00 00 05 */	li r0, 5
/* 804C48D8  48 00 00 10 */	b lbl_804C48E8
lbl_804C48DC:
/* 804C48DC  38 00 00 03 */	li r0, 3
/* 804C48E0  48 00 00 08 */	b lbl_804C48E8
lbl_804C48E4:
/* 804C48E4  38 00 00 04 */	li r0, 4
lbl_804C48E8:
/* 804C48E8  2C 00 00 01 */	cmpwi r0, 1
/* 804C48EC  40 82 00 10 */	bne lbl_804C48FC
/* 804C48F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C48F4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804C48F8  48 00 00 08 */	b lbl_804C4900
lbl_804C48FC:
/* 804C48FC  FF E0 08 90 */	fmr f31, f1
lbl_804C4900:
/* 804C4900  7F E3 FB 78 */	mr r3, r31
/* 804C4904  4B BF 00 05 */	bl getMetamorphoseNearDis__9daAlink_cCFv
/* 804C4908  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804C490C  4C 40 13 82 */	cror 2, 0, 2
/* 804C4910  40 82 00 10 */	bne lbl_804C4920
/* 804C4914  38 00 00 00 */	li r0, 0
/* 804C4918  90 1E 00 00 */	stw r0, 0(r30)
/* 804C491C  48 00 00 58 */	b lbl_804C4974
lbl_804C4920:
/* 804C4920  7F E3 FB 78 */	mr r3, r31
/* 804C4924  4B BE FF F5 */	bl getMetamorphoseFarDis__9daAlink_cCFv
/* 804C4928  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804C492C  4C 40 13 82 */	cror 2, 0, 2
/* 804C4930  40 82 00 3C */	bne lbl_804C496C
/* 804C4934  7F A3 EB 78 */	mr r3, r29
/* 804C4938  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C493C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C4940  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804C4944  4B B5 5E 59 */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804C4948  7C 7C 1B 78 */	mr r28, r3
/* 804C494C  7F E3 FB 78 */	mr r3, r31
/* 804C4950  4B BE FF D9 */	bl getMetamorphoseFarAngle__9daAlink_cCFv
/* 804C4954  7C 60 07 34 */	extsh r0, r3
/* 804C4958  7C 1C 00 00 */	cmpw r28, r0
/* 804C495C  41 81 00 10 */	bgt lbl_804C496C
/* 804C4960  38 00 00 01 */	li r0, 1
/* 804C4964  90 1E 00 00 */	stw r0, 0(r30)
/* 804C4968  48 00 00 0C */	b lbl_804C4974
lbl_804C496C:
/* 804C496C  38 60 00 00 */	li r3, 0
/* 804C4970  48 00 00 28 */	b lbl_804C4998
lbl_804C4974:
/* 804C4974  38 7D 05 38 */	addi r3, r29, 0x538
/* 804C4978  38 81 00 24 */	addi r4, r1, 0x24
/* 804C497C  7F A5 EB 78 */	mr r5, r29
/* 804C4980  4B B5 92 E9 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804C4984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804C4988  40 82 00 0C */	bne lbl_804C4994
/* 804C498C  7F A3 EB 78 */	mr r3, r29
/* 804C4990  48 00 00 08 */	b lbl_804C4998
lbl_804C4994:
/* 804C4994  38 60 00 00 */	li r3, 0
lbl_804C4998:
/* 804C4998  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804C499C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804C49A0  39 61 00 40 */	addi r11, r1, 0x40
/* 804C49A4  4B E9 D8 81 */	bl _restgpr_28
/* 804C49A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804C49AC  7C 08 03 A6 */	mtlr r0
/* 804C49B0  38 21 00 50 */	addi r1, r1, 0x50
/* 804C49B4  4E 80 00 20 */	blr 
